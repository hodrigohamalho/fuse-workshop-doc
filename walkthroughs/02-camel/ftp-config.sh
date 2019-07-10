    1  yum update -y
    2  yum install vsftpd
    3  vi /etc/vsftpd/vsftpd.conf
    4  systemctl vsftpd restart
    5  systemctl restart vsftpd
    6  adduser ramalho
    7  passwd ramalho
    8  vi /etc/vsftpd/vsftpd.conf
    9  mkdir /var/fuse-workshop
   10  cd /var/fuse-workshop/
   11  ls
   12  mkdir evals01
   13  for i in {0..50}; do echo $i; done
   14  adduser evals01
   15  adduser evals02
   16  adduser evals03
   17  adduser evals04
   18  adduser evals05
   19  adduser evals06
   20  adduser evals07
   21  adduser evals08
   22* adduser evals10
   23  for i in {10..50}; do adduser evals$i; done
   24  cat /etc/passwd
   25  passwd
   26  man passwd
   27  usermod --password Password1 evals01
   28  usermod --password Password1 evals02
   29  usermod --password Password1 evals03
   30  usermod --password Password1 evals04
   31  usermod --password Password1 evals05
   32  usermod --password Password1 evals06
   33  usermod --password Password1 evals07
   34  usermod --password Password1 evals09
   35  usermod --password Password1 evals08
   36  for i in {10..50}; do usermod --password Password1 evals$i; done
   37  vi /etc/vsftpd/vsftpd.conf
   38  ls
   39  cd ..
   40  ll
   41  groups
   42  groupadd workshop
   43  usermod -a -G workshop evals01
   44  usermod -a -G workshop evals02
   45  usermod -a -G workshop evals03
   46  usermod -a -G workshop evals04
   47  usermod -a -G workshop evals05
   48  usermod -a -G workshop evals06
   49  usermod -a -G workshop evals07
   50  usermod -a -G workshop evals08
   51  usermod -a -G workshop evals09
   52  for i in {10..50}; do usermod -a -G workshop evals$i; done
   53  cd fuse-workshop/
   54  ls
   55  for i in {10..50}; mkdir evals$i; done
   56  for i in {10..50};do mkdir evals$i; done
   57  mkdir evals02
   58  mkdir evals03
   59  mkdir evals04
   60  mkdir evals05
   61  mkdir evals06
   62  mkdir evals07
   63  mkdir evals08
   64  mkdir evals09
   65  ll
   66  chown evals01:workshop evals01
   67  for i in {1..10}; do printf -v $i "%02d"; done
   68  for i in {1..10}; do printf $i "%02d"; done
   69  for i in {1..10}; do printf $i "%02d" $i; done
   70  for i in {1..10}; do printf -v $i "%02d" $i; done
   71  for i in {1..10}; do printf  "%02d" $i; done
   72  ll
   73  history
   74  for i in {10..50}; chown evals$i:workshop evals$i; done
   75  for i in {10..50};do chown evals$i:workshop evals$i; done
   76  ll
   77  chown evals02:workshop evals02
   78  chown evals03:workshop evals03
   79  chown evals04:workshop evals04
   80  chown evals05:workshop evals05
   81  chown evals05:workshop evals06
   82  chown evals06:workshop evals06
   83  chown evals07:workshop evals07
   84  chown evals08:workshop evals08
   85  chown evals09:workshop evals09
   86  ll
   87  sudo usermod -d /var/fuse-workshop/evals01 evals01
   88  for i in {10..50};do usermod -d /var/fuse-workshop/evals$i evals$i; done
   89  sudo usermod -d /var/fuse-workshop/evals02 evals02
   90  sudo usermod -d /var/fuse-workshop/evals03 evals03
   91  sudo usermod -d /var/fuse-workshop/evals04 evals04
   92  sudo usermod -d /var/fuse-workshop/evals05 evals05
   93  sudo usermod -d /var/fuse-workshop/evals06 evals06
   94  sudo usermod -d /var/fuse-workshop/evals07 evals07
   95  sudo usermod -d /var/fuse-workshop/evals08 evals08
   96  sudo usermod -d /var/fuse-workshop/evals09 evals09
   97  ll
   98  cat /etc/passwd
   99  ll
  100  sudo chkconfig --level 345 vsftpd on
  101  systemctl restart vsftpd
  102  history