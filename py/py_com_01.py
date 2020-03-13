# Print info
from datetime import datetime, timedelta
from datetime import datetime
print('Hello World')

# Getting info from the user
name = input('Please enter your name: ')
print(name)

# Blank line
print()
print('Blank line \nin the middle of string')
print('Hello \nWorld')

# Use dobule quotes when a single quote is in the string
print("It's a small world.")

# Strings can be stored in variables
first_name = 'Christopher'
print(first_name)

first_name = 'Lionel'
last_name = 'Antony'
print('Hello ' + first_name + ' ' + last_name)

# Use functions to modify strings
sentence = 'The bird is kingfisher'
print(sentence.upper())
print(sentence.lower())
print(sentence.capitalize())
print(sentence.count('a'))

### 11 - Strings Format ###

# Custom String Formatting
print('Hello, ' + first_name + ' ' + last_name)
print('Hello, {} {}'.format(first_name, last_name))
print('Hello, {0} {1}'.format(first_name, last_name))
print('Hello, {1} {0}'.format(first_name, last_name))
print(f'Hello, {first_name} {last_name}')

output = 'Hello, {0} {1}'.format(first_name, last_name)
print(output)

output = f'Hello, {first_name} {last_name}'
print(output)

### 12 - Strings Format Code ###

### 13 - Working with numbers ###

pi = 3.142
print(pi)

first_num = 6
second_num = 2
print(first_num + second_num)
print(first_num ** second_num)

# Type conversion
days_in_feb = 28
print(str(days_in_feb) + ' days in February')

# input stores number in a string

first_num = input('Enter first number ')
second_num = input('Enter second number ')
print((first_num) + (second_num))
print(int(first_num) + int(second_num))
print(float(first_num) + float(second_num))

### 15 - Dates ###

# To get current date and time, we need to use the datetime lib

# the now function returns a datetime object
current_date = datetime.now()
print('Today is: ' + str(current_date))

# function timedelta is used to define a period of time
Today = datetime.now()
print('Today is: ' + str(Today))

one_day = timedelta(days=1)
yesterday = Today - one_day
print('Yesterday was: ' + str(yesterday))

# Use date functions to control date formatting
current_date = datetime.now()

print('Day: ' + str(current_date.day))
print('Day: ' + str(current_date.month))
print('Day: ' + str(current_date.year))

# Date input is a string
birthday = input('When is your birthday (dd/mm/yyyy)? ')
birthday_date = datetime.strptime(birthday, '%d/%m/%Y')
print('Birthday: ' + str(birthday_date))
one_day = timedelta(days=1)
birthday_eve = birthday_date - one_day
print('Day before birthday: ' + str(birthday_eve))


### End - 15 - Dates ###

### 17 - Error Handling ###

x = 42
y = 0
print()
try:
    print(x/y)
except ZeroDivisionError as e:
    print('Not allowed to divide by zero')
else:
    print('Something else went wrong')
finally:
    print('This is our cleanup code')
print()

### End - 17 - Error Handling ###

### 19 - Handling conditions ###

if price >= 1.00:
    tax = 0.07
    print(tax)
else:
    tax = 0
    print(tax)

country = 'CANADA'
if country.lower() == 'canada':
    print('Oh look a Canadian')
else:
    print('You are not from Canada')

### End - 19 - Handling conditions ###

### 21 - Handling Multiple Conditions ###

if province == 'Alberta':
    tax = 0.05
elif province == 'Vancouver':
    tax = 0.10
elif province == 'Ontario':
    tax = 0.15
else:
    tax = 0.20

if province == 'Alberta' \
   or province == 'Nunavut' :
    tax = 0.05
elif province == 'Vancouver':
    tax = 0.10
elif province == 'Ontario':
    tax = 0.15
else:
    tax = 0.20

if province in('Alberta', 'Yukon', 'Nunavut'):
    tax = 0.05
elif province == 'Vancouver':
    tax = 0.10
elif province == 'Ontario':
    tax = 0.15
else:
    tax = 0.20

if country == 'Canada':
    if province in('Alberta', 'Yukon', 'Nunavut'): 
        tax = 0.05
    elif province == 'Vancouver':
        tax = 0.10
    elif province == 'Ontario':
        tax = 0.15
    else:
        tax = 0.20
else:
    tax = 0.0


### End - 21 - Handling Multiple Conditions ###

### 23 - Complex Condition Checks ###
gpa = 0.90
lowest_grade = 0.80

if gpa >= 0.85 and lowest_grade >= 0.70:
    print('Well Done!')

###

if gpa >= 0.85 and lowest_grade >= 0.70:
    honour_roll = True
else:
    honour_roll = False

if honour_roll:
    print('Well Done!')

### End - 23 - Complex Condition Checks ###

### 25 - Collections ###

### Lists are a collection of items

names = ['bat', 'ball']
print(names)

scores = []
scores.append(98)  # add new item to the end of the list
scores.append(99)
print(scores)
print(scores[1])

# arrays are collections of items

from array import array
scores = array('d')
scores.append(97)
scores.append(98)
print(scores)
print(scores[1])

# arrays - numerical data types only & must all be the same type
# lists - stores anything any type

names = ['eagle', 'kite',]
print(len(names))
names.insert(0, 'kingfisher')
print(names)

names.sort()
print(names)

# retrieve a range
creatures = ['cat', 'eagle', 'kite', 'lion']
birds = creatures[1:3]

print(creatures)
print(birds)

# Dictionaries 
person = {'first': 'cat'}
person['last'] = 'lion'
print(person)
print(person['first'])

# Dictionary
#  - key/value pairs
#  - storage order not guaranteed

# List
#  - zero-based index
#  - storage order guaranteed



### End - 25 - Collections ###

