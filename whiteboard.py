# Count Palindromes
# GIven a list of strings, count the number of palindromes that occur inside of the list 
# (a palindrome is a word that is spelled the same backwards and forward).

# Example input: ['dog', 'racecar', 'wildebeest']
# Output: 1
# Explanation: 'racecar' is the only palindrome in the list

# Example input: ['kayak', 'level', 'word', 'smooth', 'detartrated']
# Output: 3
# Explanation: 'kayak', 'level', and 'detartrated' are all palindromes































def palindrome(array):
    num = 0
    for i in array:
        if i[::-1] == i[::1]:
            num += 1
            print(i[::-1])
    return num
print(palindrome(['dog', 'racecar', 'wildebeest', 'kayak']))