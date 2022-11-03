# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

def lab(word)
    if word =~ /lab/
        puts word
    else
        puts "No match"
    end
end
lab("laboratory")
lab("experiment")
lab("Pan's Labyrinth")
lab("elaborate")
lab("polar bear")