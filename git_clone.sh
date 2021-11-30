#########################################################################
# File Name:    git_clone.sh
# Author:       XH
# mail:         2023434536@qq.com
# Created Time: 2021年11月30日 18:22:09
#########################################################################
#!/bin/bash

path=$(pwd)"/path"

for dir in $(ls $path)
do
    dirName=${dir%%_path*}
    gitCommand=`cat $path/$dir`
    if [[ -d $(pwd)/$dirName ]]; then
        echo $dirName"目录已存在"
        continue
    fi
    git clone $gitCommand $dirName
done
