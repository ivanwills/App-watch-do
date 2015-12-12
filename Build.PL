use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'App::watchdo',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/App/watchdo.pm',
    requires          => {
        'perl'           => '5.006',
        'Path::Tiny'     => '0.068',
        'VCS::Which'     => '0.5.2',
        'version'        => '0.9902',
    },
    build_requires => {
        'Test::More'     => '0.88',
        'Test::Warnings' => 0,
    },
    add_to_cleanup     => [ 'App-watchdo-*' ],
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/App-watch-do.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=App::watchdo',
        },
    },
);

$builder->create_build_script();
