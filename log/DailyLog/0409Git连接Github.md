# 0409 git连接github
## 1、得到SSH
## 1.1 输入 cd ~/.ssh,返回 "no such file or directory" 表明电脑没有ssh key，需要创建ssh key；
![生成SSH密钥的命令行界面](../picture/0409/1.png)
## 1.2 故在终端输入 ssh-keygen -t rsa -C “github账号名”；
![查询SSH文件所在位置](../picture/0409/2.png)
## 1.2 连续进行 3 次回车Enter（确认），得到如下截图中的信息即可； 
![查询SSH文件所在位置](../picture/0409/3.png)
按路径进入 .ssh，里面存储的是两个 ssh key 的秘钥，id_rsa.pub 文件里面存储的是公钥，id_rsa 文件里存储的是私钥，不能告诉别人。打开 id_rsa.pub 文件，复制里面的内容。
## 1.3 绑定ssh密钥
![4.png](../picture/0409/4.png)
![5.png](../picture/0409/5.png)
## 1.4 我们回到 Git bash上边，输入：ssh -T git@github.com
![6.png](../picture/0409/6.png)
## 1.5 git简单配置
将 name 最好和 GitHub 上边的一样，email 是一定要是注册 GitHub 的那个邮箱地址
这两个的顺序可以颠倒，没有固定的顺序。

git config --global user.name “gitname”
git config --global user.email “git邮箱”
![7.png](../picture/0409/7.png)
## 1.6 克隆仓库
将我们的github库克隆下来到本地电脑中，方便以后进行上传代码。
![8.png](../picture/0409/8.png)
接下来我们就开始选择文件存储地方了，在本地电脑中找到存储文件的地方，然后右键选择 Git Bash Here
![9.png](../picture/0409/9.png)
在终端输入 git clone 地址（这个地址就是刚刚库那个Code的上代码地址）
![10.png](../picture/0409/10.png)
## 1.7 git提交修改到github

git add . → 把修改「放进购物车」
git commit -m "..." → 把购物车里的东西「打包并写个标签」
git push origin main → 把这个打包好的包裹「寄到 GitHub 仓库」

