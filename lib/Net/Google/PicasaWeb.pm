use strict;
use warnings;

######################################################################
# net-google-picasaweb project. Implementing the API detailed at:
# http://code.google.com/apis/picasaweb/reference.html
#
# Copyright (C) 2007 by Robert May
#
# This library is free software; you can redistribute it and/or modify
# it under the same terms as Perl itself.
######################################################################
# $Id$
######################################################################

package Net::Google::PicasaWeb;

our $VERSION = '0.00_01';    # for MakeMaker and CPAN
$VERSION = eval $VERSION;    ## no critic # for Perl (see perlmodstyle)

use Net::Google::PicasaWeb::User qw();
use Net::Google::PicasaWeb::Namespaces qw();

1;                           # End of PicasaWeb.pm
__END__

=head1 NAME

Net::Google::PicasaWeb - A Perl OO binding to the Google Picasa Web Data API

=head1 SYNOPSIS

  use Net::Google::PicasaWeb;

  my $user = Net::Google::PicasaWeb::User->new( $username,
                { password => $password }
             );

  my @albums = $user->get_albums();

  my @photos = $album[0]->get_photos();

=head1 VERSION

This is version 0.00_01

=head1 DESCRIPTION

Net::Google::PicasaWeb is a set of perl modules providing an Object
Orientated binding to the Google PicasaWeb APIs, allowing you to
retrieve information about albums and photos in a PicasaWeb account,
and to manage (create, delete and upload) albums and photos.

=head1 MAIN MODULES

=head2 Net::Google::PicasaWeb::User

=over

=item Create a new user object, attached to a user account.

=item Authenticate the user against the account credentials supplied.

=item Retrieve information about the user's account.

=item Retrieve a list of albums associated with the user's account,

=item Add albums to the user's account,

=back

See L<Net::Google::PicasaWeb::User|Net::Google::PicasaWeb::User>
for further information.

=head2 Net::Google::PicasaWeb::Album

=over

=item

=back

See L<Net::Google::PicasaWeb::Album|Net::Google::PicasaWeb::Album>
for further information.

=head2 Net::Google::PicasaWeb::Photo

=over

=item

=back

See L<Net::Google::PicasaWeb::Photo|Net::Google::PicasaWeb::Photo>
for further information.

=head2 Net::Google::PicasaWeb::Comment

=over

=item

=back

See L<Net::Google::PicasaWeb::Comment|Net::Google::PicasaWeb::Comment>
for further information.

=head2 Net::Google::PicasaWeb::Utils

Provides a small number of useful functions for working with this
module.

See L<Net::Google::PicasaWeb::Utils|Net::Google::PicasaWeb::Utils>
for further information.

=head1 SUPPORTING MODULES

=head2 Net::Google::PicasaWeb::ClientLogin

Manages authentication using the Google ClientLogin API.

See L<Net::Google::PicasaWeb::ClientLogin|Net::Google::PicasaWeb::ClientLogin>
for further information.

=head2 Net::Google::PicasaWeb::Base

Abstract base class for User, Album and Photo classes.

See L<Net::Google::PicasaWeb::Base|Net::Google::PicasaWeb::Base>
for further information.

=head2 Net::Google::PicasaWeb::Namespaces

Class that extends XML::Atom::Feed and XML::Atom::Entry to deal with
the additional namesapces provided in the feeds generated by the
picasaweb service.

See L<Net::Google::PicasaWeb::Namespaces|Net::Google::PicasaWeb::Namespaces>
for further information.

=head1 DIAGNOSTICS

XXX

=head1 CONFIGURATION AND ENVIRONMENT

XXX

=head1 DEPENDENCIES

XXX

=head1 INCOMPATIBILITIES

XXX

=head1 BUGS AND LIMITATIONS

There are no known bugs in this module.
Please report problems to E<lt>robertmay@cpan.orgE<gt>
Patches welcome.

=head1 SEE ALSO

=over

=item L<http://code.google.com/apis/picasaweb/overview.html>

The Google Picasaweb Data API reference.

=item L<http://code.google.com/p/net-google-picasaweb/>

This module's homepage.

=back

=head1 AUTHOR

Robert May, E<lt>robertmay@cpan.orgE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2007 by Robert May

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. See L<perlartistic>.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSES.

=cut
