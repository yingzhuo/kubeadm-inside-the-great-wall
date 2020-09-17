# kubeadm-inside-the-great-wall

由于在中国大陆地区无法访问`k8s.gcr.io`，本人将通过`kubeadm`安装`k8s`所需的镜像搬运到阿里云上。欢迎使用。

```bash
kubeadm init \
	--kubernetes-version=v1.19.2 \
	--apiserver-advertise-address=0.0.0.0 \
	--image-repository=registry.cn-shanghai.aliyuncs.com/yingzhuo \
	--token=abcdef.0123456789abcdef \
	--token-ttl=0 | tee ~/kubeadm.init.log
```

如果你需要直接拉取镜像，则可以使用这些[脚本](./.shell)。

```bash
# 最后的版本: v1.19.2
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yingzhuo/kubeadm-inside-the-great-wall/master/.shell/pull-1.19.2.sh)"
```
