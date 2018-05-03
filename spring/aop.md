* 切面  某个类
* 通知 before after round afterThrowing afterReturn
* 切点 被拦截的某个方法
* 连接点 一个判断条件
* 织入 生成代理的过程
* 引入 注解@DeclareParent 或者xml aop:declarparent
引入的原理其实并不复杂 在生成代理的时候多传递一个引入的接口可以了

