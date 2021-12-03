#!/usr/bin/perl

@list=`cat advent_data3.txt`;
$horizontal = 0;
$vertical = 0;

$char1=`cat advent_data3.txt | cut -c1 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char2=`cat advent_data3.txt | cut -c2 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char3=`cat advent_data3.txt | cut -c3 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char4=`cat advent_data3.txt | cut -c4 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char5=`cat advent_data3.txt | cut -c5 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char6=`cat advent_data3.txt | cut -c6 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char7=`cat advent_data3.txt | cut -c7 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char8=`cat advent_data3.txt | cut -c8 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char9=`cat advent_data3.txt | cut -c9 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char10=`cat advent_data3.txt | cut -c10 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char11=`cat advent_data3.txt | cut -c11 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$char12=`cat advent_data3.txt | cut -c12 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "char1 [$char1]\n";
print "char2 [$char2]\n";
print "char3 [$char3]\n";
print "char4 [$char4]\n";
print "char5 [$char5]\n";
print "char6 [$char6]\n";
print "char7 [$char7]\n";
print "char8 [$char8]\n";
print "char9 [$char9]\n";
print "char10 [$char10]\n";
print "char11 [$char11]\n";
print "char12 [$char12]\n";

@breakup = split(/\,/,$char1);
#print "breakup0 @breakup[0] breakup1 @breakup[1] breakup2 @breakup[2] breakup3 @breakup[3]\n";
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char1 = @breakup[1];
        $epsilon_char1 = @breakup[3];
} else {
        $gamma_char1 = @breakup[3];
        $epsilon_char1 = @breakup[1];
}

@breakup = split(/\,/,$char2);
#print "breakup0 @breakup[0] breakup1 @breakup[1] breakup2 @breakup[2] breakup3 @breakup[3]\n";
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char2 = @breakup[1];
        $epsilon_char2 = @breakup[3];
} else {
        $gamma_char2 = @breakup[3];
        $epsilon_char2 = @breakup[1];
}


@breakup = split(/\,/,$char3);
#print "breakup0 @breakup[0] breakup1 @breakup[1] breakup2 @breakup[2] breakup3 @breakup[3]\n";
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char3 = @breakup[1];
        $epsilon_char3 = @breakup[3];
} else {
        $gamma_char3 = @breakup[3];
        $epsilon_char3 = @breakup[1];
}

@breakup = split(/\,/,$char4);
#print "breakup0 @breakup[0] breakup1 @breakup[1] breakup2 @breakup[2] breakup3 @breakup[3]\n";
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char4 = @breakup[1];
        $epsilon_char4 = @breakup[3];
} else {
        $gamma_char4 = @breakup[3];
        $epsilon_char4 = @breakup[1];
}

@breakup = split(/\,/,$char5);
#print "breakup0 @breakup[0] breakup1 @breakup[1] breakup2 @breakup[2] breakup3 @breakup[3]\n";
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char5 = @breakup[1];
        $epsilon_char5 = @breakup[3];
} else {
        $gamma_char5 = @breakup[3];
        $epsilon_char5 = @breakup[1];
}

@breakup = split(/\,/,$char6);
#print "breakup0 @breakup[0] breakup1 @breakup[1] breakup2 @breakup[2] breakup3 @breakup[3]\n";
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char6 = @breakup[1];
        $epsilon_char6 = @breakup[3];
} else {
        $gamma_char6 = @breakup[3];
        $epsilon_char6 = @breakup[1];
}

@breakup = split(/\,/,$char7);
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char7 = @breakup[1];
        $epsilon_char7 = @breakup[3];
} else {
        $gamma_char7 = @breakup[3];
        $epsilon_char7 = @breakup[1];
}


@breakup = split(/\,/,$char8);
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char8 = @breakup[1];
        $epsilon_char8 = @breakup[3];
} else {
        $gamma_char8 = @breakup[3];
        $epsilon_char8 = @breakup[1];
}


@breakup = split(/\,/,$char9);
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char9 = @breakup[1];
        $epsilon_char9 = @breakup[3];
} else {
        $gamma_char9 = @breakup[3];
        $epsilon_char9 = @breakup[1];
}


@breakup = split(/\,/,$char10);
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char10 = @breakup[1];
        $epsilon_char10 = @breakup[3];
} else {
        $gamma_char10 = @breakup[3];
        $epsilon_char10 = @breakup[1];
}


@breakup = split(/\,/,$char11);
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char11 = @breakup[1];
        $epsilon_char11 = @breakup[3];
} else {
        $gamma_char11 = @breakup[3];
        $epsilon_char11 = @breakup[1];
}

@breakup = split(/\,/,$char12);
if ( @breakup[0] > @breakup[2] ) {
        $gamma_char12 = @breakup[1];
        $epsilon_char12 = @breakup[3];
} else {
        $gamma_char12 = @breakup[3];
        $epsilon_char12 = @breakup[1];
}

print "[gamma_char1 [$gamma_char1] epsilon_char1 [$epsilon_char1]\n";
print "[gamma_char2 [$gamma_char2] epsilon_char2 [$epsilon_char2]\n";
print "[gamma_char3 [$gamma_char3] epsilon_char3 [$epsilon_char3]\n";
print "[gamma_char4 [$gamma_char4] epsilon_char4 [$epsilon_char4]\n";
print "[gamma_char5 [$gamma_char5] epsilon_char5 [$epsilon_char5]\n";
print "[gamma_char6 [$gamma_char6] epsilon_char6 [$epsilon_char6]\n";
print "[gamma_char7 [$gamma_char7] epsilon_char7 [$epsilon_char7]\n";
print "[gamma_char8 [$gamma_char8] epsilon_char8 [$epsilon_char8]\n";
print "[gamma_char9 [$gamma_char9] epsilon_char9 [$epsilon_char9]\n";
print "[gamma_char10 [$gamma_char10] epsilon_char10 [$epsilon_char10]\n";
print "[gamma_char11 [$gamma_char11] epsilon_char11 [$epsilon_char11]\n";
print "[gamma_char12 [$gamma_char12] epsilon_char12 [$epsilon_char12]\n";

$gamma_bit="$gamma_char1$gamma_char2$gamma_char3$gamma_char4$gamma_char5$gamma_char6$gamma_char7$gamma_char8$gamma_char9$gamma_char10$gamma_char11$gamma_char12";
$epsilon_bit="$epsilon_char1$epsilon_char2$epsilon_char3$epsilon_char4$epsilon_char5$epsilon_char6$epsilon_char7$epsilon_char8$epsilon_char9$epsilon_char10$epsilon_char11$epsilon_char12";

print "gamma_bit [$gamma_bit] epsilon_bit [$epsilon_bit]\n";

$decimal_gamma = oct("0b".$gamma_bit);
$decimal_epsilon = oct("0b".$epsilon_bit);
$power_consumption  = $decimal_gamma * $decimal_epsilon;

print "decimal_gamma [$decimal_gamma] decimal_epcilson [$decimal_epsilon] power_consumption [$power_consumption]\n"

