#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // 升序排列(从小到大) -> 2, 3
    int arr[] = {3, 2};
    if(arr[0] > arr[1]) // 3 > 2 ?
    {
      // 临时变量 保存原来的值
      int temp = arr[0];
      arr[0] = arr[1]; // 2
      arr[1] = temp; // 3
    }
    Print("arr的序号0的元素值: " + string(arr[0])); 
    Print("arr的序号1的元素值: " + string(arr[1]));
    
    // 降序排列(从大到小) -> 3, 2
    int arr2[] = {2, 3};
    if(arr2[0] < arr2[1]) // 2 < 3 ?
    {
      //临时变量 保存原始值
      int temp = arr2[0]; // 2
      arr2[0] = arr2[1]; // 3
      arr2[1] = temp; // 2
    }
    Print("arr2的序号0的元素值: " + string(arr2[0])); 
    Print("arr2的序号1的元素值: " + string(arr2[1]));
  }