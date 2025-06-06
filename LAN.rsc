/log info "Loading LAN ipv4 address list"
/ip firewall address-list
:local lanIps {
	"0.0.0.0/8";
	"10.0.0.0/8";
	"100.64.0.0/10";
	"127.0.0.0/8";
	"169.254.0.0/16";
	"172.16.0.0/12";
	"192.0.0.0/24";
	"192.0.2.0/24";
	"192.168.0.0/16";
	"192.88.99.0/24";
	"198.18.0.0/15";
	"198.51.100.0/24";
	"203.0.113.0/24";
	"224.0.0.0/4";
	"240.0.0.0/4"
}

:foreach ip in=$lanIps do={
	:do {
		/ip firewall address-list add list=LAN address=$ip
	} on-error={}
}
