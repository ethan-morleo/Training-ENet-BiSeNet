wget --keep-session-cookies --save-cookies=cookies.txt --post-data 'username=s317821@studenti.polito.it&password=Ethan-2001&submit=Login' https://www.cityscapes-dataset.com/login/
wget --load-cookies cookies.txt --content-disposition https://www.cityscapes-dataset.com/file-handling/?packageID=1
wget --load-cookies cookies.txt --content-disposition https://www.cityscapes-dataset.com/file-handling/?packageID=3
#creating dataset folder and unzip files
mkdir -p ./dataset/cityscapes/
mv gtFine_trainvaltest.zip ./dataset/cityscapes/
mv leftImg8bit_trainvaltest.zip ./dataset/cityscapes/
cd ./dataset/cityscapes/
#unzip and remove leftImg8bit
unzip leftImg8bit_trainvaltest.zip
rm ./leftImg8bit_trainvaltest.zip
#unzip and remove gtFine
unzip gtFine_trainvaltest.zip
rm ./gtFine_trainvaltest.zip
rm ./README
rm ./license.txt
cd ../../