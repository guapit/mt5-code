#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 1. char 转 string
    string str1 = CharToString(65);
    printf("str1的值: %s", str1);
    
    // 2.1 double 转 string
    string str2 = DoubleToString(3.1415926, 2);
    printf("str2的值: %s", str2);
    
    // 2.2 string 转 double
    double d1 = StringToDouble("3.1415926");
    printf("d1的值: %s", DoubleToString(d1, 2));
    
    // 2.3 重置浮点型精度 double -> double
    double d2 = NormalizeDouble(2.7182818,4);
    printf("d1的值: %.4f", d2);
    
    // 3.1 int -> string 01 01 02 112
    string str3 = IntegerToString(1, 4, '0');
    printf("str3的值: %s", str3);
    
    // 3.2 转换常量值
    string str4 = IntegerToString(ORDER_TYPE_SELL);
    printf("str4的值: %s", str4);
    
    // 4.1 Enum -> string
    enum Gender {Male,female};
    Gender g = 0;
    printf("g的值: %s", EnumToString(g));
    printf("sell的值:  %d",ORDER_TYPE_SELL);
    
    // 5.1 Time -> string
    string str5 = TimeToString(D'2023.01.01 08:30:58',TIME_MINUTES);
    printf("str5的值:  %s",str5);
    
    // 5.2 string -> Time
    datetime dt1 = StringToTime("2023.01.01 08:30:55");
    printf("dt1的值:  %s",(string)dt1);
    
    datetime dt2 = StringToTime("08:30:55");
    printf("dt2的值:  %s",(string)dt2);
    
    // 6.1 颜色类型转换成带有透明效果的值
    uint alpha = ColorToARGB(C'255,0,0', 50); // 50 / 225 = 19.8%
    
    // 6.2 color -> string
    string str6 = ColorToString(C'0,0,255',true);
    printf("str6的值:  %s",str6);
    
    // 6.3 string -> color
    color clr = StringToColor("255,0,0");
    printf("clr的值:  %s",(string)clr);
    
    // 7. 格式化字符串
    string strf = StringFormat("点赞数: +%d, 感谢各位老板一键三联,祝各位老板发大财!", 66);
    printf("strf的值:  %s",strf);
  }

