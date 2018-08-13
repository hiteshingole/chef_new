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

variables partials: {
    'Author' => ' Hitesh',
    'Test' => 'for chef',
    'argument' => 'value',
  }
	action :create
    
end 


user 'mapr' do
	comment 'mapr user'
	uid '123456789'
	home '/home/mapr'
	shell '/bin/bash'
end

group 'mapr' do

	members 'mapr'
	gid '123456789'
	append true
end

service 'ntpd' do 
	action [:enable, :start]
end
