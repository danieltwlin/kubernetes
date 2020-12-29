#!/bin/bash

# 查詢網絡命名空間 netns
ip link show

# 查詢 veth 設備的對端
ip etns exec  netns1 ethtool -S veth1
