mkdir dataset
cd dataset
mkdir ag
cd ag
mkdir annotations
cd annotations

python - <<EOF
import gdown

# Mapping of file IDs to filenames
files = {
    "frame_list.txt": "1_2id1wIm9NzUkswyfwi4ww0Y-vhP7Eke",
    "object_bbox_and_relationship.pkl": "1BMMOLmknLw3LhOrsLUwn4vgt83l4I2cy",
    "object_classes.txt": "1p6wBRrPO34_Tt3_z8h9A7rO5R7Ryy3hd",
    "person_bbox.pkl": "1w01lTR8fJTL1XO5X_qK7uVT1vk54njZn",
    "relationship_classes.txt": "1TNl9TWBM1uvarbEKqC5df99Rp1rgGjKE"
}

# Download each file using gdown
for filename, file_id in files.items():
    url = f"https://drive.google.com/uc?export=download&id={file_id}"
    print(f"Downloading {filename}...")
    gdown.download(url, filename, quiet=False)

print("Download complete!")
EOF