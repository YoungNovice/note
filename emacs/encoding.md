打开文件出现乱码时，可以尝试修改字符的编码
M-x revert-buffer-with-coding-system
然后输入对应编码，如：utf-8 或者 chinese-gbk。

在保存的时候还可以指定文件的保存编码
M-x set-buffer-file-coding-system
