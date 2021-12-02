#!/etc/Tivoli/bin/perl
#

@list=`cat advent_data2.txt`;
$horizontal = 0;
$vertical = 0;

foreach $line(@list) {
        ($direction,$value) = split(" ",$line);
        if ( $direction eq "forward" ) {
                $horizontal = $horizontal + $value;
        }
        if ( $direction eq "down" ) {
                $vertical = $vertical + $value;
        }
        if ( $direction eq "up" ) {
                $vertical = $vertical - $value;
        }
}

print "horizontal [$horizontal] vertical [$vertical]\n";
$result = $horizontal * $vertical;
print "result = [$result]\n";
