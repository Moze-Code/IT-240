#!/usr/bin/perl
use strict;
use warnings;

#Name:Omoze oyarebu, Course:It 240, Date:3/31/23

sub calculator {
	my ($operator, @numbers) = @_;
	
	my @list_copy = @numbers; #duplicate list used to reset to the original list after using the shift command
	my $result = 0;
	
	#sub routine to do addition
	sub add_nums {
		no warnings 'closure'; #pragma used to remove the variable "@numbers" will not stay shared at it240-unit09homework-oo35.pl warning
		my $add_result = shift @list_copy;
		no warnings 'closure'; 
		foreach my $index (@list_copy) {
			$add_result += $index;
		}
		@list_copy = @numbers;
		return $add_result;
	}
	
	#sub routine to do subraction
	sub subtract_nums {
		no warnings 'closure';
		my $sub_result= shift @list_copy;
		no warnings 'closure';
		foreach my $index (@list_copy) {
			$sub_result -= $index;
		}
		@list_copy = @numbers;
		return $sub_result;	
	}
	
	#sub routine to do multiplication
	sub multi_nums {
		no warnings 'closure';
		my $multiply_result = shift @list_copy;
		no warnings 'closure';
		foreach my $index (@list_copy) {
			$multiply_result *= $index;
		}
		@list_copy = @numbers;
		return $multiply_result;
	}
	
	#sub routine to do divison
	sub divide_nums {
		no warnings 'closure';
		my $divide_result = shift @list_copy;
		no warnings 'closure';
		foreach my $index (@list_copy) {
			$divide_result /= $index;
		}
		@list_copy = @numbers;
		return $divide_result;
	}
	
	
	if ($operator eq "+") {
		$result = add_nums();
		print "Performing addition = " .$result. "\n";
	} elsif ($operator eq "-") {
		$result = subtract_nums();
		print("Performing subtraction = " .$result. "\n");
	} elsif ($operator eq "*") {
		$result = multi_nums();
		print "Performing multiiplication = " .$result. "\n";
	} elsif ($operator eq "/") {
		$result = divide_nums();
		print "Performing division = " .$result. "\n";
	} else {
		print "Error.You entered an invalid math operator\n"
	}
  
}

my @numbers = (10,10,50,10);
calculator("+",@numbers);
calculator("-",@numbers);
calculator("*",@numbers);
calculator("/",@numbers);
calculator("a",@numbers);		
	
		
				
		
		
		
	
	
