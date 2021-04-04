## Steps

1. Build ``` docker-compose build ```
2. Run ``` docker-compose up -d ```

## 啟動 letsencrypt

1. into shell ``` docker exec -it {{ container_name }} sh ```
2. init letsencrypt ``` certbot --nginx -d yourdomain.com -d www.yourdomain.com ```



