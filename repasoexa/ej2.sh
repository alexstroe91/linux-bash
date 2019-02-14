#!/bin/bash

if [ $1 -gt $2 ];then
echo " '$1' Es mayor que '$2' . "
elif [ $2 -gt $1 ];then
echo " '$2' Es mayor que '$1'. "
elif [ $1 -eq $2 ];then
echo " '$1' y '$2' son iguales. "
fi
