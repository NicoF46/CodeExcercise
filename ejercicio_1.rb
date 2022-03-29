#############################################################################
##
## PROBLEM 1
##
## Fill in function below
##
#############################################################################
#
# Given a list of strings, and integer, i
# find all strings less then length i, then group
# and count the number of strings by their length
#
# example:
#
# strings = [ 'abc', 'defg', 'hi' ,'a', 'b', 'ze', 'ae' ]
#
# i = 4
#
#
# output = { 1: 2, 2: 3, 3: 1 }
#

# This is the function that filters and group using the strings length.
# Steps
# Create output hash
# Filter the elements with less characters than i
# Group elements by length
# Count elements in each group and save them in the output hash
# Return the output hash
def filter_and_group(strings, i)
  output = {}
  strings.select { |s| s.length < i }.group_by(&:length).map { |k, v| output[k] = v.size }
  output
end

# Output example usings puts.
puts filter_and_group(%w[abc defg hi a b ze ae], 4)
puts filter_and_group(%w[abcd defg hi a b ze ae], 4)
puts filter_and_group(%w[abcdef defg hi a bdd ze ae], 4)
puts filter_and_group(%w[abc defg hi a bcv ze ae], 4)
puts filter_and_group(%w[abc defg hi a b ze aeddd], 10)
