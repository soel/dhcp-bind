$TTL 86400
@   IN    SOA	  {{ domain_name }}.    root.{{ domain_name }}.(
                20150903001 ;
                3600        ;
                900         ;
                604800      ;
                86400       ;
)
    IN    NS        {{ name_server_hostname }}{{ domain_name }}.
{{ name_server_hostname }}    IN    A         {{ name_server_ip_address }}
