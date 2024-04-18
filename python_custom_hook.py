"""
This script checks the number of files and folders in the current directory.
If the number exceeds 100, it raises a RuntimeError.
Otherwise, it prints a message indicating that everything is okay.
"""

import os

if len(os.listdir()) > 100:
    raise RuntimeError("Too many folders and files!")
else:
    print("Everything is ok")
