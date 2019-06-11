## Fixed Baseline System for CMRC cmrc2019

cmrc2019的原baseline代码结构有些冗杂, 故进行一定的改写工作.

### Note
- 增加cuda gpu的选择
- 将do_train与do_predict分离
- do_train中可以设值每一轮epoch后进行evaluate, 保证能取到最优epoch的模型, 当然也可以关掉, 此时会每个epoch均会覆盖掉以前的
- 添加了一定注释方便理解
- 改写了一些函数方便复用
- 将中文的上引号转换为英文双引号解决OOV问题
- 格式化了代码
