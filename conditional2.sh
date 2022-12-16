#!/bin/bash

echo "Please enter your username"
read NAME

if [ "$NAME" = "Sungmin" ];
then
	echo "Welcome back, Sungmin"
else
	echo "Invalid username, please register an account"
fi
