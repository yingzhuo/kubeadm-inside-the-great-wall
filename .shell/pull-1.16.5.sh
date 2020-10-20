#!/usr/bin/env bash

for IT in coredns:1.6.2 etcd:3.3.15-0 pause:3.1 kube-proxy:v1.16.5 kube-scheduler:v1.16.5 kube-controller-manager:v1.16.5 kube-apiserver:v1.16.5
do
    docker image pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
    docker image tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT" "k8s.gcr.io/$IT"
    docker image rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
done