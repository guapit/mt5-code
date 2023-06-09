#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 创建数组
    int arr[] = {3, 2, 9, 10, 7, 8, 5, 4, 6};
    int size = ArraySize(arr);
     
    // 查询数组中的最大值
    int max = arr[0];
    for(int i = 0; i < size; i++)
    {
      if(arr[i] > max) // 9 > 3
      {
        max = arr[i]; // 9
      }
    }
    Print("max的值: " + string(max));
    
    // 查询数组中的最小值
    int min = arr[0];
    for(int i = 0; i < size; i++)
    {
      if(arr[i] < min) // 2 < 3
      {
        min = arr[i]; // 2
      }
    }
    Print("min的值: " + string(min));
    
  }