# Makefile

ansible-ex:
	ansible-galaxy install -r requirements.yml
	ansible-playbook playbook.yml -i inventory.ini -kK -t prep