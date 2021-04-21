#!/usr/bin/env bash

for IT in coredns/coredns:v1.8.0 etcd:3.4.13-0 pause:3.4.1 kube-proxy:v1.21.0 kube-scheduler:v1.21.0 kube-controller-manager:v1.21.0 kube-apiserver:v1.21.0
do
    docker image pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
    docker image tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT" "k8s.gcr.io/$IT"
    docker image rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
done