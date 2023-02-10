# minio-client

cara upload file / folder / directory ke s3 minio menggunakan minio client 

cara nya 

download minio client dulu taruh di /usr/bin/

wget https://dl.min.io/client/mc/release/linux-amd64/mc

chmod +x mc

tambahkan kredesial minio S3 

#note port 33616 adalah port api dari minio bukan port console web nya gunakan user yang sama ketika menggunakan kredensial dan menggunakan minio

mc config host add myminio http://localhost:33616 AKIAIOSFODNN7EXAMPLE wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY


./backup_minio.sh <folder_name> <bucket_name>

seluruh isi folder akan di upload ke minio dengan nama-bucket dan di buatkan folder juga di bucket s3 minio nya

untuk mengupload file.zip atau yg lain gunakan command minio saja contoh

mc cp file.zip myminio/mybucket/
