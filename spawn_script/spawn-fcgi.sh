cat > /usr/bin/spawn-fcgi
#!/usr/bin/perl

use strict;
use warnings FATAL => qw( all );

use IO::Socket::UNIX;

my $bin_path = '/usr/bin/fcgiwrap';
my $socket_path = $ARGV[0] || '/tmp/cgi.sock';
my $num_children = $ARGV[1] || 1;

close STDIN;

unlink $socket_path;
my $socket = IO::Socket::UNIX->new(
    Local => $socket_path,
    Listen => 100,
);

die "Cannot create socket at $socket_path: $!\n" unless $socket;

for (1 .. $num_children) {
    my $pid = fork;
    die "Cannot fork: $!" unless defined $pid;
    next if $pid;

    exec $bin_path;
    die "Failed to exec $bin_path: $!\n";
}
