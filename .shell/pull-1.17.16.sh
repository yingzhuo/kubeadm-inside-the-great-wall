#!/usr/bin/env bash

for IT in coredns:1.6.5 etcd:3.4.3-0 pause:3.1 kube-proxy:v1.17.16 kube-scheduler:v1.17.16 kube-controller-manager:v1.17.16 kube-apiserver:v1.17.16
do
    docker image pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
    docker image tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT" "k8s.gcr.io/$IT"
    docker image rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
done
