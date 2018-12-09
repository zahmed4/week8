#!/usr/bin/env python

#get user to input DNA sequence and print the complement of the sequence.
complement = []
dnaSeq = input ("Please enter your DNA sequence in all capitol letters: ")

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
print (str2)



