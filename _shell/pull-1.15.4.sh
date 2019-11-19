#!/usr/bin/env bash

for IT in coredns:1.3.1 etcd:3.3.10 pause:3.1 kube-proxy:v1.15.4 kube-scheduler:v1.15.4 kube-controller-manager:v1.15.4 kube-apiserver:v1.15.4
do
    docker pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
    docker tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT" "k8s.gcr.io/$IT"
    docker rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
done