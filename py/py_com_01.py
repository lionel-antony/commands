# Print info
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
