echo Enter name of file1 :
read f1
echo Enter name of file 2 :
read f2

if [ -r $f1 ]
then
        echo Write = Yes
else
        echo Write = No
fi

if [ -w $f2 ]
then
        echo Do you want to overwrite it[y/N]?
        read $flag
        if [ $flag==y ]
        then
                cat $f1 > $f2
        fi
else
        echo No writing permissions
fi
