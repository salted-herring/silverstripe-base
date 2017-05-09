<?php
namespace Deployer;

require 'recipe/silverstripe.php';

// Configuration

set('ssh_type', 'native');
set('ssh_multiplexing', true);


set('repository', 'git@github.com:salted-herring/silverstripe-base.git');
set('git_cache', true);


// Servers
server('development', '103.14.42.5')
    ->user('saltydev')
    ->set('deploy_path', '/home/saltydev/domains/dev-basekit.saltydev.com')
    ->set('branch', 'master')
    ->set('keep_releases', 6)
    ->stage('development')
    ->identityFile();


set('default_stage', 'development');

// Tasks
task('silverstripe:maintenanceon', function () {
    return run('{{bin/php}} {{release_path}}/framework/cli-script.php /dev/tasks/MaintenanceMode on');
})->desc('Run /dev/tasks/MaintenanceMode on');

task('silverstripe:maintenanceoff', function () {
    return run('{{bin/php}} {{release_path}}/framework/cli-script.php /dev/tasks/MaintenanceMode off');
})->desc('Run /dev/tasks/MaintenanceMode off');

task('silverstripe:cleanup', function () {
    return run('rm -rf {{release_path}}/deployment');
})->desc('Remove deployment directory');

task('deploy', [
    'deploy:prepare',
    'deploy:lock',
    'deploy:release',
    'deploy:update_code',
    'deploy:vendors',
    'deploy:shared',
    'deploy:writable',
    'silverstripe:maintenanceon',
    'silverstripe:buildflush',
    'deploy:symlink',
    'silverstripe:maintenanceoff',
    'deploy:unlock',
    'cleanup',
    'silverstripe:cleanup'
])->desc('Deploy SilverStripe');
