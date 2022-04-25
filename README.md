# 概要
これはAiWolfPyの動作確認環境のDockerイメージです。

# インストール

```
git clone https://github.com/MuNeNICK/docker-aiwolf.git
```

```
cd docker-aiwolf
```

```
docker-compose build
```

```
docker-compose up -d
```

# アクセス
ブラウザ上で
http://サーバIP:8080
でuBuntuのリモートデスクトップにアクセスできる。

# AiWolfPyの起動
- LXterminalを起動
- cd AIWolfPy
- ./StartServer.sh
- 任意のポート番号を指定し、Connect
- LXTerminalをもう一つ起動し ./StartGUIClient.sh
- Open fileからaiwolf-client.jarを選択
- SampleRoleAssignPlayerを選択し、ConnectAgentを14回クリック
- LXTerminalをもう一つ起動し、./python_sample.py -h localhost -p ポート番号
- AIWolf Server StarterのStart Gameをクリック
- Resultが出力されたら成功

# 環境の削除
```
docker-compose stop java
```

```
docker-compose rm java
```

```
docker-compose down
```

このコマンドはすべてのdockerイメージが削除されるので注意
```
docker images -aq | xargs docker rmi
```
