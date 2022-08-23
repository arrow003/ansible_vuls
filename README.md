## ansible install vuls
1.在ansible服务器侧添加准备安装vuls服务器的hosts

$ cat /etc/ansible/hosts 
```
[vuls]
172.26.37.140 ansible_ssh_user=root ansible_ssh_pass='123456'
```
2.下载ansible安装的playbook等文件

$ git clone git@github.com:arrow003/ansible_vuls.git

$ cd ansible_vuls

3.执行playbook（执行之前可以通过[vars]修改准备部署的目录

$ ansible-playbook ansible_vuls_install.yaml

说明：网络原因，CN可能一次无法成功

## vuls 更新cve等sqlite3库文件

执行tags fetch为仅更新sqlite3库文件

$ ansible-playbook ansible_vuls_install.yaml --tags "fetch" --list-tasks

$ ansible-playbook ansible_vuls_install.yaml --tags "fetch"


## vuls 添加扫描对象

1.配置与扫描对象连接

创建证书

$ ssh-keygen -t rsa

拷贝证书到扫描对象服务器

$ for i in localhost 172.26.37.140 172.26.37.204 ;do ssh-copy-id -i .ssh/id_rsa.pub $i;done

2.参考localhost.toml文件修改扫描参数

3.扫描

$ vuls scan -config=./localhost.toml

4.查看扫描报告

$ vuls report -config=./localhost.toml -format-json
