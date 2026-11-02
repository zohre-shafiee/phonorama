<?php
/**
 * Shared PDO connection for PanneauxRama.
 * For MySQL deployment, create a private db_config.local.php on the server,
 * preferably in ~/private/ (outside public_html).
 * Alternatively use PANNEAUX_DB_* environment variables.
 * Local development falls back to the bundled SQLite database.
 */
function panneaux_db(): PDO
{
    // 1) Fichier privé HORS de public_html : /home/L3/l3_gr16/private/db_config.local.php
    // 2) Repli : fichier à côté de ce script (développement local)
    $candidates = [
        dirname(__DIR__, 4) . '/private/db_config.local.php',
        __DIR__ . '/db_config.local.php',
    ];
    $private = [];
    foreach ($candidates as $privateFile) {
        if (is_file($privateFile)) {
            $private = require $privateFile;
            break;
        }
    }
    if (!is_array($private)) {
        throw new RuntimeException('Invalid private database configuration.');
    }

    $get = static function (string $key, string $fallback = '') use ($private): string {
        if (isset($private[$key])) {
            return (string) $private[$key];
        }
        $value = getenv('PANNEAUX_DB_' . strtoupper($key));
        return $value === false ? $fallback : (string) $value;
    };

    $driver = strtolower($get('driver', 'sqlite'));
    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false
    ];

    if ($driver === 'mysql') {
        if (!extension_loaded('pdo_mysql')) {
            throw new RuntimeException('pdo_mysql extension is unavailable on this server.');
        }
        $host = $get('host', 'localhost');
        $port = $get('port', '3306');
        $dbname = $get('name');
        $username = $get('user');
        $password = $get('password');
        if ($dbname === '' || $username === '') {
            throw new RuntimeException('MySQL database name and username must be configured.');
        }
        $dsn = "mysql:host={$host};port={$port};dbname={$dbname};charset=utf8mb4";
        return new PDO($dsn, $username, $password, $options);
    }

    if ($driver === 'sqlite') {
        if (!extension_loaded('pdo_sqlite')) {
            throw new RuntimeException('pdo_sqlite is unavailable; configure MySQL for this server.');
        }
        return new PDO('sqlite:' . __DIR__ . '/gestion.db', null, null, $options);
    }

    throw new RuntimeException('Unsupported database driver.');
}
