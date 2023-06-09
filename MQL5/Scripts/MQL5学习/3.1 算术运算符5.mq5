#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    int a = 10;
    // 前置递增
    ++a; // 10 + 1 ,对整数的变量自增 + 1
    // Print("当前a的值是: " + string(a));
    
    // 后置递增
    a++; // 也是对整数类型 自增 + 1
    // Print("当前a的值是: " + string(a));
    
    // 前置递增 先进行变量 + 1, 进行后面的表达式运算
    int a1 = 10;
    int b1 = ++a1 * 10; // (10 + 1) * 10 = 110
    //Print("当前a1的值是: " + string(a1)); // 结果: 11
    //Print("当前b1的值是: " + string(b1)); // 结果: 110
    
    // 后置递增 先进行表达式运算,在进行变量 + 1
    int a2  = 10;
    int b2 = a2++ * 10; // a2原来就是10,那么 b2 = 10 * 10, 最后变量a2 进行自增 + 1
    //Print("当前a2的值是: " + string(a2)); // 结果: 11
    //Print("当前b2的值是: " + string(b2)); // 结果: 110
    
    
    //前置递减
    int a3 = 10;
    --a3; // 10 - 1
    // Print("当前a3的值是: " + string(a3));
    
    //后置递减
    int a4 = 10;
    a4--;
    //Print("当前a4的值是: " + string(a4));
    
    //前置递减 先进行变量 - 1, 在进行后面的表达式运算
    int a5 = 10;
    int b5 = --a5 * 10; // (10 - 1) * 10
    //Print("当前a5的值是: " + string(a5)); // 结果: 9 
    //Print("当前b5的值是: " + string(b5)); // 结果: 90
    
    // 后置递减 先进行表达式运算,后进行变量 - 1
    int a6 = 10;
    int b6 = a6-- * 10; // 10 * 10 , 然后变量 - 1      
    Print("当前a6的值是: " + string(a6)); // 结果: 9 
    Print("当前b6的值是: " + string(b6)); // 结果: 100
  }