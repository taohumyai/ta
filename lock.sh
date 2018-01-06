#!/bin/bash
# Script unlock dropbear, webmin, squid3, openvpn, openssh
# Dev by Tao
read -p "Username : " Login
usermod -L $Login