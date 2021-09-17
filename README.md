# kubeadm-inside-the-great-wall

由于在中国大陆地区无法访问`k8s.gcr.io`，本人将通过`kubeadm`安装`kubernetes`所需的镜像搬运到阿里云上。欢迎使用。

> **注意:** 从2021年05月24开始本人不再提供`v19.x.x`以下版本的映射。

```bash
kubeadm init \
	--kubernetes-version=v1.19.15 \
	--apiserver-advertise-address=0.0.0.0 \
	--image-repository=registry.cn-shanghai.aliyuncs.com/yingzhuo \
	--token=abcdef.0123456789abcdef \
	--token-ttl=0 | tee ~/kubeadm.init.log
```

如果你需要直接拉取镜像，则可以使用这些[脚本](./.shell)。

```bash
# v1.21.4 (latest)
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yingzhuo/kubeadm-inside-the-great-wall/master/.shell/pull-1.21.4.sh)"

# v1.20.10
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yingzhuo/kubeadm-inside-the-great-wall/master/.shell/pull-1.20.10.sh)"

# v1.19.15
bash -c "$(curl -fsSL https://raw.githubusercontent.com/yingzhuo/kubeadm-inside-the-great-wall/master/.shell/pull-1.19.15.sh)"
```

#### 关于版本选择 (Ubuntu为例)

查找已有的版本:

```bash
sudo apt-cache policy kubeadm | less
```

然后再移除已有的旧版本:

```bash
sudo apt-get autoremove -y --purge kubernetes-cni kubeadm kubelet kubectl
```

然后再选择你需要的版本安装安装之:

```bash
sudo apt-get install -y \
    kubeadm=1.19.\* \
    kubectl=1.19.\* \
    kubelet=1.19.\* \
    kubernetes-cni=0.8.7-00 \
    --allow-change-held-packages \
    --allow-downgrades

sudo apt-mark hold kubelet kubeadm kubectl kubernetes-cni
```
