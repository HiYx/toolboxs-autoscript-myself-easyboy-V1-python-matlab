# utilForFormat
matlab学位论文绘图辅助工具

(详细介绍参考: https://www.jianshu.com/p/ec82162d20d4)


运行demo.m即可，用的时候直接拷贝相应的代码段即可。

复制图片前需要保证copy options已选择：
- preserve information
- transparent background
- match figure screen size

实现了：
1. 固定宽度设置（这样就不用缩放了，直接贴到word里，那么字体就不会变大变小）
2. 自动样式（多个不同的线在同一图中时，不需要手动设置逐个线的样式了）
3. 二维图固定宽度时可能在两侧出现空白，写代码解决了。
4. 使用情况统计功能：
数据是公开的，实时更新，大家可以在http://new.cnzz.com/v1/login.php?siteid=1254502417 里查看（访客分析->地区\运营商）。如果你不想被统计，可以关闭该功能，很简单，把
```java
utilForFormat = UtilForFormat('on');
```
里的on改为off即可。


效果和说明如图：
![image.png](http://upload-images.jianshu.io/upload_images/230469-d7aa63ef5d800cd9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
