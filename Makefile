# Makefile

ansible-ex:
	ansible-galaxy install -r requirements.yml
	ansible-playbook playbook.yml -i inventory.ini -kK -t prep


ansible-redmine-install:
	chmod +x scripts/set_new_pwd.sh
	./scripts/set_new_pwd.sh
	ansible-vault encrypt group_vars/servers/vault.yml
	#ansible-vault encrypt_string --vault-id @prompt REDMINE_DB_PASSWORD > group_vars/servers/vault.yml
	
	ansible-playbook playbook.yml -i inventory.ini -kK -t install-redmine --ask-vault-pass


ansible-redmine-restart:
	ansible-playbook playbook.yml -i inventory.ini -kK -t install-redmine


ansible-redmine-reinstall:
	chmod +x scripts/set_new_pwd.sh
	./scripts/set_new_pwd.sh
	ansible-vault encrypt group_vars/servers/vault.yml
	ansible-playbook playbook.yml -i inventory.ini -kK -t reinstall-redmine --ask-vault-pass

