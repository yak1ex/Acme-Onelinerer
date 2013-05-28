package Acme::Onelinerer;

use strict;
use warnings;

# ABSTRACT: Register/Recall oneliner scripts
# VERSION

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
