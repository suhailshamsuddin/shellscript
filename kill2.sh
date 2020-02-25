echo "There are $# arguments specified at the command line."
echo
if test $# -eq "2" ; then
	echo Correct Number of Arguments
else
	echo Incorrect Number of Arguments
fi
echo
echo
if test -f "$1"; then
	echo "$1 exist"

else
	echo "$1 doesn't exist"
	touch /home/exam1/$1
	echo "$1 file created"
fi
echo
echo
if grep -q $2 /home/exam1/$1; then
	echo Username Found
else
	echo Username Not found
	echo $2>>/home/exam1/$1
	echo Username Added
fi
