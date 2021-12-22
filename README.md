# DataFactory
K3s Data Plateform

# Droits
## Copie et envoie de la clé ssh
 - ssh-copy-id giujorge@192.168.1.73

## ajout des droits sudo
 - sudo usermod -aG sudo giujorge

 - sudo visudo
 - giujorge ALL=(ALL) NOPASSWD: ALL

# K3s ansible
Suivre les instructions du projet :
 - https://github.com/k3s-io/k3s-ansible
 - création de l'inventaire : scp -R inventory/sample inventory/datfactory
 - lancement : ansible-playbook site.yml -i inventory/datafactory/hosts.ini 
 - kubctl : scp giujorge@redpi:~/.kube/config ~/.kube/config
 - verification du cluster : kubectl get nodes
 