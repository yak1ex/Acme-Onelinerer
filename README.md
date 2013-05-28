# NAME

Acme::Onelinerer - Register/Recall oneliner scripts

# VERSION

version v0.0.0

# SYNOPSIS

    # execute and register for later use
    perl -MS -E 'say "here is your script"'
    

    # show registered oneliner scripts
    perl -MR -E list
    

    # execute the specified oneliner script
    perl -MR -E 5
    

    # clear the specified oneliner script, and successors are shift
    perl -MR -E clear5

# DESCRIPTION

# AUTHOR

Yasutaka ATARASHI <yakex@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Yasutaka ATARASHI.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
