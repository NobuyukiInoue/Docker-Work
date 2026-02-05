---
title: 【Ansible】DockerでAnsibleハンズオン
tags: Ansible Docker
author: Naoto9282
slide: false
---
# 概要
VirtualboxやVagrantを使った入門は、ハードルが高めなので、
Dockerを使って、Ansibleにハンズオンします。

# 構成
Dockerを用いることで、Ansibleのコンテナを１台、Targetのコンテナを２台作る。
Ansibleコンテナから、２台のTargetコンテナに対して、Ansibleコマンドを実行する。
Ansibleコンテナから、`Target01`、`Target02`コンテナ内に、`hoge` というファイルを作成してみる。

[![alt](http://www.plantuml.com/plantuml/svg/SoWkIImgAStDuKfCJyqhKN3CAyvCoac5ya8IYz9JImmCKRb6N5nGPGgwAVdbURfsS8Mu98oie1AFcpO_Rfxtk1b8TZvkclHqtVmN2tiUDqv_tD0OasVqk779uyPr43rWbK3KzhYvwsbRw-F6rM0r6VdfgO-RfpvkMlYuQSdZvjL0GvxidVEiOmANGsfU2j0Z0000)](http://www.plantuml.com/plantuml/svg/SoWkIImgAStDuKfCJyqhKN3CAyvCoac5ya8IYz9JImmCKRb6N5nGPGgwAVdbURfsS8Mu98oie1AFcpO_Rfxtk1b8TZvkclHqtVmN2tiUDqv_tD0OasVqk779uyPr43rWbK3KzhYvwsbRw-F6rM0r6VdfgO-RfpvkMlYuQSdZvjL0GvxidVEiOmANGsfU2j0Z0000)

# ハンズオン
1 . git cloneする。

```sh:clone
git clone https://github.com/Naoto92X82V99/docker-ansible.git
```

```none:ディレクトリ構成
.
├── README.md
├── docker
│   ├── ansible
│   │   └── Dockerfile      ansibleのDocerfile
│   └── target
│       └── Dockerfile      targetのDockerfile
├── docker-compose.yml      docker-composeファイル
├── inventry.ini            hostsファイル
└── playbook.yml            playbookファイル
```

2 . コンテナを起動する。

```sh:コンテナの起動
docker-compose up -d
```

3. Ansibleコンテナに接続する

```sh:Ansibleコンテナに接続
docker exec -it ansible /bin/exec
```

5. Ansibleコンテナから、`target01`、`target02`コンテナに対し、ssh接続する。

```sh:sshの接続確認
ssh target01    # yesで接続
exit
ssh target02    # yesで接続
exit
```

6 . `target01`、`target02`コンテナに対し、ansibleコマンドを実行する。

```
ansible-playbook -i inventry.ini playbook.yml
```

```sh:Ansibleコマンドの実行結果
PLAY [target] ********************************************************************************************************************************************************************

TASK [Gathering Facts] ***********************************************************************************************************************************************************
ok: [target01]
ok: [target02]

TASK [???] ***********************************************************************************************************************************************************************
 [WARNING]: Consider using the file module with state=touch rather than running touch.  If you need to use command because file is insufficient you can add warn=False to this
command task or set command_warnings=False in ansible.cfg to get rid of this message.

changed: [target02]
changed: [target01]

PLAY RECAP ***********************************************************************************************************************************************************************
target01                   : ok=2    changed=1    unreachable=0    failed=0
target02                   : ok=2    changed=1    unreachable=0    failed=0
```

7　. `target01`、`target02`コンテナに再接続し、`hoge`が作成されていることを確認する。

```sh:Ansibleコマンドの動作確認
ssh target01
ls    # hoge
exit
ssh target02
ls    # hoge
```

# 解説

本質と外れるため、Dockerについての説明はしません。
Ansibleの基本ファイルは、`hosts`ファイルと`playbook`です。

## hostsファイル

`hosts`ファイルは、Ansibleコマンドを実行する対象サーバを記述します。
今回は、`target01`、`target02`コンテナを対象とするため、以下のようになります。

```none:hosts
[target]
target01
target02
```

## playbookファイル

`playbook`ファイルには、サーバの状態を定義していきます。
今回は、`hosts`ファイルに記載された`target`に対し、`touch hoge`を実行します。

```yaml:playbook.yml
- hosts: target
  tasks:
  - name: "テスト"
    shell: |
        touch hoge
```

# まとめ
Dockerを使って、Ansibleにハンズオンする方法を書きました。
`playbook`ファイルを書いて、Ansibleコマンドを実行する環境が、
`docker-compose up`のみで実現できます。
ハンズオンで用いた`touch`コマンドは、冪等性が担保されないため、実際には使用しないでください。
ハンズオン後は、`playbook.yml`を編集し、Ansibleコマンドを試してみて下さい。
間違い・指摘等があればコメントお願いします。
