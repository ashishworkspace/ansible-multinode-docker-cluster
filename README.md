# Ansible Multinode Docker Cluster
* Run the script ```./script.sh```
> This will create three node ansible cluster one master and two slave nodes
### To check connectivity between master and slave nodes
```bash
ansible all -m  ping
