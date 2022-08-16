# ansible_vuls
1.Ôansible·þÎÆ²à¼Ó¼±¸°²װvuls·þÎÆµÄosts
# cat /etc/ansible/hosts 
[vuls]
172.26.37.140 ansible_ssh_user=root ansible_ssh_pass='123456'



´´½¨֤Ê
# ssh-keygen -t rsa

¿½±´֤Êµ½ɨÃ¶Ôóñ# for i in localhost 172.26.37.140 172.26.37.204 ;do ssh-copy-id -i .ssh/id_rsa.pub $i;done


