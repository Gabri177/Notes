# Stata

* Ladder + var
    * 看在什么情况下 var变量可以为正态分布
* gladder
    * 和上面的命令相同, 但是是用图形化的方式进行展现
* Tab 
    * 对于分类变量 可以加 `,plot` 后面会根据不同的占比进行简单的星点图
* tab2 var1 var2
    * 对两个变量进行联表分析 

* Tab2 var1 var2, col row
    * 按照行列输出百分比
* Tab1 var1 var2 var3 ...
    * 进行多个变量的表格展示
* Graph twoway line var1 var2 var3
    * 曲线标绘图
    * 意思是按照var3 分别对var1 和 var2 进行绘图
*  twoway connected var1 var2
    * 和上面类似 但是每个点被加重, 是连线图
* graph box var1, over (var2)
    * 箱线图
* graph hbox var1, over (var2)
    * 横向的箱线图
* ranksum var1, by(var2)
    * 两个独立样本差异性的检验
    * 原假设是不存在显著差异
* signtest var1 = var2
    * 两个相关样本的检验
* kwallis var1, by(var2)
    * 多独立样本检验 是否来自同一分布的总体
* oneway 因变量 自变量
    * 单因素方差分析
* anova 因变量 自变量1 自变量2....
    * 多因素方差分析

> 在协方差分析中 连续变量前面要加 `c.`

* anova 因变量 自变量1 自变量2 ... , repeat
    * 重复测量方差分析

## 相关分析

* Cor var1 var2 var3 ...
    * correlate 相关分析
* pwcorr
    * 显示所有成对相关系数
* spearman
    * 等级相关系数
* ktau
    * 肯德尔相关系数





























 