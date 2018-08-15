1、概念：
     用于管理java的多线程。线程的生命周期包括创建、就绪、运行、阻塞、销毁，当有大量的线程任务需要创建时，内存的开销就大了，此时，使用线程池，在一定程度上能够很好的缓解线程的大开销。
2、优势：
     (1)降低资源消耗。通过重复利用已创建的线程降低线程创建、销毁线程造成的消耗。
     (2)提高响应速度。当任务到达时，任务可以不需要等到线程创建就能立即执行。
     (3)提高线程的可管理性。线程是稀缺资源，如果入限制的创建，不仅会消耗系统资源，还会降低系统的稳定性，使用线程池可以进行统一的分配、调优和监控。
3、线程池的创建：
        new ThreadPoolExecutor(int corePoolSize, int maximumPoolSize,long keepAliveTime, TimeUnit unit,BlockingQueue<Runnable> workQueue,RejectedExecutionHandler handler)
     corePoolSize：      线程池维护线程的最少数量 （core : 核心）
     maximumPoolSize：   线程池维护线程的最大数量 
     keepAliveTime：     线程池维护线程所允许的空闲时间
     unit：               线程池维护线程所允许的空闲时间的单位
     workQueue：          线程池所使用的缓冲队列
     handler：            线程池对拒绝任务的处理策略
4、添加任务到线程池
      通过 execute(Runnable)方法被添加到线程池，任务就是一个 Runnable类型的对象，任务的执行方法就是 Runnable类型对象的run()方法。
    当一个任务通过execute(Runnable)方法欲添加到线程池时：
    如果此时线程池中的数量小于corePoolSize，即使线程池中的线程都处于空闲状态，也要创建新的线程来处理被添加的任务。
    如果此时线程池中的数量等于 corePoolSize，但是缓冲队列 workQueue未满，那么任务被放入缓冲队列。
    如果此时线程池中的数量大于corePoolSize，缓冲队列workQueue满，并且线程池中的数量小于maximumPoolSize，建新的线程来处理被添加的任务。
    如果此时线程池中的数量大于corePoolSize，缓冲队列workQueue满，并且线程池中的数量等于maximumPoolSize，那么通过 handler所指定的策略来处理此任务。
    也就是：处理任务的优先级为：
    核心线程corePoolSize、任务队列workQueue、最大线程maximumPoolSize，如果三者都满了，使用handler处理被拒绝的任务。
    当线程池中的线程数量大于 corePoolSize时，如果某线程空闲时间超过keepAliveTime，线程将被终止。这样，线程池可以动态的调整池中的线程数。
    unit可选的参数为java.util.concurrent.TimeUnit中的几个静态属性：NANOSECONDS、MICROSECONDS、MILLISECONDS、SECONDS。
     workQueue常用的是：java.util.concurrent.ArrayBlockingQueue
     handler有四个选择：
          ThreadPoolExecutor.AbortPolicy()：     抛出java.util.concurrent.RejectedExecutionException异常
          ThreadPoolExecutor.CallerRunsPolicy():     重试添加当前的任务，他会自动重复调用execute()方法
          ThreadPoolExecutor.DiscardOldestPolicy():     抛弃旧的任务
          ThreadPoolExecutor.DiscardPolicy():     抛弃当前的任务