# DHCP DNS 連携

## 前提条件

- 使えるネットワークは一つ
- 使えるドメインも一つ

上記の条件以外で使う場合には適時変更する必要があります

## 使い方

### 準備

- デプロイ元には ansible が必要になります
- ansible/conf.yml を編集して使いたい環境に設定します
  - 設定ファイルのテンプレートには example.com 等名前がついていますが、conf.yml の内容を
  読み取ってリネームされますので、ファイル名を変更する必要はありません
- Vagrantfile を使ってVM上に構築できます
  - Virtual Box と Vagrant のインストールするが必要です

### 実行例

#### ansible-playbook コマンドでの実行

hosts ファイル作成し、デプロイ先のアドレスと ssh のポート番号が 22 以外の場合はポート番号を記述する

```sh
$ vi hosts
```

hosts
```sh
192.168.0.1
192.168.0.1:22222 #port 番号が 22 以外の場合
```

ssh パスワード認証の場合

```sh
$ ansible-playbook ansible/site.yml -i hosts -u <ユーザ名> -k -c paramiko
```

ssh 鍵認証の場合

```sh
$ ansible-playbook ansible/site.yml -i hosts -u <ユーザ名> --private-key=<秘密鍵ファイル>
```

#### vagrant での実行

```sh
vagrant up
```
