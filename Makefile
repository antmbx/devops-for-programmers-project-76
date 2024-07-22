# Makefile

ansible-prep: ansible-new-api ansible-ex 
	
ansible-ex:
	ansible-galaxy install -r requirements.yml
	ansible-playbook playbook.yml -i inventory.ini -kK -t prep --ask-vault-pass

ansible-new-api:
	chmod +x scripts/set_new_api.sh
	./scripts/set_new_api.sh	
	ansible-vault encrypt group_vars/webservers/vault.yml


ansible-restart-dd:
	ansible-playbook playbook.yml -i inventory.ini -kK -t restart-datadog --ask-vault-pass



ansible-redmine-install: ansible-redmine-pwd ansible-setup-all
	

ansible-setup-all:	
	ansible-playbook playbook.yml -i inventory.ini -kK -t install-redmine --ask-vault-pass


ansible-redmine-restart:
	ansible-playbook playbook.yml -i inventory.ini -kK -t install-redmine


ansible-redmine-reinstall:
	ansible-playbook playbook.yml -i inventory.ini -kK -t reinstall-redmine --ask-vault-pass


ansible-redmine-pwd:
	chmod +x scripts/set_new_pwd.sh
	./scripts/set_new_pwd.sh
	ansible-vault encrypt group_vars/servers/vault.yml

