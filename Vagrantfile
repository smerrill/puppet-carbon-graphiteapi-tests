Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d, override|
    d.image = "smerrill/vagrant-centos-puppet"
    d.has_ssh = true

    # Ensure Vagrant knows the SSH port. See
    # https://github.com/mitchellh/vagrant/issues/3772.
    override.ssh.port = 22
  end

  config.vm.synced_folder "modules", "/etc/puppet/modules"

  config.vm.provision :puppet
end

