package R;

use strict;
use warnings;

# ABSTRACT: Recall an oneliner script or manage them
# VERSION

use YAML::Any;
use Filter::Simple;

my $FILE = "$ENV{HOME}/.onelinerer.yaml";

FILTER {
	my $yaml = -f $FILE ? YAML::Any::LoadFile($FILE) : [];
	my $dirty = 0;
	if(/^\s*(\d+)\s*$/) {
		die "Entry $1 is not found" unless exists $yaml->[$1]{source};
		$_ = $yaml->[$1]{source};
	} elsif(/^\s*list\s*$/) {
		my $count = 0;
		foreach my $entry (@$yaml) {
			$entry->{comment} ||= '';
			print <<EOF;
[$count] : $entry->{date}
	# $entry->{comment}
	$entry->{source}
EOF
			++$count;
		}
		$_ = '';
	} elsif(/^\s*clear\s*(\d+)$/) {
		my $idx = $1;
		splice @$yaml, $idx, 1;
		$dirty = 1;
		$_ = '';
	}
	YAML::Any::DumpFile($FILE, $yaml) if $dirty;
};

1;
__END__

=head1 SYNOPSIS

  # execute and register for later use
  perl -MS -E 'say "here is your script"'
  
  # show registered oneliner scripts
  perl -MR -E list
  
  # execute the specified oneliner script
  perl -MR -E 5
  
  # clear the specified oneliner script, and successors are shift
  perl -MR -E clear5

=head1 DESCRIPTION

=cut
