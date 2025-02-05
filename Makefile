.PHONY: help common system packages users ssh firewall fail2ban nginx vim

export ANSIBLE_BECOME_ASK_PASS=True
export ANSIBLE_ASK_VAULT_PASS=False

help:
	@echo Run make common to execute the common role
	@echo Run make system to execute the system tasks
	@echo Run make packkages to execute the package tasks
	@echo Run make users to execute the users tasks
	@echo Run make ssh to execute the ssh tasks
	@echo Run make firewall to execute the firewall tasks
	@echo Run make fail2ban to execute the fail2ban tasks
	@echo Run make nginx to execute the nginx tasks
	@echo Run make vim to execute the vim tasks

common:
	ansible-playbook -i inventory.yml playbook.yml

system:
	ansible-playbook -i inventory.yml --tags "system" playbook.yml

packages:
	ansible-playbook -i inventory.yml --tags "packages" playbook.yml

users:
	ansible-playbook -i inventory.yml --tags "users" playbook.yml

ssh:
	ansible-playbook -i inventory.yml --tags "ssh" playbook.yml

firewall:
	ansible-playbook -i inventory.yml --tags "firewall" playbook.yml

fail2ban:
	ansible-playbook -i inventory.yml --tags "fail2ban" playbook.yml

nginx:
	ansible-playbook -i inventory.yml --tags "nginx" playbook.yml

vim:
	ansible-playbook -i inventory.yml --tags "vim" playbook.yml
