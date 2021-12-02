#!/etc/Tivoli/bin/perl
#

@list=`cat advent_data2.txt`;
$horizontal = 0;
$vertical = 0;
$aim = 0;

foreach $line(@list) {
        ($direction,$value) = split(" ",$line);
        if ( $direction eq "forward" ) {
                #print "horizontal [$horizontal] vertical [$vertical]\n";
                $horizontal = $horizontal + $value;
                $depth_change = $aim * $value;
                $vertical = $vertical + $depth_change;
                #print "horizontal [$horizontal] vertical [$vertical] aim [$aim]\n";
        }
        if ( $direction eq "down" ) {
                $aim = $aim + $value;
        }
        if ( $direction eq "up" ) {
                $aim = $aim - $value;
        }
}

#print "horizontal [$horizontal] vertical [$vertical]\n";
$result = $horizontal * $vertical;
print "result = [$result]\n";
