import tkinter as tk
from PIL import Image, ImageTk

def display_image():
    root = tk.Tk()  # Create the main application window
    root.title("Image Display")  # Set the title of the window

    # Load image
    img = Image.open("path_to_your_image.jpg")  # Open the image file
    img = ImageTk.PhotoImage(img)  # Convert the image to a format that Tkinter can use

    # Create a label to display the image
    label = tk.Label(root, image=img)  # Create a label widget to hold the image
    label.pack()  # Pack the label widget into the window

    root.mainloop()  # Enter the main event loop to display the window and wait for user interactions

display_image()  # Call the function to display the image