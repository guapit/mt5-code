#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 1. 简单输出函数: Print
    string str = "我爱C++";
    int i = 666;
    Print("Hello World! ", "我叫阿龙, ",str, i);
    
    // 2. 格式化输出函数: PrintFormat or  printf
    printf("Hello World! %i 我叫阿龙",i);
    // 整型
    printf("int类型: %i", 10086);
    printf("int类型: %d", 10010);
    printf("int类型: %ld", 10000); // l 小写L
    printf("int类型: %I32d", 2100000000); // I 大写的i
    printf("uint类型: %u", -10086);
    
    printf("short类型: %hd", 32000);
    printf("ushort类型: %hu", 65535);
    
    printf("long类型: %lld", 100860000000); // l 小写L
    printf("long类型: %I64d", 100860000000); // I 大写的i
    
    printf("ulong类型: %llu", 100860000000); // l 小写L
    printf("ulong类型: %I64u", 100860000000); // I 大写的i
    
    printf("float类型: %f", 3.1715926); // 输出完整的单精度类型
    printf("float类型: %.7f", 3.1715926888); // 截取指定位数
    printf("float类型: %.f", 3.1715926888); // 输出整数
    
    printf("e类型: %e", 3.1715926888);
    printf("e类型: %.20e", 3.171592688800000001);
    
    printf("string类型: %s", "感谢各位老板的一键三连!");
    
    printf("八进制类型: %o", 10); // o 是大写的O
    
    printf("八进制类型: %x", 12); // x 是大写的 X
    
    
    
    
    
    
    
    

    

  }
