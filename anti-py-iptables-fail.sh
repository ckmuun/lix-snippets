# simple script to fix the libvirt error 'python-nftables failed' error.
# usually occurs with minikube and/or codeready containers. E.g. on-workstation K8S emulation
# shamelessly copied from https://github.com/kubernetes/minikube/issues/8772
echo "rm firewalld trusted and restarting firewalld and libvirtd daemons"!

sudo mv /etc/firewalld/zones/trusted.xml /etc/firewalld/zones/trusted.xml.bkp
sudo systemctl restart firewalld
sudo systemctl restart libvirtd
