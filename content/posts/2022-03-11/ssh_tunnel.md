---
title: "ssh tunnel"
date: 2022-03-11T00:52:17+08:00
draft: false
description: "遠端有一台沒有提供外網的服務A(資料庫)，且設有Bastion server，如何在本機連上服務A。"
tags: [ssh,]
---

先備知識：知道ssh是什麼

使用情境：
遠端有一台沒有提供外網的服務A(資料庫)，且設有Bastion server，如何在本機連上服務A。

解法：

```shell
ssh -L 1235:target_a_host:4567 bastion_server_host
```

這樣一來，就可以從`localhost:1235`連到遠端服務。

- 可以使用`-fN`在背景執行

```shell
ssh -fN -L [bind_address:]<local_port>:<target_host>:<target_port> remotehost
```

## Reference

- [ssh tunnel](https://johnliu55.tw/ssh-tunnel.html)
