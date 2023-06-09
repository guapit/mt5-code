#property copyright "Copyright 2022, Author:阿龙."
#property link      "https://www.guapit.com"
#property description "MT5智能交易编程课程"
#property description "QQ: 8199231"
#property version   "1.00"

// 程序执行入口
void OnStart()
  {
    int a = 10;
    int b = 20;
    int c = sum(a, b);
    Print("c的值: " + string(c));
    
    double a2 = 3.14;
    double b2 = 6.18;
    double c2 = sum(a2, b2);
    Print("c2的值: " + string(c2));
    
    int arr[] = {5, 6, 4, 8, 1};
    int arr_size = size(arr);
    Print("arr_size的值: " + string(arr_size));
    
    type(10, 3.14, "阿龙好帅");
  }
// 数据类型模板
// 同样函数名,同样的功能,不同的数据类型
template <typename T>
T sum(T num1, T num2)
{
  T s = num1 + num2;
  return s;
}

// 数组的模板语法
template <typename A>
int size(A &arr[])
{
  int s = ArraySize(arr);
  return s;
}

// 多个数据类型
template <typename I, typename D, typename S>
void type(I it, D num, S str)
{
  if(typename(it) == "int")
  {
    Print("it的数据类型: " + typename(it));
  }
  Print("num的数据类型: " + typename(num));
  Print("str的数据类型: " + typename(str));
}
