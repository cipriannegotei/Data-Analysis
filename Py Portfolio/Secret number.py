'Secret number'

secret_number = 777

print(
"""
+================================+
| Welcome to my game!            |
| Enter an integer number        |
| and guess what number I've     |
| picked for you.                |
| So, what is the secret number? |
+================================+
""")

# Store the current largest number here.
number = -999999999

# Input the first value.
#number = int(input("Enter a number or type -1 to stop: "))

# If the number is not equal to secret number, continue.
while number != secret_number:
    # Input the next number.
    number = int(input("Enter a number: "))

# Print the secret number.
print("Congratulations!!! The secret number is:", number)