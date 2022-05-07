import os
import hashlib

os.chdir('/home/deo/blog/_posts/cryptography')

for count, f in enumerate(os.listdir()):
    f_name, f_ext = os.path.splitext(f)
    print(f_ext)
    hashname = hashlib.sha256(f_name.encode('utf-8')).hexdigest()
    os.rename(f_name+f_ext, f_name[0:11]+hashname[0:16]+f_ext)
