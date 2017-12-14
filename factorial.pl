#!c:\Strawberry\perl\bin\Perl.exe
use 5.010;

# Bezawit Woldegebirel
# Factorials


sub get_factorial{
	while (1){
		print "Please enter a number: ";
		my $number = <STDIN>;
		if ($number >= 0){
			my $factorial = factorial($number);
			print "Factorial is $factorial \n\n";
			last;
		}
		say "Please enter a positive number";
	}
}

while (1){
	print "Do you want to calculate factorial for a number?\n";
	print "Enter 'Y' or 'N'\n";
	my $response = <STDIN>;
	chomp($response);
	
	if (($response eq 'Y') or ($response eq 'y')){
		get_factorial();
	} 	
	elsif (($response eq 'N') or ($response eq 'n')){
		print 'BYE!';
		last;
		#exit;
	}
	else{
		print "Please enter either 'Y' or 'N' \n \n";
	}
}

sub factorial {
	my ($num) = @_;
	if ($num == 0){
		return 1;
	}
	my $total=$num;
	for (my $i=$num; $i>1; $i--){
		$total=$total*($i-1);
	}
	return $total;
}
