#!/bin/bash
#this user expire in 1 day
#Dev By Tao

IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=smile`</dev/urandom tr -dc X-Z0-9 | head -c4`
Day="1"
Passwd=4468`</dev/urandom | head -c9`

useradd -e `date -d "$Day days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Passwd\n$Passwd\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====SSH Account===="
echo -e "Host : $IP" 
echo -e "Port : 443"
echo -e "User : $Login"
echo -e "Pass : $Passwd"
echo -e "Proxy : $IP:8080,"
echo -e "=======Payload======="
echo -e "CONNECT [host_port]@lvs.truehits.in.th [protocol][crlf]Host: smile.naver.jp[crlf][crlf]"
echo -e ""
echo -e "====OpenVPN Account===="
echo -e "Config OpenVPN (TCP 1194)"
echo -e " Download File "
echo -e "http://$IP:81/Test.ovpn"
echo -e "========================="
echo -e "Line http://line.me/ti/p/tN_u9iU2D9"
echo -e ""
echo "client
dev tun
proto tcp
<connection>
remote True-DtacProline 999 udp
remote $IP:1194@smile-static.tlcdn4.com.naver.jp
</connection>
http-proxy-retry 
http-proxy $IP 8080
http-proxy-option CUSTOM-HEADER Host ps.line.naver.jp
http-proxy-option CUSTOM-HEADER Close
http-proxy-option CUSTOM-HEADER Keep-Alive
http-proxy-option CUSTOM-HEADER [ua]
http-proxy-option CUSTOM-HEADER 21777
route-method exe
dhcp-option DNS 8.8.8.8
dhcp-option DNS 8.8.4.4
dhcp-option DOMAIN www.google.com
dhcp-option DOMAIN www.youtube.com
connect-retry 1
connect-timeout 120
resolv-retry infinite
route-method exe
nobind
ping 5
ping-restart 30
persist-key
persist-tun
persist-remote-ip
mute-replay-warnings
verb 2
sndbuf 393216
rcvbuf 393216
push 'sndbuf 393216'
push 'rcvbuf 393216'
auth-user-pass
cipher none
comp-lzo
script-security 3

<auth-user-pass>
$Login
$Passwd
</auth-user-pass>

<ca>
-----BEGIN CERTIFICATE-----
MIID4DCCA0mgAwIBAgIJAM3S4jaLTQBoMA0GCSqGSIb3DQEBBQUAMIGnMQswCQYD
VQQGEwJJRDERMA8GA1UECBMIV2VzdEphdmExDjAMBgNVBAcTBUJvZ29yMRQwEgYD
VQQKEwtKdWFsU1NILmNvbTEUMBIGA1UECxMLSnVhbFNTSC5jb20xFDASBgNVBAMT
C0p1YWxTU0guY29tMRQwEgYDVQQpEwtKdWFsU1NILmNvbTEdMBsGCSqGSIb3DQEJ
ARYObWVAanVhbHNzaC5jb20wHhcNMTMxMTA4MTQwODA3WhcNMjMxMTA2MTQwODA3
WjCBpzELMAkGA1UEBhMCSUQxETAPBgNVBAgTCFdlc3RKYXZhMQ4wDAYDVQQHEwVC
b2dvcjEUMBIGA1UEChMLSnVhbFNTSC5jb20xFDASBgNVBAsTC0p1YWxTU0guY29t
MRQwEgYDVQQDEwtKdWFsU1NILmNvbTEUMBIGA1UEKRMLSnVhbFNTSC5jb20xHTAb
BgkqhkiG9w0BCQEWDm1lQGp1YWxzc2guY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GN
ADCBiQKBgQDO0s4v72Y+V1z3XpkQD8hVjYyJk1PzpaNGpubtVXf7b/2vhvYBfE3X
46NvpgQejsAI4rW7XWMZrAjFzQBPE0zDAt1O0ukvGRFvHr16jLuC3cZCn3oQJ0+v
HD7Z16sUhKqLWRTGAf1LDvNR3eVmzzRfBF8L3h+ZGaQFW9gsw1tSSwIDAQABo4IB
EDCCAQwwHQYDVR0OBBYEFA5gsoPi0yORhvAA38zCXOQhX4wYMIHcBgNVHSMEgdQw
gdGAFA5gsoPi0yORhvAA38zCXOQhX4wYoYGtpIGqMIGnMQswCQYDVQQGEwJJRDER
MA8GA1UECBMIV2VzdEphdmExDjAMBgNVBAcTBUJvZ29yMRQwEgYDVQQKEwtKdWFs
U1NILmNvbTEUMBIGA1UECxMLSnVhbFNTSC5jb20xFDASBgNVBAMTC0p1YWxTU0gu
Y29tMRQwEgYDVQQpEwtKdWFsU1NILmNvbTEdMBsGCSqGSIb3DQEJARYObWVAanVh
bHNzaC5jb22CCQDN0uI2i00AaDAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUA
A4GBAL3ScsXaFFuBqkS8bDqDUkx2hYM2iAYx9ZEuz8DOgtenQiNcyety4YzWSE5b
1/4JSlrO0hoFAZpz6tZtB9XM5efx5zSEIn+w4+2bWUk34Ro2zM3JxwDUp1tTcpbT
T0G3VTuVrzgSMZV1unfbCHk6XR4VT3MmmoTl+97cmmMZgWV0
-----END CERTIFICATE-----
</ca>" > /home/vps/public_html/Test.ovpn

