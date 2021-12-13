import unicodedata
import sys
import os
import requests
import json
from datetime import datetime
from dateutil import tz

start_data = open("advent_data09.txt","r")

cave_rows = start_data.readlines()

low_sum = 0
i = 0

while i < len(cave_rows):
	current_row = cave_rows[i].replace("\n","")
	if ( i > 0 ):
		previous_row = cave_rows[i - 1].replace("\n","")
	if ( i < (len(cave_rows) -1) ):
		next_row = cave_rows[i + 1].replace("\n","")
	
	j = 0
	while j < len(current_row):

		check_value = int(current_row[j])
		higher_places = 0

		if ( i == 0 ):
			up_place = 10
		else:
			up_place = int(previous_row[j])
		
		if ( j == 0 ):
			back_place = 10
		else:
			back_place = int(current_row[j - 1])

		if ( i == len(cave_rows) - 1 ):
			down_place = 10
		else:
			down_place = int(next_row[j])

		if ( j == len(current_row) - 1 ):
			next_place = 10
		else:
			next_place = int(current_row[j + 1])


		if ( up_place > check_value and back_place > check_value and down_place > check_value and next_place > check_value ):
			print ( 'row [' + str(i) + '] col [' + str(j) + '] val [' + str(check_value + 1) + ']' )
			low_sum = low_sum + check_value + 1
			#print ( '   ' + str(up_place) )
			#print ( str(back_place) + ' ' + str(check_value) + ' ' + str(next_place) )
			#print ( '   ' + str(down_place) )


		j += 1
			
	i +=1

print ('Low value [' + str(low_sum) + ']')
