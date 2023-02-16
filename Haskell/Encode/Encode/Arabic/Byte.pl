use Encode;

@theDomain = (0x00 .. 0xFF);


@theUPoint = map { sprintf "0x%04X", $_ } @theDomain;

print "-- ++ " . 'UPoint' . "\n[" . (join ', ', @theUPoint) . "]\n";


foreach $enc ("cp1256", "iso-8859-6", "MacArabic", "MacFarsi", "cp864", "cp1006") {

    @theUPoint = map { sprintf "0x%04X", ord (decode $enc, chr $_) } @theDomain;

    print "\n-- ++ " . $enc . "\n[" . (join ', ', @theUPoint) . "]\n";
}


$allUPoint = << '';
            ++ [0x0640]
            ++ [0x0623, 0x0624, 0x0625]
            ++ [0x060C, 0x061B, 0x061F]
            ++ [0x0621, 0x0622] ++ [0x0626 .. 0x063A] ++ [0x0641 .. 0x064A]
            ++ [0x067E, 0x0686, 0x06A4, 0x06AF]
            ++ [0x0660 .. 0x0669]
            ++ [0x0671]
            ++ [0x0651]
            ++ [0x064B .. 0x0650] ++ [0x0670]
            ++ [0x0652]


$allUPoint =~ s/\[(0x.... \.\. 0x....)\]/'[' . (join ', ', map { sprintf "0x%04X", $_ } eval $1) . ']'/eg;


print "\n\n-- " . 'UPoint' . "\n" . $allUPoint . "\n";


foreach $enc ("cp1256", "iso-8859-6", "MacArabic", "MacFarsi", "cp864", "cp1006") {

    $theArabic = $allUPoint;

    $theArabic =~ s/0x(....)/sprintf "0x%2X", ord (encode $enc, chr (hex $1))/eg;

    print "\n-- " . $enc . "\n" . $theArabic . "\n";
}
