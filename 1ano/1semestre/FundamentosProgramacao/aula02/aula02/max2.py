# coding: utf-8
# This program finds the maximum of two numbers.
# It uses the built-in max function.
# Can you do it with a conditional statement (if / if-else) instead?

x1 = float(input("number? "))
x2 = float(input("number? "))
x3 = float(input("number? "))
# Use a conditional statement instead of max function!
max = x1

if max < x2:
  max = x2
if max < x3:
  max = x3

print("Maximum:", max)





