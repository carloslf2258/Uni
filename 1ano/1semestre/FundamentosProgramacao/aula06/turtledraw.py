# Exercise 5 on "How to think like a computer scientist", ch. 11.

import turtle

t = turtle.Turtle()

# Use t.up(), t.down() and t.goto(x, y)

# Put your code here
def draw(file_name):
    with open(file_name, 'r', encoding='utf-8') as file:
        for lines in file:
            l = lines.split()
            if l[0] != 'UP' and l[0] != 'DOWN':
                t.goto(int(l[0]), int(l[1]))
            elif l[0] == 'UP':
                t.penup()
            else:
                t.pendown()

draw("drawing.txt")

# wait
turtle.Screen().exitonclick()
