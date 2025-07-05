import os
import glob
import re

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    '''
    alist.sort(key=natural_keys) sorts in human order
    http://nedbatchelder.com/blog/200712/human_sorting.html
    (See Toothy's implementation in the comments)
    '''
    return [ atoi(c) for c in re.split(r'[0-9]*[-column-]([0-9]+)', text) ]

os.chdir(os.path.dirname(os.path.abspath(__file__)))
files = glob.glob("*.png")
files.sort(key=natural_keys)

for i in range(0,len(files)):
    newfile = '{}.png'.format(i)
    oldfile = files[i]
    os.rename (oldfile,newfile)
