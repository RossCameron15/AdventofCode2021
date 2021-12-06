import unicodedata
import sys
import os
import requests
import json
from datetime import datetime
from dateutil import tz

day0 = 0
day1 = 0
day2 = 0
day3 = 0
day4 = 0
day5 = 0
day6 = 0
day7 = 0
day8 = 0

start_data = open("advent_data06.txt","r")

lanternfish = start_data.read().split(',')

print ("Lanternfish start " + str(len(lanternfish)))

print (lanternfish)

i = 0
while i < len(lanternfish):
        if lanternfish[i] == "0":
                day0 +=1
        if lanternfish[i] == "1":
                day1 +=1
        if lanternfish[i] == "2":
                day2 +=1
        if lanternfish[i] == "3":
                day3 +=1
        if lanternfish[i] == "4":
                day4 +=1
        if lanternfish[i] == "5":
                day5 +=1
        if lanternfish[i] == "6":
                day6 +=1
        if lanternfish[i] == "7":
                day7 +=1
        if lanternfish[i] == "8":
                day8 +=1
        i +=1

print ("day0 [" + str(day0) + "]")
print ("day1 [" + str(day1) + "]")
print ("day2 [" + str(day2) + "]")
print ("day3 [" + str(day3) + "]")
print ("day4 [" + str(day4) + "]")
print ("day5 [" + str(day5) + "]")
print ("day6 [" + str(day6) + "]")
print ("day7 [" + str(day7) + "]")
print ("day8 [" + str(day8) + "]")

print ("Total [" + str (day0 + day1 + day2 + day3 + day4 + day5 + day6 + day7 + day8)  + "]")

day = 1
while day < 81:
        print ("Day [" + str(day)  + "]")
        hold_val = day0
        day0 = day1
        day1 = day2
        day2 = day3
        day3 = day4
        day4 = day5
        day5 = day6
        day6 = day7 + hold_val
        day7 = day8
        day8 = hold_val
        day = day + 1

print ("Total [" + str (day0 + day1 + day2 + day3 + day4 + day5 + day6 + day7 + day8) + "]")
