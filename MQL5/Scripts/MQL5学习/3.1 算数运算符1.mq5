#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 数学上的算术运算
    int jiandan = 5 + 5;
    // Print("结果: " + (string)jiandan);
    
    // 如果 + 在单独的数字的前面表示正号
    int a1 = +10;
    // Print("a1的值: " + (string)a1);
    
    // = 编程意义上表示赋值的,不是数学意义上等号
    // 右侧优先运算,得到的结果返回给左侧的变量
    int a2 = 10;
    a2 = a2 + 10; // 变量 = 10 + 10
    // Print("a2的值: " + (string)a2);
    
    // 同上方法的简写
    int a3 = 10;
    a3 += 10; // a3 = a3 + 10
    Print("a3的值: " + (string)a3);
    
    // bool
    bool bo1 = true;  // 1
    bool bo2 = false; // 0
    bool bo3 = bo1 + bo2;  // bo3 = 1 + 0
    // Print("bo3的值: " + (string)bo3);
    
    bool bo4 = false + false; // 0 + 0
    // Print("bo4的值: " + (string)bo4);
    
    // 字符串
    // + 表示2个以上的多个字符串向后拼接
    string str1 = "我叫阿龙, ";
    string str2 = "我喜欢编程, ";
    string str3 = "我还没有凸头!";
    
    string str4 = str1 + str2 + str3;
    // Print("str4的结果: " + (string)str4);
    
    string str5 = str1 + str1;
    Print("str5的结果: " + (string)str5);
  }