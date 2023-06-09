
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart()
  {
    // float: 单精度类型
    // 单精度类型只保留小数点7位以内的有效数字,如果超出就进行四舍五入
    float f1 = 3.1415926535897932384626f;
    Print("f1的值 = " + (string)f1);
    
    // float f2 = 3.1415926535897932384626;
    // Print("f2的值 = " + (string)f2);
    
    // double: 双精度类型
    // 双精度类型只保留小数点15位以内的有效数字,如果超出就进行四舍五入
    double d1 = 3.1415926535897932384626;
    // Print("d1的值 = " + (string)d1);
    
    // 如果double类型,值加上"f",会强制转换成float.
    double d2 = 3.1415926535897932384626f;
    Print("d2的值 = " + (string)d2);
  }

