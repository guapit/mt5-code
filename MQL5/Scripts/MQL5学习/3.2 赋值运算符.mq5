#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
   //  =   将右侧的表达式结果赋值给变量
   int a = 10;
   // +=   将左侧的变量原来的数值和右侧的赋值进行相加
   // a += 1; // a = a + 1;
   // Print("现在a的值是: " + string(a)); 
   a += 10; // a = 10 + 10;
   // Print("现在a的值是: " + string(a)); 
   
   // -=   将左侧的变量原来的数值和右侧的赋值进行相减
   a = 5;
   a -= 2; // a = 5 - 2
   // Print("现在a的值是: " + string(a));
   
   
   // *=   将左侧的变量原来的数值和右侧的赋值进行相乘
   a = 2;
   a *= 3; // a = 2 * 3
   // Print("现在a的值是: " + string(a));
   
   
   // /=   将左侧的变量原来的数值和右侧的赋值进行相除
   
   a = 4;
   a /= 2; // a = 4 / 2
   // Print("现在a的值是: " + string(a));
   
   
   // %=   将左侧的变量原来的数值和右侧的赋值进行求模运算
   a = 100;
   a %= 60; // a = 100 / 60
   Print("现在a的值是: " + string(a));
   
   // 将原来变量里面的值,经过右侧运算以后,返回给变量
   
  }