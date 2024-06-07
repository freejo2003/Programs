import turtle

# Set up the turtle
wn = turtle.Screen()
wn.bgcolor("white")
t = turtle.Turtle()

# Draw a square
for _ in range(4):
    t.forward(100)
    t.right(90)

# Move turtle to a new position
t.penup()
t.goto(200, 0)
t.pendown()

# Draw a circle
t.circle(50)

# Finish
turtle.done()
