#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"
// 1. 定义枚举类型
enum name {
  zhangsan, // 0
  lisi, // 1
  wangwu, // 2
  maliu,  // 3
};

// 1. 自定义枚举类型的顺序
enum name2 {
  zhangsan2=3, // 3
  lisi2=0, // 0
  wangwu2=1, // 1
  maliu2=2,  // 2
};

void OnStart()
  {
   name mingzi = 1;
   // Print("叫号: " + (string) mingzi);
   
   name2 mingzi2 = lisi2;
   Print("叫号2: " + (string) mingzi2);
   
  }