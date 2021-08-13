#!/usr/bin/env bash

for IT in coredns:1.7.0 etcd:3.4.13-0 pause:3.2 kube-proxy:v1.20.10 kube-scheduler:v1.20.10 kube-controller-manager:v1.20.10 kube-apiserver:v1.20.10
do
    docker image pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
    docker image tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT" "k8s.gcr.io/$IT"
    docker image rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
done