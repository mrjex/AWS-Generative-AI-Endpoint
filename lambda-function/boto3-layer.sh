ORIGINAL_FOLDER="python"
ZIPPED_FOLDER="boto3_layer"

pip install boto3 -t "${ORIGINAL_FOLDER}/"
zip -d "${ORIGINAL_FOLDER}.zip" "${ORIGINAL_FOLDER}"
mv "${ORIGINAL_FOLDER}.zip" "${ZIPPED_FOLDER}.zip"