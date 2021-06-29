#creating file
echo ""
echo "Enter filename Name"
read filename
if [ ! -f "/home/e1025/Ajith/$filename" ]
then
    echo "File doesn't exist. Creating now"
    touch /home/e1025/Ajith/$filename
    echo "File created"
else
    echo "File exists"
fi

#read source file
echo ""
echo -n "Enter soruce file name : "
read src
echo ""
echo -n "Enter target file name : "
read targ

src="/home/e1025/Ajith/$src"
targ="/opt/backup/$targ"

if [ ! -f $src ]
then
        echo "File $src does not exists"
        exit 1
elif [ -f $targ ]
then
        echo "File $targ exist, cannot overwrite"
        exit 2
fi


# copy file
sudo cp $src $targ
status=$?
if [ $status -eq 0 ]
then
        echo 'File copied successfully'
else
        echo 'Problem copuing file'
fi
