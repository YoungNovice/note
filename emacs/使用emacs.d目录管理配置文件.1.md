emacs ����ʱ���ȡ.emacs�е�LISP�����ʼ������
����ʹ������ļ����û��ù����û���

ʹ��.emacs.dĿ¼����Emacs��ʼ�������ļ�, ��������:
��.emacs�ļ��м���
;;this is the main Emacs initalization file .emacs

(add-to-list 'load-path(expand-file-name "~/.emacs.d"))

(require 'feature_1)

����:
��.emacs�м����load-path�����ļ�·����, �����Լ��������ļ�
��Щ�����ļ����԰��չ��ܷ������
eg: ��.emacs.d�з��� feature_1.el, feature_2.el, feature_3.el
ע��Ҫ��ÿ�������ļ���ʹ��provide�������ṩ��Feature
���� feature_1.el��������ļ�, ���ṩfeature_1����
����.emacs��Ҫ��ʹ��require����Ҫ���feature_1
��ôҪ��feature_1�м���provide
;; this is my Emacs customization file feature_1.el providing feature_1

(provide 'feature_1)

;; customization code....

����Feature��require��provide����ϸ���ܲο�Emacs��GNU�ٷ��ĵ���15.7 Features
������һ�䣬Ŀǰ�ܶ�Linux�µĿ�Դ�������֧�����֣�.xxx.dĿ¼�ķ�ʽ���������ļ�������xxx�������ص�����

