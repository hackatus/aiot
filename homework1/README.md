# 作業一
將 https://startbootstrap.com/themes/sb-admin-2/ 主題下載，並將當中的圖置掉掉。


![Alt text](/homework1/1.png?raw=true "Optional Title")

## 前端
1. 點選Free Download  下載 startbootstrap-sb-admin-2-gh-pages.zip
2. 解壓縮放至xampp的 htdocs 目錄
![Alt text](/homework1/2.png?raw=true "Optional Title")

3. 開啟網址(http://localhost/aiot/homework1/bootstrap/)確認是否運作
![Alt text](/homework1/3.png?raw=true "Optional Title")


## DB 匯入
1. 進入xampp phpadmin 管理頁面，建立db aiotdb
![Alt text](/homework1/4.png?raw=true "Optional Title")

2. 點選aiotdb，並點選欲匯入的檔案(sensors.sql)
![Alt text](/homework1/5.png?raw=true "Optional Title")

3. 確認資料是否正確
![Alt text](/homework1/6.png?raw=true "Optional Title")

    
## 後端程式(PHP)
1. 新增db使用者，讓php能連結db
![Alt text](/homework1/7.png?raw=true "Optional Title")

2. 撰寫getData.php

3. 驗證是否印出資料
![Alt text](/homework1/8.png?raw=true "Optional Title")
