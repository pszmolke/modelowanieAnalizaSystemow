#!/bin/bash
homeDir="/home/pszmolke"
dateDay=`date +%d-%m-%Y`
outputFile="/dev/null"
templateFile="@$homeDir/curl_template/curlTemplateToCSV"
urlToCurl=$1
logFile=""
csvFile="$homeDir/curl_csv/$dateDay.csv"
echo "############"
#check if file for today exists
if [ ! -f "$csvFile" ]; then
	echo "File not found!"
	cp $homeDir/curl_csv/csv_header.csv $csvFile
	echo "File created: $csvFile"
fi
echo
echo "template: $templateFile"
echo "url: $urlToCurl"
echo
echo "making curl output to logFile"
echo curl -w "$templateFile" -o "$outputFile" -s "$urlToCurl"
logFile=$(curl -w "$templateFile" -o "$outputFile" -s "$urlToCurl")
#adding date and time to file
logFile=$logFile";$(date +%d-%m-%Y);$(date +%T);"
echo $logFile
echo "output logFile"
echo "Logfile: $logFile"
echo
echo "save logFile in csvFile"
echo $csvFile
echo $logFile >> $csvFile
echo "done for $urlToCurl"
exit 0
