#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
   // string: 字符串类型
   string str1 = "我叫阿龙";
   // Print("str1的值: " + str1);
   // 空字符串
   string str2 = "";
   // Print("str2的值: " + str2);
   
   // NULL 表示空;
   string str3 = NULL;
   
   // 拼接连接字符串
   string str4 = "我叫阿龙, " + "我的头还没有凸!";
   Print("str4的值: " + str4);
  }
