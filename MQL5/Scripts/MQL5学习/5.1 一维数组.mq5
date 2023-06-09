#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
  // --- 一维数组 --- //
  // 为什么下标是0开始: 1 - 0 = 1; 1 + 0 = 1;
  
  // 下标: 就是元素的身份证
  // 元素: 1, 2, 3, 4, 5
  // 下标: 0, 1, 2, 3, 4
  
  // create 创建一维数组
  int arr[5] = {1, 2, 3, 4, 5};
  
  // select 查询指定下标的元素值
  Print("当前0号下标的元素值: " + string(arr[0])); // 1
  Print("当前2号下标的元素值: " + string(arr[2])); // 3
  
  // 查询最后一个下标的元素值
  Print("当前4号下标的元素值: " + string(arr[4])); // 5
  
  // set 修改指定下标的元素值
  Print("当前1号下标的元素值: " + string(arr[1])); // 2
  arr[1] = 1;
  Print("修改后1号下标的元素值: " + string(arr[1])); // 1
  
  // 获取数组长度
  int size = ArraySize(arr);
  Print("arr的数组的长度: " + string(size)); // 5
  
  // 创建动态数组
  int arr2[] = {1, 2, 3, 4, 5, 6};
  
  // 获得动态数组的长度
  int size2 = ArraySize(arr2);
  Print("arr2的数组的长度: " + string(size2)); // 6
  
  // 如果元素的个数长度不足时,以默认值代替
  int arr3[5] = {1, 2, 3};
  Print("下标4号的元素值: " + string(arr3[4])); // 0
  Print("下标1号的元素值: " + string(arr3[1])); // 2
  
  // 错误: 数组溢出
  // int arr4[5] = {1, 2, 3, 4, 5, 6};
  
  // 错误: 数组越界
  int arr5[5] = {1, 2, 3, 4, 5};
  Print("下标6号的元素值: " + string(arr3[6]));
  }