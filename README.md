## docker 常用镜像及启动命令

## 其他

```sh
host.docker.internal
```
Docker提供的一个特殊DNS名称，用于在Docker容器内部解析为宿主机的内部IP地址。

```sh
# 拷贝容器中的某个文件到宿主机
docker run --rm [容器] cat [容器文件路径] > [宿主机路径]

# 例：
docker run --rm nginx cat /etc/nginx/nginx.conf > ./nginx.conf
```
