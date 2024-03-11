#!/bin/bash
sudo apt update 
sudo apt install -y qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager -y

sudo systemctl enable --now libvirtd

sudo virsh net-start default
sudo virsh net-autostart default
