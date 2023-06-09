#property copyright "Copyright 2022, 瓜皮猫工作室."
#property link      "https://www.guapit.com"
#property version   "1.00"

void OnStart()
  {
   // 1. 变量的名称不可以使用系统默认的关键字
   // int Print = 10;
   // Print(Print);
   
   // 2. 变量名只能由字母,下划线 _,或者数字组成
   int a = 10;
   int _ = 11;
   // int 2 = 10;  // 错误的例子
   
   // 3. 变量名称只能由字母 或者 下划线 _ 作为开头
   int abc = 12; // 纯字母
   int abc123 = 13; // 字母 + 数字
   int _abc123 = 14; // 下划线开头 + 字母 + 数字
   
   // int 123abc = 15; //错误的例子,变量名开头不可以使用数字
   
   int _123abc = 16; // 不建议这样使用
   
   // 4. 下划线约定俗成为私有变量, 程序员的默契
   string _author = "阿龙";
   // _author = "老王"; //不建议修改定义为私有变量的数值
   
   // 5. 变量名区分大小写
   int aaa = 17;
   int AAA = 18;
   int Aaa = 19;
   Print("aaa的值: " + aaa + ", AAA的值: " + AAA);
  }

