package 'tree' do
	action :install
end

package 'ntp' do
	action :install
end 

package 'git'
package 'vim-enhanced'
package 'nano'

file '/etc/motd' do
	content "This server is property of Hitesh"
	owner 'root'
	group 'root'
end 

service 'ntpd' do 
	action [:enable, :start]
end
