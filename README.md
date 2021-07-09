# iOS-Project-Use-Unity

### 一、Unity 导出 Xcode 工程  
1.建议使用 Unity 2020 以及以后的版本
2.流程图：  
a.新建工程  
<img src="https://img2020.cnblogs.com/blog/276994/202107/276994-20210709140145954-660622143.png" style="zoom:50%" />
b.导入 3D 模型以及开发绑定 C# 脚本
<img src="https://img2020.cnblogs.com/blog/276994/202107/276994-20210709140507321-1116613241.png" style="zoom:50%" />
c.编译导出 Xcode 工程
<img src="https://img2020.cnblogs.com/blog/276994/202107/276994-20210709140607782-1057164566.png" style="zoom:50%" />

### 二、Unity 导出的 Xcode 工程生成 `UnityFramework.framework `  
1. `UnityFramework.framework ` 设置  
<img src="https://img2020.cnblogs.com/blog/276994/202107/276994-20210709141040573-1209935124.png" style="zoom:50%" />
2.编译 `UnityFramework.framework `  
<img src="https://img2020.cnblogs.com/blog/276994/202107/276994-20210709141351862-1549960780.png" style="zoom:50%" />

### 三、新建 Xcode 工程，引用 `UnityFramework.framework `  
1. 新建 Xcode 原生工程，将 `UnityFramework.framework ` 导入新工程（跟引用普通的三方 framework 一样，没有特别的操作）  
<img src="https://img2020.cnblogs.com/blog/276994/202107/276994-20210709141610012-1609252799.png" style="zoom:50%" />
2. 编写代码，将Unity模型展示在已有的 window 窗口上  
<img src="https://img2020.cnblogs.com/blog/276994/202107/276994-20210709141923715-1662633469.png" style="zoom:50%" />
3. 需要真机测试运行，如图：  
<img src="https://img2020.cnblogs.com/blog/276994/202107/276994-20210709142820606-1081778986.png" style="zoom:50%" />

### 四、更多资源  
1. Uinity 官方 wiki ：https://docs.unity3d.com/Manual/UnityasaLibrary-iOS.html
2. 官方示例：https://github.com/Unity-Technologies/uaal-example/blob/master/docs/ios.md
3. 以上demo工程源码：https://github.com/qiyer/iOS-Project-Use-Unity
