#!/bin/bash
cd /home/user/wt/fastverify-base
/usr/bin/time -f "cpu %U %S" make verify
