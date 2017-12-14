#!c:\Strawberry\perl\bin\Perl.exe

print"Press 1 to convert from F to C\n";
print"Press 2 to convert from C to F\n";
print"Press 3 to exit\n";
$option=<STDIN>;
chomp $option;

#If the user selects 1
if($option == 1) {
# Convert from F to C, values of F (-58,122)
print "Please enter degrees in Fahrenheit:";
$fVal=<STDIN>;
chomp $fVal;

if (($fVal<-58) || ($fVal>122)){
print"Please enter a value between -58 and 122.\n";
exit
}

$cVal=(5/9)*($fVal-32);
print "The value in Celisus is: $cVal\n";
}

#If the user selects 2
elsif ($option == 2) {
# Convert from C to F, values of C (-50,50)
print "Please enter degrees in Celsius:";
$cVal=<STDIN>;
chomp $cVal;

if (($cVal<-50) || ($cVal>50)){
print"Please enter a value between -50 and 50.\n";
exit;
}

$fVal=($cVal*1.8)+32;
print "The value in Fahrenheit is: $fVal\n";
}
 
#If the user selects 3
elsif($option == 3){
print"Goodbye!";
exit;
}

else{
print"Please make your selection between 1,2 or 3\n";
}
