### jvm ��������

###### ��׼����
 -help -server -client
 -version -showversion
 -cp -classpath
eg: java -version

###### X����
-Xint ����ִ��
-Xcomp ��һ��ʹ�þͱ���ɱ��ش���
-Xmixed ���ģʽ jvm�Լ������Ƿ����ɱ��ش���
eg : java -Xint -version			

###### XX����
�Ǳ�׼������
* Boolean����	��ʽ: -XX:[+-]<name>��ʾ���û��Ž���name����
eg : -XX:+UseConcMarkSweepGC
     -XX:+UseG1GC

* ��boolean���� ��ʽ: -XX:<name>=<value>��ʾname���Ե�ֵ��value
eg : -XX:MaxGCPauseMillis=500 GC���ͣ��ʱ��500����
     -XX:GCTimeRatio=19

-Xms -Xms ��ʾjvm����ڴ����С�ڴ� ������Ȼ��X��ͷ ����������XX����
-Xms �ȼ��� -XX:InitialHeapSize
-Xmx �ȼ��� -XX:MaxHeapSize
-Xss �ȼ��� -XX:ThreadStackSize


### �鿴JVM����ʱ����
-XX:+PrintFlagsInital ��ӡ��ʹ���� 
-XX:+PrintFlagsFinal ��ӡ���ղ��� 
-XX:+UnlockExperimentalVMOptions ����ʵ�����
-XX:+UnlockDiagnosticVMOptions ������ϲ���
-XX:+PrintCommandLineFlags ��ӡ�����в���

java -XX:+PrintFlagsFinal -version

### jps ר�������鿴java���̵Ĺ���
jps -l


### jinfo �鿴һЩ��Ϣ��
jinfo -flag MaxHeapSize [pid]
jinfo -flags [pid]

### jstat �鿴jvmͳ����Ϣ
��װ��
�����ռ�
JIT����

### �����ڴ�ӳ���ļ�
1.
-XX:HeapDumpOnOutOfMemoryError
-XX:HeapDumpPath=./

2 ʹ��jmap����

