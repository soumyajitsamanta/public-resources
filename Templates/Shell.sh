echo "For loop"
for i in `cat years.list`;
do echo "Year: $i";
done

echo "If elif else"
if condition-command; 
then positive-command; 
elif condition-command;
then second-command;
else last-command;
fi

echo "While loop"
while consition-command;
do body-commands;
done

echo "[ or test command quick reference"
echo "[ exp -a exp ] boolean and"
echo "[ exp -o exp ] boolean or"
echo "[ -n string ] or [ string ] not empty string?"
echo "[ -z string ] empty string?"
echo "[ string = string ] Are string equal?"
echo "[ string != string ] Are strings not equal?"
echo "[ int -eq int ] Are the integers equal?"
echo "similarly -ge, -gt, -le, -lt, -ne"
echo "[ file1 -ef file1 ] Do files have same device and inode numbers"
echo "[ file1 -nt file2 ] Is file1 newer than file2?"
echo "[ file1 -ot file2 ] Is file1 older than file2?"
echo "[ -b file ] Is file block device?"
echo "[ -c file ] Is file character device?"
echo "[ -d file ] Is file directory?"
echo "[ -e file ] Is file exist?"
echo "[ -f file ] Is regular file?"
echo "[ -p file ] Is file a named pipe?"
echo "[ -r file ] Does file have read access?"
echo "[ -s file ] Does file size grater then 0?"
echo "[ -S file ] Is file a socket?"
echo "[ -t file ] Is file opened on terminal?"
echo "[ -w file ] Does file have write access?"
echo "[ -x file ] Does file have execute access?"

echo "[ -x test.txt ] && echo 'pos' || echo 'neg'"
echo "returns neg as not executable file"
