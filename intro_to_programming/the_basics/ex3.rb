# Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the
# screen.

movies = {
    jaws: 1975,
    anchorman: 2004,
    man_of_steel: 2013,
    a_beautiful_mind: 2001,
    the_evil_dead: 1981
}
movies.each { |movie, year| puts year }