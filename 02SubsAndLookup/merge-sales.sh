#! /bin/sh

# merge-sales.sh
# 结合配额与业务员数据

# 删除注释并按姓名排序数据文件
sed '/^#/d' quotas | sort      > quotas.sorted
sed '/^#/d' sales  | sort -k 2 > sales.sorted

# 以名字作为key进行结合，将结果产生至标准输出
join -2 2 -o 1.1,1.2,2.3 quotas.sorted sales.sorted

# 删除缓存文件
rm quotas.sorted sales.sorted

