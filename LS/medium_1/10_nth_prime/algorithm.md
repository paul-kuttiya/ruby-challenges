Checking if a number is prime

You may remember that a prime number is one whose only factors are itself and 1. Other numbers are called oblong numbers (they can be represented as an oblong of dots) or composite numbers.

Today we examine some shortcuts for finding the prime numbers.

Let's take 37 for example. Is it prime?


One way is to try each number in turn, from 2 to 37 to see if any of them divide exactly in to 37.
On your calculator this is easy, because the answer to this division calculation would end with ".0" or just show as a whole number. If it shows anything after a decimal point, then it didn't divide into 37 exactly.




A Shortcut

One shortcut is to realise that if, say, 15 did divide into the number we are testing, then so would 3 and also 5 since 15=3x5. Similarly, if 18 was a factor of the number being tested, since 18=2x9=2x3x3 then 2 would also be a factor and so would 3 (and also 2x3=6 and 3x3=9).
So one shortcut is:
Only test prime numbers smaller than the number you are testing as possible factors

So, instead of checking 2,3,4,5,6,7,... all the way up to 36 to see if 37 is prime, we need only test 2, 3, 5, 7, 11, 13, 17, 19, 23, 29 and 31. But there is another shortcut too: 


Another shortcut!

Since 3 is a factor of 18 and 18/3=6, then 18=3x6. We need only test the smaller number, 3, to see if it is a factor of 18 and not 6. Similarly, 5 is a factor 20 and 20=5x4 so we need only test the smaller number 4 as a factor. But what if we don't know the factors of a number? So, testing a number to see if it is prime means we need only test the "smaller" factors. But where do smaller factors stop and larger factors start? The principle here is:
Suppose one number is a factor of N and that it is smaller than the square-root of the number N. Then the second factor must be larger than the square-root.
We can see this with the examples above: For 18, we need only test numbers up to the square-root of 18 which is 4.243, ie up to 4! This is much quicker than testing all the numbers up to 17!!
For 25, we need to test numbers up to and including the square-root of 25, which is 5.
And for 37, we need only go up to 6 (since 6x6=36 so the square-root of 37 will be only a little bit larger).



Which numbers to test as factors

So, putting these two shortcuts together, we need only test those prime numbers up to 6 to see if they are factors of 37. If any are, the number is not prime (it is composite) and if none of them are, then the only factors would be 1 and 37 and 37 would be prime.
The numbers to test are therefore:
2
and 37 is not even, so 2 is not a factor of 37
3
and 37/3 is 12.3333 so 3 does not divide exactly into 37 either
5
and 37 does not end with 0 or 5 so 5 is not a factor of 37
7 is the next prime,
but it is bigger than the square-root of 36, so we can stop now.
So 37 has no factors (except 1 and 37 of course) and therefore
37 is a prime number.
Can you... ...extend the list of prime numbers above up to 100?
[Hint: since 10x10=100, you only need to know the primes up to 10: 2,3,5 and 7 and only use these as test divisors in order to test any number up to 100 to see if it is prime.]

