#training ENet on cityscapes dataset
cd ./PyTorch-ENet/
pip install -r requirements.txt
mkdir -p save/enet_train_cityscape
python main.py -m train --save-dir save/enet_train_cityscape/ --name enet_cityscapes --dataset cityscapes --dataset-dir ../dataset/cityscapes/
cd ../