#!/usr/bin/env bash

for IT in coredns:1.7.0 etcd:3.4.3-0 pause:3.2 kube-proxy:v1.18.9 kube-scheduler:v1.18.9 kube-controller-manager:v1.18.9 kube-apiserver:v1.18.9
do
    docker image pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
    docker image tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT" "k8s.gcr.io/$IT"
    docker image rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
done