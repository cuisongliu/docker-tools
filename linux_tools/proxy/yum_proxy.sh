#!/bin/bash
cat >  /etc/apt/apt.conf << eof
Acquire::http::proxy "http://127.0.0.1:39237/";
Acquire::ftp::proxy "ftp://127.0.0.1:39237/";
Acquire::https::proxy "https://127.0.0.1:39237/";
eof
