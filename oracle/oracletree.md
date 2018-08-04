select t.parentid, t.subid, level
from a_test t
start with t.subid = '7'
connect by subid = prior parentid
order by level desc

解释：
查询起始条件是 subid='7'的列
同时查询当前行的subid是上一行的parentid
可看出prior后面的东西很重要
后面如果跟的是父结点则是向上查找
后面如果跟的是子结点则是向下查找

start with 子句 遍历起始接点 如果要查父结点 这里条件用子结点的列 反之

connect by 子句 连接条件 关健词prior
prior跟父结点列parentid放在一起就是往父结点方向遍历
prior跟子结点subid放在一起就是往子结点方向遍历