#!/bin/bash
cat >  /home/cuisongliu/.gitconfig << eof
[http]
	proxy = http://127.0.0.1:39237
[https]
	proxy = https://127.0.0.1:39237
[user]
	email = cuisongliu@qq.com
	name = cuisongliu
eof
