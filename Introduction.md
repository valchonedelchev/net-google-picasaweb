# Introduction #

This project is to provide a perl binding to the Google Picasaweb API.  Code is currently in development.  It currently works, but documentation and test are very limited, and an initial release will not be made until they are more complete.  If you wish to try this out before a first release, then fee free to download the code from the repository here.

# Details #

It is expected that releases, and bug tracking will be performed using the CPAN resources rather than those provided here by Google.

## Current Status ##

**Code**: About 90% complete (Net::Google::PicasaWeb::Comment still to write; a couple of methods still to flesh out elsewhere; re-factoring of Net::Google::PicasaWeb::Base to be performed).

**Documentation**: About 20% complete (Documentation complete for Net::Google::PicasaWeb and  Net::Google::PicasaWeb::Utils, started for Net::Google::PicasaWeb::ClientLogin)

**Tests**: about 20% complete (Test with 100% coverage, as reported by Devel::Cover, completed for Net::Google::PicasaWeb Net::Google::PicasaWeb::Utils and Net::Google::PicasaWeb::ClientLogin);  also server component for local testing written.

**Supporting files**: 100% complete (Makefile.PL, README, Changes, MANIFEST, TODO all exist, and are being maintained.)

## Design ##

There are 9 modules in the distribution:

  * Net::Google::PisasaWeb - main user facing module, loads others as necessary.
  * Net::Google::PicasaWeb::ClientLogin - manages authentication requests with the Google ClientLogin server.
  * Net::Google::PicasaWeb::Base - Abstract base class for User, Album and Photo
  * Net::Google::PicasaWeb::Namespaces (also defines XML::Atom::PicasaEntry, XML::Atom::Gphoto, XML::Atom::MediaGroup, XML::Atom::MediaGroup::Content XML::Atom::MediaGroup::Thumbnail and XML::Atom::Exiftags) - a thin wrapper around XML::Atom to provide access to the additional namespaces used in the Picasaweb API to extend a regular Atom feed.
  * Net::Google::PicasaWeb::User - object representing a user's picasaweb account.  Provides methods to query information about the account, find albums and add albums to the account.
  * Net::Google::PicasaWeb::Album - object representing an album in an account.  Provides methods to delete the album, query and update the information related to an ablum, get a list of photos in an album and to upload new photos to an album.
  * Net::Google::PicasaWeb::Photo - object representing a photo in an album.  Provide methods to delete the photo, query and update the information related to a photo and the photo image itself, and get a list of comments associated with a photo.
  * Net::Google::PicasaWeb::Comment - object to represent a comment associated with a photo.  Provides methods to delte the comment, and to query and update the comment.
  * Net::Google::PicasaWeb::Utils - utility functions used by the other modules.

# Links #

[Picasa Web Albums Data API](http://code.google.com/apis/picasaweb/overview.html)

Contact author: [mailto:robertmay@cpan.org](mailto:robertmay@cpan.org)