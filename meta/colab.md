# Code Anywhere

B.ipynb make a PDF from A.ipynb if you want to build a report.
```
from google.colab import drive
drive.mount('/content/drive')

import os
os.chdir('/content/drive/MyDrive/')

!apt-get update
!apt-get install -y texlive-xetex
!xelatex -version
!jupyter nbconvert UD.ipynb --to pdf
ls .. # root folder
```
Here is my report for *rest*.
```
%%writefile sort.py
import subprocess
result = subprocess.check_output(["python", "rst.py"]).decode("utf-8")
shortx = subprocess.check_output(["sort", "-k2", "-nr"], input=result.encode("utf-8")).decode("utf-8")
print(shortx)

%run sort.py

!rm -rf ~/.pyperclip/
!rm -rf /usr/local/lib/python3.7/dist-packages/pyperclip-*.dist-info/
!rm -rf /usr/local/lib/python3.7/dist-packages/pyperclip/

import os, shutil
source_folder = os.path.join('/content/drive/MyDrive/App/colin/colin')
destination_folder = os.path.join('/content/drive/MyDrive/App/colin2')
shutil.move(source_folder, destination_folder)
```
Here is ZIP wrangling.
```
import os, sys
from google.colab import drive
drive.mount('/content/drive')
nb_path = '/content/notebooks'
os.symlink('/content/drive/MyDrive/App', nb_path)
sys.path.insert(0,nb_path)

from google.colab import files
files.download('dis.zip')

import zipfile
with zipfile.ZipFile('colin.zip', 'r') as zip_ref:
  zip_ref.extractall('colin')

%%writefile nn.py
import os
os.chdir('slate2')
os.rename("slate2 (1).zip", "slate2.zip")

!unzip -qq -o trans5.zip

%%writefile zi.py
import os, shutil, zipfile
zip_file_path = 'slate2/slate2.zip'
temp_dir = '/content/temp'
os.makedirs(temp_dir, exist_ok=True)
with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
    zip_ref.extractall(temp_dir)
files = os.listdir(temp_dir)
for file in files:
    if file.endswith('.xml') or file.endswith('.anc'):
        os.remove(os.path.join(temp_dir, file))
with zipfile.ZipFile(zip_file_path, 'w') as zip_ref:
    for file in files:
        file_path = os.path.join(temp_dir, file)
        if file.endswith('.txt'):
            zip_ref.write(file_path, file)
shutil.rmtree(temp_dir)

%%writefile zy.py
import os, zipfile
folder_path = '/content/drive/MyDrive/App/trans/disi'
output_path = '/content/drive/MyDrive/App/trans/dis.zip'
with zipfile.ZipFile(output_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
  for root, dirs, files in os.walk(folder_path):
    for file in files:
      file_path = os.path.join(root, file)
      zipf.write(file_path, os.path.relpath(file_path, folder_path))
```
