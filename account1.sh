#!/bin/bash
#Shell for creating accounts in scale.
#2012/12/11

if [ ! -f account1.txt ];then
		echo "the account file doesn't exist."
		exit 1
fi

usernames=$(cat account1.txt)

for username in $usernames
do
		useradd $username
		echo $username|passwd --stdin $username
		chage -d 0 $username
done

