-- numbers 1 to 100

oneToHundred = [1..100]

aToZ    = ['a'..'z']
pToT    = ['P'..'T']

twoFourToTen = [2,4..10]

-- NOTE : Float ranges are not very precise!

-- infinite lists
-- TAKE
gzuz = take 20 (cycle [1,8,7]) -- takes a list and cycles it into an infinite list. 
-- If you just try to display the result, it will go on forever so you have to slice it off somewhere.

weed = take 20 (cycle "weed ") -- also works with strings!

-- REPEAT
-- takes an element and produces an infinite list of just that element
-- like cycle but with only one element

seven = take 3 (repeat 7)

-- REPLICATE (easier way to repeat things)
four = replicate 3 4
