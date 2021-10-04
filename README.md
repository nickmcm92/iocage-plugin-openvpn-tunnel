# iocage-plugin-openvpn-tunnel

Artifact file(s) for OpenVPN tunnel iocage plugin

This plugin will install OpenVPN and open it as a tunnel for other jails

## To install this Plugin

Download the plugin manifest file to your local file system.

```shell
fetch https://raw.githubusercontent.com/nickmcm92/iocage-plugin-openvpn-tunnel/master/openvpn-tunnel.json
```

Install the plugin.  Adjust the network settings as needed.

```shell
iocage fetch -P openvpn-tunnel.json -n vpntun
```
