import os
from os.path import join
for root, dirs, files in os.walk('.'):
    for a_dir in dirs:
        print 'dir: %s' % a_dir
    for a_file in files:
        print 'file: %s' % a_file
