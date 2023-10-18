# Introduction

Attempting to make a spell checker for Sanskrit using a wordlist in file 'wordlist.txt'.
The dictionary language name will be sk-temp and hunspell required files sk-temp.dic and sk-temp.aff.

A hunspell .dic file consists of a line at top with how many number of words are there and then the list of words.

# Process:

1. Populate wordlist with words of the language.
2. Call `sh GenerateDictionary.sh` to do following:
   1. Generate the count of words and the list of words by taking unqiue and sorted value from wordlist.
   2. Put word count and then the list of files in sk.dic file.
   3. Copy the sk.dic file to hunspell dictionary folder at `/usr/share/myspell/dicts`.
3. Call `sh TestDictionary.sh` to do following:
   1. Test the dictionary using the TextToTest and selecting the sk language using `-d sk` option.



# Problems:

## P1:

If using the shell script then sort order is not right, as अक comes before अंश
but it should be later. But if we correct the sort then hunspell will fail as
it needs sk.dic to be sorted to use, and it has a different sort causing dictionary
to be detect incorrectly.

It is wrongly determining "गिर" as incorrect and then suggestin to correct with "गिर" (which on terminal prints it in a way that we see the half (इ) in middle).

# Improvements:

Sorting has to be corrected and it should match how hunspell needs to correctly match.
The whole process should be made in not script but a small program if above issue is 
too complex to handle in script.