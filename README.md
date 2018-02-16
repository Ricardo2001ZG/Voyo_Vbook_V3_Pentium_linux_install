﻿# How to install debian 9 on Voyo Vbook V3 Pentium

1、story

2、<a href="#real article">real article</a>

3、<a href="#
Thanks">
Thanks</a>
<HR>

Yesterday I have found the unlock bios files of Voyo Vbook V3 Pentium.

Because of this bios,I can install any linux distributions on this laptop.



Last mouth,I found it on Voyo's english website.



![voyo_english_website](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/voyo_english_website.png)



In fact,there is no this file on its chinese website.(It looks like this year's Chinese Spring Festival Gala[2018].)


But when I click the link of "unlock bios",I found the file have been deleted.



![dropbox_delete_files](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/dropbox_delete_files.png)



Luckily,yesterday I found a file on <a href="http://freaktab.com/forum/tv-player-support/intel-based-tv-players/voyo-mini-pc/679508-voyo-v1-vmac-bios-upgrade">Voyo (V1) VMac BIOS upgrade</a>.



![user_from_freaktab](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/user_from_freaktab.png)



It's interesting that this file include V1 Mac,V3 and V3 pro's unlock bios files.



![files_in_unlock_bios_zip](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/files_in_unlock_bios_zip.png)


<a name="download"></a>
You can download this files on 

<strong>(These files have been included in this project,it's not necessary to download.)</strong>


<strong>International Users Recommend:</strong>

<a href="https://www.mediafire.com/file/21b6v1rj319248m/Apollo+Lake+AMI+BIOS+for+linux.zip">Mediafire Apollo Lake AMI BIOS for linux.zip</a>


<strong>Chinese Users Recommend:</strong>

<a href="https://pan.baidu.com/s/1dGkSaD7">百度网盘:Apollo Lake AMI BIOS for linux.zip</a>


<HR>

<a name="real article"></a>

Now let's begin the real article.


<strong>Prepare:</strong>

1、A Voyo Vbook V3 Pentium laptop.

2、One mug(must <strong>big</strong> enouth).

3、A bag of instant coffee.

4、Low-speed wireless network.(In fact,as fast as you can.)

5、debian-9.3.0-amd64-netinst.iso <a herf="https://www.debian.org/distrib/netinst">Download</a>

6、A U Disk.

7、A <strong>wired</strong> keyboard(<strong>important</strong>)!!!

8、Your body and your <strong>brain</strong>.

<HR>

<strong>Real real article!!!</strong>

First,you have to use your Voyo Vbook V3 Pentium laptop to open
<a href="https://zhuanlan.zhihu.com/p/33841058">Voyo V3 奔腾版 debian9最小化安装实战</a>
(This article's chinese version)

or

open <a 
href="https://github.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install">Gayheb/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install</a>

(Oh I forgot you have opened it and reading it now.)

Now!Download the bios file from <a href="#download">the front of this article</a> or clone this project!

After that,run the file <strong>fbios.cmd</strong> and <strong>run as Administrator</strong>!

![run_as_administrator](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/run_as_administrator.png)

Reboot the laptop and then you will find that you have update the bios succeed.
<HR>
It's time to show your brain!Ohno,There is a mistake.

Show your A wired keyboard!

(In my test,USB wired keyboard can be used,
but I haven't test PS/2 wired keyboard.)

Click <strong>Del frantically </strong> to enter the bios.

Find <strong>Chipset-South Bridge-OS Selection</strong> to change settings.

<strong><s>FBI</s> Warnning!

When you change to "Intel linux" mode,

You can't use the keyboard of the laptop after saving the settings.

Use your wired keyboard.

When you change to "Windows" mode you can use it normally.</strong>

![Chipset-South_Bridge](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/Chipset-South_Bridge.jpg)

![South_Bridge-OS_Selection](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/South_Bridge-OS_Selection.jpg)

<HR>

After changing settings and save them,
you can use your <strong>big enouth</strong> mug
and bag of instant coffee to make 
a cup of coffee.

Or you can open <a href="https://www.bilibili.com/bangumi/play/ep95840"><strong>Is the order a rabbit?</strong></a>.

And start installing your Debian at the same time.

When you install your Debian,
the system will ask you to provide the drivers of the Wireless LAN.

For this situation,you can download <a href="https://packages.debian.org/sid/firmware-iwlwifi"><strong>firmware-iwlwifi.deb</strong></a> and <strong>put it into the firmware folder</strong>.

<strong>What?You ask me about the U disk?

Don't you use it to make boot disk of the Debian-install-system?</strong>




![firmware_folder](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/firmware_folder.png)

<HR>

If you use Debian minimized installation(without all of settings during the package install),
you can continue reading this article.

The next part is about setting your Wireless LAN in command environment.

`
root@balabalabala:~#iwconfig
`

This command will show the name of your Wireless LAN

![LAN_name](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/LAN_name.jpg)

    root@balabalabala:~#ip link set wlp1s0 up

To make your Wireless LAN active,

Then you can use 

    root@balabalabala:~#iw dev wlp1s0 scan >> result.hentai

    root@balabalabala:~#nano result.hentai

or

    root@balabalabala:~#iwlist scanning >>result.hentai

    root@balabalabala:~#nano result.hentai

to find out the SSID of the wireless networks you need to contact.

Then use <strong>nano</strong> to edit the file <strong>/etc/network/interfaces</strong>

Add these words into the file:

    auto wlp1s0

    iface wlp1s0 inet dhcp

        wpa-ssid "your-ssid"

        wpa-psk "your-password"

Such as this picture.After save the settings you have to reboot it.


![setting_of_network](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/setting_of_network.jpg)
<HR>
<strong>In the end,clean your mug and go to bed for sleep! </strong>
<HR>
<a name="Thanks"></a>
<strong>Real end!</strong>
In the end,I want to thank to the uploader of the unlock bios files
and Mr.Pfitzner.When I found his passage <a href="http://www.gadgetfreak.info/2017/08/20/voyo-v3-pentium-running-linux-new-bios-update/">voyo-v3-pentium-running-linux-new-bios-update</a> and ask 
him about the bios update,he spend much time to reply my email.
(But in fact he use lock bios files Ahahahaha.)

![email_list](https://raw.githubusercontent.com/Ricardo2001ZG/Voyo_Vbook_V3_Pentium_linux_install/master/image/email_list.png)
<HR>
If you have any questions,you can contact me by email(please use English or Chinese).

(In fact,other languages can also be used.Because I can use <a href="https://translate.google.cn/">Google translate</a> Ahahahahaha.)

miao@ricardo2001zg.moe

<strong>If I didn't reply you in three days please send another email to me.</strong>

Finished at 3:08 on Feb.17th,2018(UTC+8,China).
<HR>
Ahahahaha!
Real real end!

If you don't like the passage,

<strong>Don't send email to me!!!!</strong>
<HR>
I am the Flying Spaghetti Monster. Thou shalt have no other monsters before Me. (Afterwards is OK; just use protection.) The only Monster who deserves capitalization is Me! Other monsters are false monsters, undeserving of capitalization.

— Suggestions 1:1

<HR>