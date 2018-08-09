package 'tree' do
	action :install
end

package 'ntp' do
	action :install
end 

package 'git'
package 'vim-enhanced'
package 'nano'

node['ipaddress']

file '/etc/motd' do
	content "This server is property of Hitesh
Hostname = #{node['hostname']}
IpAddress = #{node['ipaddress']}
CPU = #{node['cpu']['0']['mhz']}
Ram= #{node['memory']['total']}
"
	owner 'root'
	group 'root'
end 

service 'ntpd' do 
	action [:enable, :start]
end
