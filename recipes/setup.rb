package 'tree' do
	action :install
end

package 'ntp' do
	action :install
end 

package 'git'
package 'vim-enhanced'
package 'nano'


template '/etc/motd' do
	source 'motd.erb'
	action :create
    
end 

service 'ntpd' do 
	action [:enable, :start]
end
