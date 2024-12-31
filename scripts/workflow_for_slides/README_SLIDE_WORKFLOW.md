# About

Scriptの説明を行う

# ユースケース

## 新しくスライドを作成する時

1. 新規にスライドを作成する場合は以下のshellを実行する．
    1. ファイルの作成が実施され，`package.json`のscripts部にペーストするための文字列が出力されるためコピーする．

```bash
sh ./workflow_add_slide.sh
```

1. コピーした文字列を`package.json`のscripts部にペーストする．

## すでに存在するスライドを削除する時

1. 新規にスライドを作成する場合は以下のshellを実行する．
    1. ファイルの削除が実施され，`package.json`のscripts部から削除する文字列が表示される．

```bash
sh ./workflow_remove_slide.sh
```

1. `package.json`のscripts部から出力された文字列を削除する
