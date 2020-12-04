# -*- coding: utf-8 -*-
"""
Created on Fri Dec  4 04:45:24 2020

@author: Korhan
"""
import os
from PIL import Image
from shutil import copyfile


files_dir = 'C:\\Users\\Korhan\\Desktop\\Dropbox\\asistanlık\\388\\Q4'

pdf_files = list()
image_files = list()
undefined_files = list()


for folder in os.listdir(files_dir):
    for files in os.listdir(files_dir + '\\' + folder):
        if ('.jpg' in files) or ('.JPG' in files) or ('.jpeg' in files) or ('.JPEG' in files) or ('.png' in files) or ('.PNG' in files):
            image_files.append(files_dir + '\\' + folder + '\\' + files)
            
#converting images to pdf files
for images in image_files:
    image = Image.open(images,mode="r")
    im = image.convert("RGB")
    im=im.rotate(270, expand=True)
    im.save(images.split(".")[-2] + ".pdf",mode="r")
    
for folder in os.listdir(files_dir):
    for files in os.listdir(files_dir + '\\' + folder):
        if '.pdf' in files:
            # pdf_files.append(files_dir + '\\' + folder + '\\' + files)
            filename = files_dir + '\\' + folder + '\\' + files
            copyfile(filename, files_dir + "\\1\\" + files)
        else:
            # JPG VEYA BAŞKA FORMATTA GÖNDERENLER
            undefined_files.append(files_dir + '\\' + folder + '\\' + files)
    
    
print("\n image files: \n")
print(*image_files, sep = "\n")
print("\n undefined files: \n")
print(*undefined_files, sep = "\n")

print(f" total image files = {len(image_files)}, total undefined_files = {len(undefined_files)}")