intro="Welcome to CBSE 2021 result of class 12th"
schoolName="Oxford Public School, Ranchi"
studentName=""
m="Marks"
english=0
physics=0
chemistry=0
maths=0
physicalEducation=0
computer=0
getMarks(){
	echo $intro
	echo $schoolName
	echo "studentName: $1"
	echo "english $m : $2"
	echo "physics $m : $3"
	echo "chemistry $m : $4"
	echo "maths $m : $5"
	echo "physicalEducation $m : $6"

	totalMarks=$(($2 + $3 + $4 + $5 + $6))
	echo "Total marks: $totalMarks"
	percent=$(($totalMarks / 5))
	echo "Total percentage: $percent"
if [ $percent <= 33 ]
then
	echo "Sorry! You are fail."
else
	echo "Congratulation! you are pass."
fi
}
read -p "Enter student roll number: " rollNumber
case $rollNumber in
    121)
        studentName="shashi"
	english=65
	physics=45
	chemistry=40
	maths=65
	physicalEducation=75
	computer=70
        getMarks $studentName $english $physics $chemistry $maths $physicalEducation
	;;
esac
   


