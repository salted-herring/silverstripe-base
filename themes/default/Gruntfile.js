module.exports = function (grunt) {
    grunt.loadNpmTasks('grunt-string-replace');
    grunt.initConfig({
        compass: {
            'dist': {
                'options': {
                    'sassDir': 'scss',
                    'cssDir': 'css',
                    'environment': 'production',
                    'bundleExec': true
                }
            },
            'dev': {
                'options': {
                    'sassDir': 'scss',
                    'cssDir': 'css',
                    'bundleExec': true
                }
            }
        },
        watch: {
            css: {
                files: 'scss/*.scss',
                tasks: ['compass:dist'],
                options: {
                    event: ['all'],
                    livereload: true
                }
            },
            sprites: {
                files: 'img/sprites/*.png',
                tasks: ['compass:dist'],
                options: {
                    event: ['all'],
                    livereload: true
                }
            },
            js: {
                files: ['js/pagetypes/*.js'],
                task: ['jshint']
            }
        },
        lintspaces: {
            all: {
                src: [
                    '../../mainsite/code/*',
                    'templates/*',
                    'scss/*'
                ],
                options: { editorconfig: '../../.editorconfig' }
            }
        },
        'string-replace': {
            'dist': {
                'files': [{
                        'expand': true,
                        'flatten': true,
                        'cwd': 'scss/config/',
                        'src': [
                            '_variables.scss',
                            '_grid.scss'
                        ],
                        'dest': 'scss/config/'
                    }],
                'options': {
                    'replacements': [
                        {
                            'pattern': 'containerwidth',
                            'replacement': '960'
                        },
                        {
                            'pattern': 'columnstotal',
                            'replacement': '12'
                        },
                        {
                            'pattern': 'columnwidth',
                            'replacement': '60'
                        },
                        {
                            'pattern': 'gutterwidth',
                            'replacement': '20'
                        },
                        {
                            'pattern': 'gutterratio',
                            'replacement': '0.3333333333333333'
                        },
                        {
                            'pattern': 'maxwidth',
                            'replacement': '959'
                        },
                        {
                            'pattern': 'maxwidth1',
                            'replacement': '959'
                        },
                        {
                            'pattern': 'showdebug',
                            'replacement': 'show'
                        }
                    ]
                }
            }
        }
    });
    grunt.loadNpmTasks('grunt-contrib-compass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-lintspaces');
    grunt.registerTask('default', ['compass:dist']);
    grunt.registerTask('production', ['compass:dist']);
    grunt.registerTask('grid', ['string-replace']);
    grunt.registerTask('css', ['compass']);
};