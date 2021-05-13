echo "transforming files"

mkdir output
cd output
for file in *
do
	rm $file
done
cd ..
cd annual-reports-2020
rm processed.txt

touch processed.a

for file in *txt
do
	echo "processing $file"
	#cat $file
	cat $file | sed  's/\   */|/g'  >> processed.txt 
	# 's/[[:blank:]]*$//'; '/^$/d' $file-processed.txt
	echo "done sed processing of file $file"
done

mv processed.a process.txt
