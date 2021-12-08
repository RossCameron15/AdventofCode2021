import unicodedata
import sys
import os
import requests
import json
from datetime import datetime
from dateutil import tz

count0 = 0
count1 = 0
count2 = 0
count3 = 0
count4 = 0
count5 = 0
count6 = 0
count7 = 0
count8 = 0
count9 = 0

start_data = open("advent_data08.txt","r")

signal_pattern = start_data.readlines()

i = 0
while i < len(signal_pattern):
	(segment,output) = signal_pattern[i].split("|")
	print (segment,output)
	display = output.split(" ")
	j = 0
	while j < len(display):
		sorted_value = sorted(display[j])
		check_value = "".join(sorted_value)
		check_value = check_value.replace("\n","")
		#print (display[j])
		if ( len(check_value) ) == 2:
			print ('count1 [' + str(check_value) + ']')
			count1 += 1
		if ( len(check_value) ) == 4:
			print ('count4 [' + str(check_value) + ']')
			count4 += 1
		if ( len(check_value) ) == 3:
			print ('count7 [' + str(check_value) + ']')
			count7 += 1
		if ( len(check_value) ) == 7:
			print ('count8 [' + str(check_value) + ']')
			count8 += 1
		j += 1
	i += 1

total_count = (count0 + count1 + count2 + count3 + count4 + count5 + count6 + count7 + count8 + count9)

print ('Total Count [' + str(total_count) + ']')
