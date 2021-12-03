#!/usr/bin/perl

@list=`cat advent_data3.txt`;

$char1=`cat advent_data3.txt | cut -c1 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "char1 [$char1]\n";

@breakup = split(/\,/,$char1);
if ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = @breakup[1];
	$co2_scrubber = @breakup[3];
} else {
	$oxygen_generator = @breakup[3];
	$co2_scrubber = @breakup[1];
}

$ox_char2=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c2 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char2=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c2 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char2 [$ox_char2] co2_char2 [$co2_char2]\n";

@breakup = split(/\,/,$ox_char2);
$elements = `echo $ox_char2 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char2);
$elements = `echo $co2_char2 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}

print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char3=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c3 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char3=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c3 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char3 [$ox_char3] co2_char3 [$co2_char3]\n";

@breakup = split(/\,/,$ox_char3);
$elements = `echo $ox_char3 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char3);
$elements = `echo $co2_char3 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}

print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char4=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c4 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char4=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c4 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char4 [$ox_char4] co2_char4 [$co2_char4]\n";

@breakup = split(/\,/,$ox_char4);
$elements = `echo $ox_char4 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char4);
$elements = `echo $co2_char4 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}

print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char5=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c5 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char5=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c5 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char5 [$ox_char5] co2_char5 [$co2_char5]\n";

@breakup = split(/\,/,$ox_char5);
$elements = `echo $ox_char5 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char5);
$elements = `echo $co2_char5 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}


print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char6=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c6 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char6=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c6 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char6 [$ox_char6] co2_char6 [$co2_char6]\n";

@breakup = split(/\,/,$ox_char6);
$elements = `echo $ox_char6 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char6);
$elements = `echo $co2_char6 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}

print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char7=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c7 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char7=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c7 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char7 [$ox_char7] co2_char7 [$co2_char7]\n";

@breakup = split(/\,/,$ox_char7);
$elements = `echo $ox_char7 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char7);
$elements = `echo $co2_char7 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}


print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char8=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c8 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char8=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c8 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char8 [$ox_char8] co2_char8 [$co2_char8]\n";

@breakup = split(/\,/,$ox_char8);
$elements = `echo $ox_char8 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char8);
$elements = `echo $co2_char8 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}

print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char9=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c9 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char9=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c9 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char9 [$ox_char9] co2_char9 [$co2_char9]\n";

@breakup = split(/\,/,$ox_char9);
$elements = `echo $ox_char9 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char9);
$elements = `echo $co2_char9 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}


print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char10=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c10 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char10=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c10 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char10 [$ox_char10] co2_char10 [$co2_char10]\n";

@breakup = split(/\,/,$ox_char10);
$elements = `echo $ox_char10 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char10);
$elements = `echo $co2_char10 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}


print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char11=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c11 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char11=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c11 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char11 [$ox_char11] co2_char11 [$co2_char11]\n";

@breakup = split(/\,/,$ox_char11);
$elements = `echo $ox_char11 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char11);
$elements = `echo $co2_char11 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}


print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$ox_char12=`cat advent_data3.txt | grep ^$oxygen_generator | cut -c12 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;
$co2_char12=`cat advent_data3.txt | grep ^$co2_scrubber | cut -c12 | sort | uniq -c | tr " " "," | tr -s "," | sed s/^\,//g | tr "\n" "," | sed s/\,\$//g`;

print "ox_char12 [$ox_char12] co2_char12 [$co2_char12]\n";

@breakup = split(/\,/,$ox_char12);
$elements = `echo $ox_char12 | tr "," "\n" | wc -l`;
if ( $elements < 4 ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
	$oxygen_generator = "$oxygen_generator@breakup[1]";
} else {
        $oxygen_generator = "$oxygen_generator@breakup[3]";
}

@breakup = split(/\,/,$co2_char12);
$elements = `echo $co2_char12 | tr "," "\n" | wc -l`;

if ( $elements < 4 ) {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
} elsif ( @breakup[0] > @breakup[2] ) {
        $co2_scrubber = "$co2_scrubber@breakup[3]";
} else {
        $co2_scrubber = "$co2_scrubber@breakup[1]";
}

print "oxygen_generator [$oxygen_generator] co2_scrubber [$co2_scrubber]\n";

$decimal_oxygen = oct("0b".$oxygen_generator);
$decimal_co2 = oct("0b".$co2_scrubber);

$life_support = $decimal_oxygen * $decimal_co2;

print "decimal_oxygen [$decimal_oxygen] decimal_co2 [$decimal_co2] life_support [$life_support]\n";

