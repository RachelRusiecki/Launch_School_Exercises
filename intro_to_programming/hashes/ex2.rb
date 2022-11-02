# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

hash1 = {"a" => 1, "b" => 2, "c" => 3}
hash2 = {"d" => 4, "e" => 5, "f" => 6}
p hash1.merge(hash2)

hash1 = {"a" => 1, "b" => 2, "c" => 3}
hash2 = {"d" => 4, "e" => 5, "f" => 6}
p hash1.merge!(hash2)

# Both merge into one hash. The difference is merge! modifies permanently, while merge does not.