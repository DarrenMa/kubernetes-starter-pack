#!/bin/sh

# Destory lab instances
INSTANCES="dev registry nfs k8s-cp-01 k8s-w-01 k8s-w-02"

for instance in $INSTANCES

do
  lxc stop $instance
  lxc delete $instance
done

if [ -d ~/.kube ]; then rm -r ~/.kube; fi