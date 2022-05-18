for file in `find ./src -type f -name "*.ts"`
do
    sed -i '1s/^/\/\/Test Comment\n/' $file
done


