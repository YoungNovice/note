### jvm 参数类型

###### 标准参数
 -help -server -client
 -version -showversion
 -cp -classpath
eg: java -version

###### X参数
-Xint 解释执行
-Xcomp 第一次使用就编译成本地代码
-Xmixed 混合模式 jvm自己决定是否编译成本地代码
eg : java -Xint -version			

###### XX参数
非标准化参数
* Boolean类型	格式: -XX:[+-]<name>表示启用或着禁用name属性
eg : -XX:+UseConcMarkSweepGC
     -XX:+UseG1GC

* 非boolean类型 格式: -XX:<name>=<value>表示name属性的值是value
eg : -XX:MaxGCPauseMillis=500 GC最大停顿时间500毫妙
     -XX:GCTimeRatio=19

-Xms -Xms 表示jvm最大内存和最小内存 他们虽然是X开头 但是他们是XX参数
-Xms 等价于 -XX:InitialHeapSize
-Xmx 等价于 -XX:MaxHeapSize
-Xss 等价于 -XX:ThreadStackSize


### 查看JVM运行时参数
-XX:+PrintFlagsInital 打印初使参数 
-XX:+PrintFlagsFinal 打印最终参数 
-XX:+UnlockExperimentalVMOptions 解锁实验参数
-XX:+UnlockDiagnosticVMOptions 解锁珍断参数
-XX:+PrintCommandLineFlags 打印命令行参数

java -XX:+PrintFlagsFinal -version

### jps 专门用来查看java进程的工具
jps -l


### jinfo 查看一些信息的
jinfo -flag MaxHeapSize [pid]
jinfo -flags [pid]

### jstat 查看jvm统计信息
类装载
垃圾收集
JIT编译

### 导出内存映象文件
1.
-XX:HeapDumpOnOutOfMemoryError
-XX:HeapDumpPath=./

2 使用jmap导出

