#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"
#include <Tools/Sort.mqh>
void OnStart()
  {
    int arr[9] = {5, 4, 3, 6, 9, 7, 1, 8, 2};
    int size = ArraySize(arr);
    // max(arr);
    double arr2[] = {};
    double c = min(arr2);
    int d = min(arr);
    Print("当前类型: " + (string)c);
    Print("当前类型: " + (string)d);
    Print("当前类型: " + (string)search(arr,-1));
    //radixSort(arr);
    //printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
    //  0,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
    //  Print("结果: " + sum(1));
    //mergeSort2(arr,false);
    //printf("主循环次数：%i,排序后的结果：[%i, %i, %i, %i, %i, %i, %i, %i, %i]",
    //  0,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]);
    //  Print("结果: " + sum(1));
    int arr4[] = {5, 4, 3, 6, 9, 7, 1, 8, 2, 3, 1,1};
    int arr5[] = {5, 4, 3, 6, 9, 7, 1, 8, 2, 3, 1,1,10,6};;
    bucketSort(arr5,5);
    Print("结果: " + ArraySize(arr5));
    ArrayPrint(arr5);
   
   }
