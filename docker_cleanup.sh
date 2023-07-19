#!/bin/bash

# 警告メッセージの表示
echo "Dockerイメージとコンテナを一括で削除します。"
read -p "続行してもよろしいですか？ (y/n): " confirmation

if [[ $confirmation != "y" ]]; then
    echo "処理を中止します。"
    exit 1
fi

# 実行中のDockerコンテナの停止と削除
echo "実行中のDockerコンテナを停止しています..."
docker stop $(docker ps -q)

echo "実行中のDockerコンテナを削除しています..."
docker rm $(docker ps -a -q)

# Dockerイメージの削除
echo "Dockerイメージを削除しています..."
docker rmi -f $(docker images -q)

echo "完了しました！"
