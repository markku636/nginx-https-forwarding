$imageName = "certificate-centerlize-nginx"
docker build -t $imageName . 
$containerName="certificate-centerlize-nginx"
$port80="80:80"
$port443="443:443"
docker run -d --name $containerName --restart=always -p "${port80}" -p "${port443}" -v "E:\ftp-data\en-US:/var/www/us" -v "E:\ftp-data\de:/var/www/de"  $imageName 