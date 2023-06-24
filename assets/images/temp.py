# Rename all the files available in the directory to lowercase

import os

def rename_files():
    # 1. Get file names from a folder
    file_list = os.listdir(r"C:/Users/smit2/Desktop/IMGS/")
    print(file_list)
    saved_path = os.getcwd()
    print("Current working directory is " + saved_path)
    os.chdir(r"C:/Users/smit2/Desktop/IMGS/")
    
    # 2. For each file, rename filename
    for file_name in file_list:
        os.rename(file_name, file_name.lower())
    os.chdir(saved_path)
rename_files()