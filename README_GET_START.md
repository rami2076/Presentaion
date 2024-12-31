# About

出来上がっているスライドを実行する際のコマンドの紹介を行います．通常は，[package.json](package.json)
に登録されているコマンドを使って作業をしていきます．またこのRepositoryでは以下二つのツールでのスライド作成ツールをカバーしています．

- Marp
- Slidev

順に説明します

# 環境構築

| Required | Expected Version      | Install link                           |
|----------|-----------------------|----------------------------------------|
| Node.js  | Current LTS(v22.12.0) | [link](https://nodejs.org/en/download) |

```
npm install
```

# 各環境の実行サンプル

## Marp

MarpはmarkdownをシングルHTMLを生成してHTMLを表示してスライドを表示する形式を採用されているため以下の手順が必要です．

| # | 手順   | コマンド                                                                                             | 説明                   |
|---|------|--------------------------------------------------------------------------------------------------|----------------------|
| 1 | 生成   | `marp src/marp/sample/sample.md -o output/marp/sample/sample.html -w --html --allow-local-files` | マークダウンをHTML形式に変換して出力 |
| 2 | Open | `playwright open output/marp/sample/sample.html`                                                 | HTMLをブラウザで表示する       |

## Slidev

SlidevはmarkdownをVue+UnoCSS+TailwindのAppに変換してスライドを実行可能形式に変換して表示するので以下の手順で実行します

| # | 手順 | コマンド                                        | 説明                 |
|---|----|---------------------------------------------|--------------------|
| 1 | 実行 | `slidev src/slidev/sample/sample.md --open` | 変換してブラウザでスライドを表示する |

# 通常時の実行

通常時の実行は，以下のファイルを参考にして実行してください．

以下を参照してください．  
[README_PACKAGE_JSON_SCRIPTS.md](README_PACKAGE_JSON_SCRIPTS)

# スライドの新規作成と削除について

スライドの新規作成については下記を参考にしてください．  
[README_SLIDE_WORKFLOW.md](./scripts/workflow_for_slides/README_SLIDE_WORKFLOW.md)
