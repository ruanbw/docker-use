# NACOS_AUTH_TOKEN: Nacos 用于生成JWT Token的密钥，使用长度大于32字符的字符串，再经过Base64编码。
# NACOS_AUTH_IDENTITY_KEY: Nacos Server端之间 Inner API的身份标识的Key，必填。
# NACOS_AUTH_IDENTITY_VALUE: Nacos Server端之间 Inner API的身份标识的Value，必填。

# todo: 配置文件挂载异常
# -v /home/nacos/conf:/home/nacos/conf

docker run --name nacos-standalone-derby \
    -e MODE=standalone \
    -e NACOS_AUTH_TOKEN=QhWShWV9l20nKEDhD21aCdDVxT4eChEfJavhPfE+adw= \
    -e NACOS_AUTH_IDENTITY_KEY=admin \
    -e NACOS_AUTH_IDENTITY_VALUE=admin \
    -p 8080:8080 \
    -p 8848:8848 \
    -p 9848:9848 \
    -d nacos/nacos-server:latest
