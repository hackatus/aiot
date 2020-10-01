//Wi-Fi
#include "ESP8266WiFi.h"
#include "ESP8266WiFiMulti.h"
ESP8266WiFiMulti WiFiMulti;
#define wifi_id "TOTOLINK_AWIN"
#define wifi_pass "123698745"

//溫溼度感應器
#include "DHT.h"
#define lightPin A0 //讀取 光敏電阻 Data
#define dhtPin 12   //讀取DHT11 Data
#define dhtType DHT11 //選用DHT11   
DHT dht(dhtPin, dhtType); // 初始化 DHT 

//LED
const int ledPin=13;

void setup() {
  Serial.begin(115200);//設定鮑率115200
  dht.begin();//啟動DHT
  
  pinMode(ledPin,OUTPUT);//設定ledPin 的 GPIO 為OUTPUT
  
  WiFiMulti.addAP(wifi_id, wifi_pass);//添加AP(WiFi名稱 ,WiFi密碼)

  //如果連線成功會回傳 WL_CONNECTED，故以此確認連線狀態
  while(WiFiMulti.run() != WL_CONNECTED){
    Serial.println("wait..");
    delay(500);  
  }
}

void loop() {
  //以random的方式，設置LED的狀態
 
  int l = random(100)%2;
  if(l){
    digitalWrite(ledPin, HIGH); 
  }
  else{
    digitalWrite(ledPin,LOW);  
  }
  
  //int l = analogRead(lightPin); //讀取light value
  float h = dht.readHumidity();//讀取濕度
  float t = dht.readTemperature();//讀取攝氏溫度
  float f = dht.readTemperature(true);//讀取華氏溫度
  //檢查是否能收到DHT值
  if (isnan(h) || isnan(t) || isnan(f)) {
    Serial.println("無法從DHT傳感器讀取！");
    return;
  }
  Serial.print("光敏電阻: ");
  Serial.print(l);
  Serial.print("濕度: ");
  Serial.print(h);
  Serial.print("%\t");
  Serial.print("攝氏溫度: ");
  Serial.print(t);
  Serial.print("*C\t");
  Serial.print("LED: ");
  Serial.println(l);

  
  const uint16_t port =80;//資料庫的 PORT
  const char * host ="10.0.12.128"; //server 的IP
  Serial.print("連線至[");
  Serial.print(host);
  Serial.println("]");

  WiFiClient client; // 建立客戶端
  //檢查是否與WiFi連線
  if(!client.connect(host, port)){
      Serial.println("connect failed");
      Serial.println("wait 3 sec...");
      delay(3000);
      return;      
  }
  //連線至伺服端後 傳送資料至getData.php
  String url ="/aiot/addData.php?t="+String(t)+"&h="+String(h)+"&l="+String(l);
  client.print(String("GET ")+url+" HTTP/1.1\r\n"+
  "Host: "+host+"\r\n"+
  "Connection: close\r\n\r\n");

  Serial.println("connect closed");
  client.stop();
  delay(5000);//延時5秒
}
