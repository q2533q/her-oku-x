#!/bin/bash

cat > "/app/config.conf" <<-\EOF
{
	"inbounds": [
		{
			"port": ${PORT},
			"protocol": "vmess",
			"settings": {
				"clients": [
					{
						"id": "88888888-8888-8888-8888-888888888888",
						"alterId": 0
					}
				],
				"disableInsecureEncryption": false
			},
			"streamSettings": {
				"network": "ws",
				"security": "none",
				"wsSettings": {
					"acceptProxyProtocol": false,
					"path": "/",
					"headers": {}
				}
			},
			"sniffing": {
				"enabled": true,
				"destOverride": [
					"http",
					"tls"
				]
			}
		}
	],
	"outbounds": [
		{
			"protocol": "freedom",
			"settings": {}
		}
	]
}
EOF

/app/x
