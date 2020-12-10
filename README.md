# kubeadm-inside-the-great-wall

由于在中国大陆地区无法访问`k8s.gcr.io`，本人将通过`kubeadm`安装`k8s`所需的镜像搬运到阿里云上。欢迎使用。

> **注意:** v1.15.0之前的版本不支持。

```bash
kubeadm init \
	--kubernetes-version=v1.19.4 \
	--apiserver-advertise-address=0.0.0.0 \
	--image-repository=registry.cn-shanghai.aliyuncs.com/yingzhuo \
	--token=abcdef.0123456789abcdef \
	--token-ttl=0 | tee ~/kubeadm.init.log
```

如果你需要直接拉取镜像，则可以使用这些[脚本](./.shell)。

```bash
# v1.19.4 (latest)
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yingzhuo/kubeadm-inside-the-great-wall/master/.shell/pull-1.19.4.sh)"
```

#### 关于版本选择

```bash
sudo apt-cache policy kubeadm | less
```

然后再移除已有的旧版本:

```bash
sudo apt-get autoremove -y --purge kubernetes-cni kubeadm kubelet kubectl
```

然后再选择你需要的版本安装安装之:

```bash
sudo apt-get install -y kubeadm=1.19.\* kubectl=1.19.\* kubelet=1.19.\* kubernetes-cni=0.8.7-00
sudo apt-mark hold kubelet kubeadm kubectl kubernetes-cni
```
