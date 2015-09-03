$TTL 86400
@	IN	SOA	example.com. root.example.com.(
      20150903001	;
			3600		;
			900		;
			604800		;
			86400		;
)
	IN	NS		example.com.
	IN	A		192.168.0.1
