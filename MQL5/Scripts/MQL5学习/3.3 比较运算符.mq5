#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
   // --- 比较运算符 --- //
   bool yuanfang = false;
   
   //  ==   左值是否相等于右值
   // yuanfang = 1 == 2;
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
    
   // yuanfang = 2 == 2; // int
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   // yuanfang = 2.0 == 2.2; // double
   // yuanfang = 2.21 == 2.2;
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   // yuanfang = "我叫元芳" == "我叫元方"; // string
   // yuanfang = "我叫元芳" == "我叫元芳"; // string
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   
   //  !=   左值是否不等于右值
   // yuanfang = 1 != 2; // true
   // yuanfang = 2 != 2; // false
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   //  <    左值是否小于右值
   // yuanfang = 1 < 2; // true
   // yuanfang = 3 < 2; // false
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   //  >    左值是否大于右值 
   // yuanfang = 2 > 1; // true
   // yuanfang = 2 > 3; //false
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   
   //  <=   左值是否小于或者等于右值
   // yuanfang = 1 <= 2; // 1 < 2 or 1 == 2, 其中一个条件满足即为true
   // yuanfang = 3 <= 2; // 3 < 2 or 3==2, 两个条件都不满足即为false
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   
   //  >=   左值是否大于或者等于右值
   // yuanfang = 3 >= 3; // 3 > 3 or 3 == 3,其中一个条件满足即为真
   // yuanfang = 4 >= 3; // 4 > 3 or 4 == 3 true
   // yuanfang = 4 >= 5; // 4 > 5 or 4 == 5 false
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   // 变量判断
   int a = 5;
   int b = 10;
   // yuanfang = a < b; // 5 < 10; 结果: true
   // Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
   
   yuanfang = a > b; // 5 > 10; 结果: false
   Print("元芳你怎么看? 大人,我觉得这个事是: " + string(yuanfang));
  
  }