#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    int yu = 100 % 60;
    Print("当前余数的结果: " + string(yu)); // 结果: 40
    
    //滚滚红尘, 转逝千年,犹如昨日
    uint local = (uint)TimeLocal();
    Print("当前计算机的时间: " + string(TimeLocal()));
    // Print("当前计算机的过去的秒数: " + string(local));
    // 每日的小时是24, 1小时是60分钟, 1分钟是60秒;
    // 一天秒数是 24 * 60 * 60 = 86400秒
    uint today = local % 86400; // 得到当天过去的秒数
    // Print("今天过去的秒数" + (string)today);
    
    uint sec = today % 60; // 1分钟60秒
    // Print("当前分钟过去的秒数: " + string(sec));
    
    // uint min = today % 3600; // 这是当前一小时过去的秒数
    uint min = today / 60 % 60;
    // Print("当前分钟过去的分钟数: " + string(min));
    
    uint hour = today / 3600 % 24;
    // Print("当天过去的小时数: " + string(hour));
    
    Print("当前时间: " + string(hour) + ":" + string(min) + ":" + string(sec));
  }