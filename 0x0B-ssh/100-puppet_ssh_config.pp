# Puppet script to create ssh config file
file_line { 'Change the private key':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}

file_line { 'Refuse authentication of password':
  path => '/etc/ssh/ssh_config',
  line => '    PasswordAuthentication no',
}
