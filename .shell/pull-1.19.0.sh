#!/usr/bin/env bash

for IT in coredns:1.7.0 etcd:3.4.9-1 pause:3.2 kube-proxy:v1.19.0 kube-scheduler:v1.19.0 kube-controller-manager:v1.19.0 kube-apiserver:v1.19.0
do
    docker image pull "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
    docker image tag  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT" "k8s.gcr.io/$IT"
    docker image rmi  "registry.cn-shanghai.aliyuncs.com/yingzhuo/$IT"
done
