# Because with this operation you are creating a list where the head is a list and the elements in tail are integers?
#   
# iex> [ 'cat' | 'dog' ]
# ['cat',100,111,103]
#
# iex> [[99, 97, 116] | [100, 111, 103]]
# ['cat', 100, 111, 103]
#
# Written in other words
# > ['cat' | 'dog']
# > ['cat' | [100,111,103]]                   
# > [[99, 97, 116] | [100, 111, 103]]
# > [[99, 97, 116], 100, 111, 103]
#
# Iex prints [99, 97, 116] as 'cat' setting it as head of outer array. Outer array canno be translated into
# codepoints because head is an array and not a codepoint.
#
# Demonstration:
# iex> [ 'cat' | 'dog' ]
# ['cat', 100, 111, 103]
#
# iex> [[99, 97, 116], 100, 111, 103]
# ['cat', 100, 111, 103]
