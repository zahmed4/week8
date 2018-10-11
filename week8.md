# Week 8 Outline

## Reading
- Practical Computing, Chapters 9 and 10


## More on Python

```
In-Class Exercise - Generating the Reverse Complement of a DNA sequence

When looking for specific patterns in genome sequences, we often want to make
sure to search for the pattern on both strands. Because the 5'-3' orientation
runs in opposite directions on different strands, and nucleotides pair with
their complement (A-T and G-C), the 5'-3' sequence AGGC on one strand will
look like GCCT if sequenced on the other strand. Since we're generally not
sure which strand we've actually sequenced, we want to look for both of these
patterns. But this requires being able to translate any sequence of interest
into its reverse complement. There are two steps in this process, although
the order of these steps doesn't matter:

  - Reverse the sequence
  - Generate the complement of the sequence

Write a python script that accepts a sequence from the user and prints out
the reverse complement to the screen.

NOTE: From here on out (for the rest of the assignments this semester), I
expect you to include abundant comments in the code you write. Remember that
any line starting with `#` can be used to store comments.

```


- [ ] Getting help from Python
  - If you need help remembering what methods are available for a given object, use `dir(<OBJECT>)`
  - Note that methods starting and ending with "__" are not meant for users to call. They are methods to be used by the system.
  - Try creating a string variable (e.g., `myStr = "some text"`).
    - Now run `dir(myStr)`
    - Pick a method you haven't used before and see what it does with `myStr`.


- [ ] `if` statements
  - These are similar in form to bash, but simpler
  - The general form is:
        if <CONDITION>:
            <DO_THIS>
  - The `if` statement has to finish with a `:`.
  - Also, in Python, the code block _inside_ the `if` statement must be indented. You can use either tabs or a certain number of spaces. When using spaces, you must use the __same__ number of spaces throughout your code. The official recommendations for Python style strongly suggest using 4 spaces, rather than tabs.
  - Note that the syntax for conditions is pretty intuitive in Python
    - `myStr != "other text"`
  - `if` statements can be used on their own, but no code will be executed when the condition is false.


- [ ] `if...else` statements
  - To include code blocks that should be executed when the condition is false, you'll need to use an if...else statement. These have the general form:
        if <CONDITION>:
            <DO_THING_WHEN_TRUE>
        else:
            <DO_THING_WHEN_FALSE>
  - Sometimes, you'll want to test a series of conditions to decide what to do. In that case you could use a nested set of `if...else` statements:
        nuc = "A"
        if nuc == "A":
            print("Nucleotide is an A.")
        else:
            if nuc == "C":
                print("Nucleotide is a C.")
            else:
                if nuc == "G":
                    print("Nucleotide is a G.")
                else:
                    if nuc == "T":
                        print("Nucleotide is a T.")
  - However, you'll notice that this can get pretty cumbersome pretty quickly. Thankfully, python offers another, more compact, way to write this:
        nuc = "A"
        if nuc == "A":
            print("Nucleotide is an A.")
        elif nuc == "C":
            print("Nucleotide is a C.")
        elif nuc == "G":
            print("Nucleotide is a G.")
        elif nuc == "T"
            print("Nucleotide is a T.")
  - The `elif` statements stand for `else...if` and capture what we tried to do above with the nesting.
  - It is important to realize that as we've currently written these statements, nothing would happen if the variable `nuc` didn't have the value `A`, `C`, `G`, or `T`. This can be a big problem when accepting input from a user or file that might provide a nonsensical value. To capture these cases, it's always best to close with a simple `else`:
        nuc = "A"
        if nuc == "A":
            print("Nucleotide is an A.")
        elif nuc == "C":
            print("Nucleotide is a C.")
        elif nuc == "G":
            print("Nucleotide is a G.")
        elif nuc == "T":
            print("Nucleotide is a T.")
        else:
            print("This is not a valid nucleotide!")


- [ ] Lists
  - We've now covered the simple variable types in Python: integers, floats, strings, and bools.
  - However, there are several more complex types of variables that allow us to store and access multiple values.
  - Perhaps the most versatile and common of these more complex types are lists.
  - Lists are always specified using square brackets - `[]`
  - Lists can contain an arbitrary number and type of simpler variables, but we often want to use only one type in a list so as not to get confused.
    - `listOfNums = [1,2,3,4]`
    - `listOfFloats = [3.14, 2.0, 12.3]`
    - `listOfStrings = ["Ecology", "Evolution", "Systematics"]`
    - `listOfBools = [True, False, False, True]`
  - Even after they are created, lists can be modified. Individual elements can be added using the append method():
    - `listOfNums.append(5)` - Examine list after executing
    - `listOfStrings.append("Neurobiology")`
  - Elements can be removed using a few different methods.
    - Try `listOfFloats.pop()` - What is returned? And what does the list look like now?
    - You can remove specific values from a list, regardless of their position, by using the `remove(<VALUE>)` method. What happens when you execute `listOfBools.remove(False)`? How does the list change?
  - Lists can contain lists as elements. For instance, try this:
    - `newList = []`
    - `newList.append([1,2,3])`
    - `newList.append([4,5,6])`
    - `newList.append([12,13,14])`
  - But you can also add all the _individual elements_ of one list to another. Try this:
    - `newList = [1,2,3]`
    - `newList.extend([4,5,6])`
    - `newList.extend([12,13,14])`
    - How does `newList` differ from what you got when you used `append()`?
  - You can view or extract parts of a list by using indices and "slicing" the list (just remember that python starts counting at 0!)
    - `newList[4:7]` - What values are returned? How do these relate to the indices you provided?
  - You can also alter individual elements of lists by using indices
    - `newList`
    - `newList[2] = 100`
    - `newList`


- [ ] `for` loops
  - One of the nicest things about Python is the relationship between lists and `for` loops
  - If you have an existing list, you can quickly iterate across all of its elements using this syntax:
        for num in newList:
            print("This number is: %d" % num)
  - If you still want to iterate over a series of integers, you can use the range() function.
        for num in range(10):
            print("This number is: %d" % num)


- [ ] A note about "copying objects"
  - Try this:
    - `firstNum = 2`
    - `secondNum = firstNum`
    - `firstNum = 5`
    - `firstNum`
    - `secondNum`
  - Now try this:
    - `firstList = [1,2,3]`
    - `secondList = firstList`
    - `firstList.extend([4,5,6])`
    - `firstList`
    - `secondList`


- [ ] Tuples
  - Tuples are like lists, but they're not mutable (can't be changed)
  - Tuples are instantiated using parentheses - `()`
  - Try this:
    - `myTuple = (1,2,3)`
    - `myTuple`
    - `myTuple[1]`
    - `myTuple[1] = 5`


- [ ] Dictionaries
  - Dictionaries are incredibly useful for storing pairs of things - known as "keys" and "values"
  - They don't store these pairs in a particular order, like lists do, but they make looking up values from keys much faster.
  - The keys and values can each be different types of variables
  - To create a new dictionary, you can use this syntax:
    - `myDict = {"keyOne":"valueOne", "keyTwo":"valueTwo"}`
  - To look at the methods available for dictionaries, try this:
    - `dir(myDict)`
  - You can access a value, as long as you know its key, either of these ways:
    - `myDict.get("keyOne")`
    - `myDict["keyOne"]`
  - You can change a value using its key, this way:
    - `myDict["keyOne"] = <NEW_VALUE>`
  - You can add a new key/value pair using the update method:
    - `myDict.update({<NEW_KEY:NEW_VALUE})`


- [ ] Importing libraries and drawing random numbers
  - Sometimes it will be helpful to use functionality that's not part of the core python functionality.
  - Thankfully, python has a built-in way to import new functions that other people have written to extend the core functions
  - Once you know the name of a library, you can use the `import` command to load it (if it's already been installed).
  - One library that we're going to use today is called `random`.
  - Once it's loaded, you'll need to precede any of its functions with `random.` in order to use them.
  - Try this:
    - `import random`
    - `random.random()` - Do this a few times
    - `random.uniform(0,1)` - Do this a few times
    - `random.uniform(0,5)` - Do this a few times
    - `random.choice([5,6,7,8])` - Do this a few times
    - `firstList`
    - `random.shuffle(firstList)`
    - `firstList`
    - `random.shuffle(firstList)`
    - `firstList`
    - `random.shuffle(firstList)`
    - `firstList`


- [ ] Let's try to create a coin-flipping and dice-rolling program together

## References
- [Python Style Guide](https://www.python.org/dev/peps/pep-0008/)

## Weekly Assignment (Due Tuesday, Oct. 16th)
- Fork and clone this week's repository
- Create the following script, put it in a folder with your name, and add that folder to the assignments folder (DON'T create a new branch)
- Your script should do these things:
  - Present a menu to the user asking if they want to (1) translate a protein-coding nucleotide sequence to amino acids -or- (2) randomly draw a codon from the sequence
  - After the user selects an option, the script should prompt the user for their protein-coding sequence
  - The script should then do whichever thing the user requested
