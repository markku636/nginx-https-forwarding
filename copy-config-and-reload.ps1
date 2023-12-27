$containerName = "certificate-centerlize-nginx"
$localDir = (Get-Location).Path
$nginxConfigPath = "$localDir\nginx.conf"
$nginxUpstreamConfig = "$localDir\upstream.conf"

docker cp "${nginxConfigPath}" "${containerName}:/etc/nginx/conf.d/default.conf"
docker cp "${nginxUpstreamConfig}" "${containerName}:/etc/nginx/conf.d/upstream.conf"
docker exec $containerName nginx -s reload