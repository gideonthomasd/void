#!/usr/bin/env bash
  	
	username=""
	password=""
	
	icon=""
	
	

mailcount=$(curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" |  grep -oPm1 "(?<=<fullcount>)[^<]+")
	
echo $mailcount

#printf "%s %s" "^c#99FF99^$icon" "^c#FFFF00^1^c#FFFFFF^" "$SEP2"
#fi
#done	

#echo
#curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" |  grep -oPm1 "(?<=<fullcount>)[^<]+"
# | sed '1d'
#mailcount=$(curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" |  grep -oPm1 "(?<=<fullcount>)[^<]+")
	#mailcount=$(curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" | tr '<' '\n' | tr '>' '\n' | sed -n '/fullcount/,/\/fullcount/p' | awk 'NR==2' )
  	#icon=""
  	#mailcount=1
  	#printf "%s %s" "^c#99FF99^$icon" "^c#FFFF00^$mailcount^c#FFFFFF^" "$SEP2"
  	#sleep 300s
  	#mailcount=$[mailcount+1]
