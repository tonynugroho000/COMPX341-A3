for file in `find ./src -type f -name "*.ts"`
do
    sed -i '1s/^/\/\/Tony Nugroho 1361528\n/' $file
done


