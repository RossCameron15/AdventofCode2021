import unicodedata
import sys
import os
import requests
import json
from datetime import datetime
from dateutil import tz

Positions_dict = dict()

start_data = open("advent_data05.txt","r")

for line in start_data:
	line_encode = line.encode("ascii", "ignore")
	line = line_encode.decode().replace("\n", "")
	(value1,junk,value2) = line.split(" ")
	#print ("value1 [" + value1 + "] value2 [" + value2 + "]")
	(xvalue1,yvalue1) = value1.split(",")
	(xvalue2,yvalue2) = value2.split(",")
	if ( xvalue1 == xvalue2):
		print ('Horizontal [' + value1 + '] value2 [' + value2 + ']')
		ypos1 = int(yvalue1)
		ypos2 = int(yvalue2)
		if ( ypos1 > ypos2):
			ypos1 = int(yvalue2)
			ypos2 = int(yvalue1)
		xtext = "000" + str(xvalue1)
		xtext=xtext[-3:]
		i = ypos1
		while i <= ypos2:
			ytext = "000" + str(i)
			ytext=ytext[-3:]
			#print ("x = [" + xtext + "] y = [" + ytext + "]")
			dict_key = xtext + ':' + ytext
			#print ('dict_key [' + dict_key + ']')
			if dict_key not in Positions_dict.keys():
				Positions_dict[dict_key] = 1
			else:
				Positions_dict[dict_key]+= 1
			i +=1
	if ( yvalue1 == yvalue2):
		print ('Vertical [' + value1 + '] value2 [' + value2 + ']')
		xpos1 = int(xvalue1)
		xpos2 = int(xvalue2)
		if ( xpos1 > xpos2):
			xpos1 = int(xvalue2)
			xpos2 = int(xvalue1)
		ytext = "000" + str(yvalue1)
		ytext=ytext[-3:]
		i = xpos1
		while i <= xpos2:
			xtext = "000" + str(i)
			xtext=xtext[-3:]
			#print ("x = [" + xtext + "] y = [" + ytext + "]")
			dict_key = xtext + ':' + ytext
			#print ('dict_key [' + dict_key + ']')
			if dict_key not in Positions_dict.keys():
				Positions_dict[dict_key] = 1
			else:
				Positions_dict[dict_key]+= 1
			i +=1

number_overlap = 0
sorted_position=sorted(Positions_dict.keys(), key=lambda x:x.lower())
for x in sorted_position:
	count = int(Positions_dict[x])
	if ( count > 1 ):
		number_overlap += 1

print ('Number overlap [' + str(number_overlap) + ']')

