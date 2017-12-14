#!c:\Strawberry\perl\bin\Perl.exe
use strict;
use warnings;

# Bezawit Woldegebirel
# Cipher


while (1){
	
	print "Do you want to cipher (c) or de-cipher (d) a message?\n";
	print "Enter 'E' to exit.\n";
	my $choice = <STDIN>;
	chomp ($choice);
	
	if (($choice eq 'c') or ($choice eq 'C')){
		print "Please enter message to cipher: ";
		my $phrase=<STDIN>;
		chomp ($phrase);
		print "Please enter cipher code:";
		my $code=<STDIN>;
		my  $ciphed_message = cipher($phrase, $code);
		print "Ciphered message: $ciphed_message\n\n";
	}
	
	elsif (($choice eq 'd') or ($choice eq 'D')){
		print "Please enter message to de-cipher: ";
		my $phrase=<STDIN>;
		chomp ($phrase);
		print "Please enter cpiher code:";
		my $code=<STDIN>;
		my $deciphered_message = decipher($phrase, $code);
		print "Deciphered message: $deciphered_message\n\n";
	} 
	
	elsif (($choice eq 'e') or ($choice eq 'E')){
		print "Bye!";
		last;	
	}
}

sub cypher{
	my ($phrase,$code) = (@_);
	my $char;
	my $ascii;
	my $new_ascii;
	my $enc_ascii;
	my $new_char;
	my $cyph_message;
	
	foreach my $char (split //, $phrase){
		$ascii=ord($char);
		$new_ascii = adjust_range($ascii);
		$enc_ascii=$new_ascii+$code;
		$new_char=chr($enc_ascii);
		$cyph_message = $cyph_message.$new_char;
	}
	return $cyph_message;
}

sub decypher{
	my ($phrase,$code) = (@_);
	my $char;
	my $ascii;
	my $new_ascii;
	my $enc_ascii;
	my $new_char;
	my $cyph_message;
	
	foreach my $char (split //, $phrase){
		$ascii=ord($char);
		$new_ascii=adjust_range($ascii);
		$enc_ascii=$new_ascii-$code;
		$new_char=chr($enc_ascii);
		$cyph_message = $cyph_message.$new_char;
	}
	return $cyph_message;
}

sub adjust_range{
	my ($ascii) = (@_);
	if ($ascii>126){
		$ascii = ($ascii-126)+31;
		return $ascii;
	}
	elsif ($ascii<32){
		$ascii = ($ascii-31)+126;
		return $ascii;
	}
	return $ascii;
}
