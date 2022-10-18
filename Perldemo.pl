#class declaration
package perldemo;

#method declaration
sub user_input
{
	print("Please enter some numbers, type -1 to quit\n");
	#initializing some variables to hold information taken by the user
	$input = 0;
	$sum = 0;
	$min = 2147483647;
	$max = -2147483648;
	$ctr = 0;
	@nums = ();
	#while loop to get multiple input from the user
	while($input != -1){
		#input is assigned to the $input variable
		$input = <STDIN>;
		if($input != -1){
			#adding the input to the array
			push(@nums, $input);
			#handling variables for average calculation
			$sum += $input;	
			$ctr += 1;
			#checking for the minimum and maximum values
			if($input > $max ){
				$max = $input;
			}
			if($input < $min){
				$min = $input;
			}
		}

	}
	$avg = $sum/$ctr;
	print("The numbers input are: \n");
	#prints the contents of the array
	print "@nums";
	print("Some stats of the input numbers are\n");
	#prints the stats of the numbers
	print("Sum: $sum\nAverage: $avg\nMax: $max Min: $min");
}

#calling the method to be run
user_input