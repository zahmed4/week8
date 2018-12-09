#!/usr/bin/env python

#get user to input DNA sequence and print the complement of the sequence.
complement = []
dnaSeq = input ("Please enter your DNA sequence in all capitol letters: ")
dnaSeq = dnaSeq.upper()

#reverses DNA sequence that user inputs.
dnaSeq = dnaSeq[::-1]
print (dnaSeq)

#gets the complement of the reversed DNA sequence.
for i in dnaSeq:
	if i == "A":
		complement.append("T")
	elif i == "C":
		complement.append("G")
	elif i == "T":
        complement.append("A")
	elif i == "G":
        complement.append("C")

#converts list to a string
str2 = ''.join(complement)
print (str2)	# DB: Minor, but better to avoid generic variable names like 'str2'. Maybe
                #     try something like 'revComp'?


# DB: Good! You do specify that the input sequence should be uppercase, but if you want
#     to make sure, you could always use .upper() to convert whatever sequence the user
#     provides.