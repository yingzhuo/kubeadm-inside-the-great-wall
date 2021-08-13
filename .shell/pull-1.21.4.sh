#!/usr/bin/env bash

docker image pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/coredns:v1.8.0"
docker image tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/coredns:v1.8.0" "k8s.gcr.io/coredns/coredns:v1.8.0"
docker image rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/coredns:v1.8.0"

for IT in etcd:3.4.13-0 pause:3.4.1 kube-proxy:v1.21.4 kube-scheduler:v1.21.4 kube-controller-manager:v1.21.4 kube-apiserver:v1.21.4
do
    docker image pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
    docker image tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT" "k8s.gcr.io/$IT"
    docker image rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
done