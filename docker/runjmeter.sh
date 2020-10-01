#!/bin/bash 
rootFolder=/opt 
outputFolder=$rootFolder/output 
$rootFolder/jmeter/bin/jmeter -n -t $rootFolder/git/testplan.jmx -l $outputFolder/output.jtl -j $outputFolder/jmeter.log