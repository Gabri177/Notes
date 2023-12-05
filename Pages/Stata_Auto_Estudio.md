# Stata
## 变量的命名
最多32个字符，A～Z， 0～9，_
## 取值类型
· 字符型数据（字母或特定含义的数据）
·数值型数据（整数或浮点）
·缺失数据
## 数据横向合并
merge命令
> merge 1:1 变量名 数据集名
## 数据纵向合并
append
## 数据交叉合并应用
joinby
> joinby 组内交叉变量名 using 变量名
cross
> cross using 变量名
## 数据抽取
sample 
> Sample # [if][in][,count by (groupvars)]
> Sample命令随机从内存里的数据中抽取样本 #是样本容量
keep
> keep if 条件 
> 对数据集进行筛选
## Stata绘图简介
> graph twoway scatter 变量1   变量2
### 绘图的分类
1. 直方图
2. 扇形图
3. 条形图
4. 散点图
> 两个连续变量
> [twoway] scatter varlist [if][in][weight][,options]
> 如果命令后紧跟着有两个变量名，默认第一个变量为y轴变量。
> 如果命令后紧跟不止一个变量名，则除最后一个变量外为y轴。
* 散点的设定：散点形状，颜色，大小等
$\:\:\:$散点的形状msymbol(symbolstylelist)
> 例如：scatter 变量1，变量2.... ，msymbol（O X p）
$\:\:\:$散点的颜色mcolor（colorstylelist）
> scatter var1, var2... , mcolor(color_name)
$\:\:\:$散点的大小msize（markersizestylelist）
> scatter var1, var2... ,msize(medium, small)
* 散点标签的设定
$\:\:\:$散点标签选项（marker_label_options)
> scatter var1, var2..., mlabel(var_list) 
``` 
图像具体的点与对应变量的数据进行关联
```

* 点图
> 	dotplot var1... 

6. 直线图
7. 数据拟合图
8. ……
### 图像的导出
graph export 文件名.后缀名

### 数据的震荡

因为数据太过密集而出现的重合现象造成观察不便，所以要进行数据震荡，使得重合的点位能稍稍分开`jitter()`我们通过这个命令来震荡数据，括号中写数字，表明震荡程度占绘图区的百分比

### 坐标轴尺度选项组





---

# Estudio de Stata en Master

## Extensiones y tipos de archivo

| Extension |    Tipo de archivo    |
| :-------: | :-------------------: |
|   .dta    |   archivos de datos   |
|    .do    | Archivos de sintaxis  |
|   .ado    | programas de comandos |
|   .hlp    |   Archivos de ayuda   |
|   .gph    |        grafico        |
|   .scml   |     Archivos log      |

> **只能用小写字母写代码, 不然会报错**













































