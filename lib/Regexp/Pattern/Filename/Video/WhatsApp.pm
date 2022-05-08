package Regexp::Pattern::Filename::Video::WhatsApp;

use 5.010001;
use strict;
use warnings;
#use utf8;

# AUTHORITY
# DATE
# DIST
# VERSION

our %RE;

$RE{filename_video_whatsapp} = {
    summary => 'Video filename saved by WhatsApp',
    pat => qr/\AVID-[0-9]{8}-WA[0-9]{4,}\.(?:MP4|mp4)\z/,
    examples => [
        {str=>'foo.mp4', matches=>0, summary=>'No pattern'},
        {str=>'IMG-20210922-WA0001.jpg', matches=>0, summary=>'Image, not video'},
        {str=>'VID-20210922-WA0001.mp4', matches=>1},
        {str=>'VID-20210922-WA0001.jpg', matches=>0, summary=>'Wrong extension'},
    ],
};

1;
# ABSTRACT: Video filename saved by WhatsApp

=head1 DESCRIPTION


=head1 prepend:SEE ALSO

L<Regexp::Pattern::Filename::Image::WhatsApp>

L<Regexp::Pattern::Filename::Media::WhatsApp>
