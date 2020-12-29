#!/bin/bash

# 查詢網絡命名空間 netns
ip link show

# 查詢 veth 設備的對端的序列號
ip etns exec  netns1 ethtool -S veth1

# 查詢 veth 設備的對端在另一個命名空間的對端
ip netns exec  netns2 ip link | grep 5  #<--我們只關注序列號為5的設備

# 會輸出類列下列的訊息，得到 veth0 為在另一個命名空間對應的端點
# 5: veth0@if14: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
