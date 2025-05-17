
s
### run 

docker-compose build --no-cache

docker-compose up

# 停止並刪除所有相關容器
docker compose down --volumes --remove-orphans

# 重新 build image
docker compose build

# 啟動服務（可加 -d 背景執行）
docker compose up