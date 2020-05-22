#PROJECT

function number {
nr='^[0-9]+$'
if [[ $num_enter =~ $nr ]]
then
  again=0
else
  echo "$response is invalid"
  again=1
fi
}
 
num_files=$(ls | wc -l)

correct=0
while [[ $correct -eq 0 ]]
do
	echo "Enter the number of files you think exist in the current directory:"
	read response
	num_enter=$response
	number
	if [[ $again -eq 0 ]]
	then 
		if [[ $num_files -eq $num_enter ]]
		then
		  echo "Congratulations, the answer is correct."
		  correct=1
		elif [[ $num_files -lt $num_enter ]]
		then
		  echo "Your guess was either too high"
		elif [[ $num_files -gt $num_enter ]]
		then
		  echo "Your guess was either too low"
		fi
	fi
done
