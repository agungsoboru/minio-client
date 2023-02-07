#!/bin/bash


folder_name=$1


bucket_name=$2


if [ -z "$folder_name" ] || [ -z "$bucket_name" ]; then
    echo "Usage: upload_to_minio.sh <folder_name> <bucket_name>"
    exit 1
fi


mc cp -r $folder_name/ myminio/$bucket_name/$folder_name/


echo "Folder $folder_name berhasil di-upload ke dalam bucket $bucket_name di Minio S3"
