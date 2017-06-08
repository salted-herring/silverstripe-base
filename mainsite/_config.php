<?php

global $project;
$project = 'mainsite';

global $database;
$database = SS_DATABASE_NAME;

// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");

/*
|--------------------------------------------------------------------------
| For testing, we use sqlite as it's much faster than mysql.
|--------------------------------------------------------------------------
*/
if (Director::isDev()) {
    $db = null;

    if (isset($_GET['db'])) {
        $db = $_GET['db'];
    } elseif (defined('SS_DB_DRIVER')) {
        $db = SS_DATABASE_NAME;
    }

    if (!is_null($db)) {
        global $databaseConfig;
        if ($db == 'sqlite3') {
            $databaseConfig['type'] = 'SQLite3Database';
            $databaseConfig['path'] = ':memory:';
        }
    }
}

/*
|--------------------------------------------------------------------------
| Load imagick if available, else fallback to gd.
|--------------------------------------------------------------------------
*/
if (extension_loaded('imagick')) {
    ImagickBackend::set_default_quality(90);
    Image::set_backend("ImagickBackend");
} else {
    GD::set_default_quality(90);
    Image::set_backend("OptimisedGDBackend");
}


Requirements::set_write_js_to_body(false);

if (Director::isLive()) {
    SS_Log::add_writer(new SS_LogEmailWriter('administration@saltedherring.com'), SS_Log::ERR);
}

/*
|--------------------------------------------------------------------------
| Check if Memcache is available, if so load it.
|--------------------------------------------------------------------------
*/
$host = Director::isLive() ? '127.0.0.1' : 'localhost';
$port = 11211;
$isMemcacheAvailable = false;

if (class_exists('Memcached')) {
    $memcache = new Memcached();
    $isMemcacheAvailable = @$memcache->addServer($host, $port);
} elseif (class_exists('Memcache')) {
    $memcache = new Memcache();
    $isMemcacheAvailable = @$memcache->connect($host, $port);
}

if ($isMemcacheAvailable === false) {
} else {
    SS_Cache::add_backend(
        'primary_memcached',
        'Memcached',
        array(
            'servers' => array(
                'host' => $host,
                'port' => $port,
                'persistent' => true,
                'weight' => 1,
                'timeout' => 5,
                'retry_interval' => 15,
                'status' => true,
                'failure_callback' => null
            )
        )
    );
    SS_Cache::pick_backend('primary_memcached', 'any', 10);
}
