# Makefile

ansible-ex:
	ansible-galaxy install -r requirements.yml
	ansible-playbook playbook.yml -i inventory.ini -kK -t prep


ansible-redmine-install:
	ansible-playbook playbook.yml -i inventory.ini -kK -t install-redmine


ansible-redmine-restart:
	ansible-playbook playbook.yml -i inventory.ini -kK -t install-redmine


ansible-redmine-reinstall:
	ansible-playbook playbook.yml -i inventory.ini -kK -t reinstall-redmine

