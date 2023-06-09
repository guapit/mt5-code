
#property copyright "Copyright 2022, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart()
  {
   // short: 短整型
   short s1 = 6666;
   // Print("s1的值=" + (string)s1);
   
   // ushort: 非负数短整型
   ushort s2 = 65535;
   // Print("s2的值=" + (string)s2);
   
   // int: 整型
   int a1 = 2147483647;
   // Print("a1的值=" + (string)a1);
   
   // uint: 非负数整型
   uint a2 = 4294967295;
   // Print("a2的值=" + (string)a2);
   
   // long: 长整型
   long l1 = 9223372036854775807;
   // Print("l1的值=" + (string)l1);
   
   // ulong: 非负数长整形
   ulong l2 = 18446744073709551615;
   Print("l2的值=" + (string)l2);
  }
