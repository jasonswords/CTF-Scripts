
#Problem
#In the first 10 thousand numbers in the fibonacci sequence, how many of them end in a 4 when their digits are summed?

#For example:

#987 is a fibonacci number
#9 + 8 + 7 = 24
#24 ends in a 4
#987 is therefore counted as valid

limit=10000
x,y=0,1

def sum_digits(n):
   r = 0
   while n:
       r, n = r + n % 10, n // 10
   return r
times = 0
total =0

while times <= limit:

    if sum_digits(y)%10 == 4:
        print(y)
        total += 1
    times += 1
    x,y = y,x+y

print(total)

