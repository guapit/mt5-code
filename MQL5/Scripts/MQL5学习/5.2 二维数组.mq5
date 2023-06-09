#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

void OnStart()
  {
    // --- 二维数组 --- //
    
    // create 创建二维数组
    int arr[3][2] ={
      {1, 2}, // 0 row
      {3, 4}, // 1 row
      {5, 6}  // 2 row
    // 0  1
    };
    
    // select 查询指定下标的元素值
    Print("第一行的第一列的元素值: " + string(arr[0][0]));
    Print("第一行的第二列的元素值: " + string(arr[0][1]));
    
    Print("第二行的第一列的元素值: " + string(arr[1][0]));
    Print("第二行的第二列的元素值: " + string(arr[1][1]));
    
    Print("第三行的第一列的元素值: " + string(arr[2][0]));
    Print("第三行的第二列的元素值: " + string(arr[2][1]));
    
    
    // set 修改指定下标的元素值
    Print("第二行的第二列的元素值: " + string(arr[1][1]));
    arr[1][1] = 10;
    Print("修改后, 第二行的第二列的元素值: " + string(arr[1][1]));
    
    
    // 获得数组的长度
    int size = ArraySize(arr);
    // 二维数组的总元素数长度
    Print("arr二维数组的长度: " + string(size));
    
    // 获取行数,和列数
    int arr2[4][3] = {
      {1, 2, 3},
      {4, 5, 6},
      {7, 8, 9},
      {10, 11, 12}
    };
    int row_size = ArrayRange(arr2,0);
    Print("arr2数组的一维长度: " + string(row_size));
    int column_size = ArrayRange(arr2,1);
    Print("arr2数组的二维长度: " + string(column_size));
    
    // 动态二维数组
    // 一维长度可以省略
    // 二维的长度必须写
    // 行数据可以缺省
    int arr3[][3] = {
      {1, 2, 3},
      {4, 5, 6},
      {7, 8}
    };
    Print("第三行第三列的元素值: " + string(arr3[2][2]));
    
    // 二维数组溢出
    /*
    int arr4[][3] = {
      {1, 2, 3},
      {4, 5, 6, 10},
      {7, 8}
    };
    */
    
    // 二维数组越界
    int arr5[3][3] = {
      {1, 2, 3},
      {4, 5, 6},
      {7, 8, 9}
    };
    // 注意不要读取数据超出范围
    // Print("测试: " + string(arr5[4][2]));
  }