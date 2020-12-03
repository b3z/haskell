-- In Haskell, lists are a homogenous data structure. 
-- It stores several elements of the same type. 
-- That means that we can have a list of integers or a list of characters but we can't have a list that has a few integers and then a few characters.

-- Note: We can use the let keyword to define a name right in GHCI. 
-- Doing let a = 1 inside GHCI is the equivalent of writing a = 1 in a script and then loading it.

lostNumbers = [1, 2, 4, 54, 99, 0]
lostWords = ["I", "hate", "Haskell"]

-- list concatination (++)

listCon = "I" ++ " " ++ "love" ++ " "
listCon2 = ['w','e'] ++ ['e','d']
twoLists = listCon ++ listCon2

-- NOTE: Strings are just lists of characters

-- Watch out when repeatedly using the ++ operator on long strings. 
-- When you put together two lists (even if you append a singleton list to a list, for instance: [1,2,3] ++ [4]), 
-- internally, Haskell has to walk through the whole list on the left side of ++. That's not a problem when dealing with lists that aren't too big. 
-- But putting something at the end of a list that's fifty million entries long is going to take a while. 
-- However, putting something at the beginning of a list using the : operator (also called the cons operator) is instantaneous.
-- in ghci ":set +s" will enable execution time feedback.

catHead = 'A':" small cat."
numHead = 1:[2,3]

-- building lists with that [1,2,3] is equal to 1:2:3:[]

buildList = 1:2:3:[]

-- NOTE [], [[]] and[[],[],[]] are all different things. The first one is an empty list, the seconds one is a list that contains one empty list, 
-- the third one is a list that contains three empty lists.

-- indices
-- If you want to get an element out of a list by index, use !!. The indices start at 0

-- remember the list from above
number = buildList !! 2

-- multidimensional

multi = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]] 
secondMulti = multi !! 1
secondSecondMulti = multi !! 1 !! 1 -- (3)

-- comparing lists

a = [1, 2, 3]
b = [4, 5, 6]

aGreaterB = a > b -- returns false

-- also available 
-- <
-- >
-- ==
-- <=
-- >=


-- HEAD & TAIL & LAST & INIT

headA = head a -- gives us first element of the list
tailA = tail a -- gives us the list without the head (NOT THE LAST ELEMENT!)
lastA = last a -- gives us the last element of the list
initA = init a -- gives us the list without the last element, so with out the tail. That is going to be painful

-- NOTE : these operations on emtpy list will not cause a compiling error but an error later during the runtime.
-- so be careful with that.

-- MORE on lists

lengthA     = length a      -- length of a
nullA       = null a        -- checks if a is an empty list, is equal to "a == []"
reverseA    = reverse a     -- reverses the list a
takeA       = take 2 a      -- extracts that many elements from the beginning of the list
dropA       = drop 2 a      -- drops the number of elements from the beginning of a list
maxA        = maximum a     -- biggest element of the list a
minA        = minimum a     -- smallest of a
sumA        = sum a         -- sum of all elements
prodA       = product a     -- returns the product of all elements
elemA       = 2 `elem` a      -- takes a thing and a list of things and tells us if that thing is an element of the list












