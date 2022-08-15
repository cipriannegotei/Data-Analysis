#Ugly eater
user_word = input('cuvantul este')

for letter in user_word:
    # Complete the body of the for loop.
    if letter in ('a', 'e', 'i', 'o', 'u'):
        continue
    else:
        print(letter)

#Pretty Eater
word_without_vowels = ""
user_word = input('cuvantul este')
for letter in user_word:
    # Complete the body of the for loop.
    if letter in ('a', 'e', 'i', 'o', 'u'):
        continue
    else:
        word_without_vowels=word_without_vowels+letter.upper()

print(word_without_vowels)