#!/bin/bash
echo there are $# arguments to $0: $@

echo  argument 1. The html file :$1
echo  argument 2. The properties file :$2
echo  argument 3. The output file :$3

#Validate arguments
if [[ -z $1 || -z $2 || -z $3 ]];
then
	echo missing arguments
	exit 1
fi


#Read the contents from input file
read -d $'\x04' name < "$1"

#Get the output file directory name
DIR=$(dirname "${3}")

#make dir if doesn't exist
[[ -d $DIR ]] || mkdir -p $DIR

#echo basename "${3}"

#delete output file if it exists
if [ -f $3 ] ; then
   rm $3
fi

#write contents from input file to output file
echo $name  >$3           

#. Load Properties
. $2


echo "Title= $title and Environment= $environment"

#substitute values in the place holders
sed -ie 's/\[\[title\]\]/'"$title"'/g;s/\[\[environment\]\]/'"$environment"'/g' $3  