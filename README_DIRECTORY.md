# About

このプロジェクトのディレクトリ構成について説明する

# ディレクトリ構成

```
.
├── .idea IntelliJをIDEに採用しているため
├── scripts 作業を楽にするためのScript置き場．配下にディレクトリを作成して良い．
├── output/ MarpのHTMLを出力するためのディレクトリ/
│   └── marp/
│       └── {スライドのテーマ名}のディレクトリ/
│           └── {スライドのテーマ名}.html 出力されたファイル
├── src/
│   └── marp/
│       ├── {スライドのテーマ名}/
│       │   └── {スライドのテーマ名}.md Marp用のスライドを作るためのMarkDown
│       └── slidev/
│           └── {スライドのテーマ名}/
│               ├── components スライドに使用するVueコンポーネント(Option)
│               ├── public 画像などを保存するディレクトリ(Option)
│               ├── {スライドのテーマ名}.md Slidev用のスライドを作るためのMarkDown
│               └── out buildコマンドを実行した場合に作成される(Git管理しない)
└── {スライドのテーマ名}-export.pdf Slidevでpdf出力した場合場所を指定しても失敗したため． Rootに出力される
```

<details>

<summary>Original</summary>

### Original

以下のサイトで生成した．  
[https://tree.nathanfriend.com/](https://tree.nathanfriend.com/)

#### 生成時に使用した値

```
.idea IntelliJをIDEに採用しているため
scripts 作業を楽にするためのScript置き場．配下にディレクトリを作成して良い．
output/ MarpのHTMLを出力するためのディレクトリ
 marp
   {スライドのテーマ名}のディレクトリ
     {スライドのテーマ名}.html 出力されたファイル
src
  marp
    {スライドのテーマ名}
      {スライドのテーマ名}.md Marp用のスライドを作るためのMarkDown
    slidev
      {スライドのテーマ名}
        components スライドに使用するVueコンポーネント(Option)
        public 画像などを保存するディレクトリ(Option)
        {スライドのテーマ名}.md Slidev用のスライドを作るためのMarkDown
        out buildコマンドを実行した場合に作成される(Git管理しない)
{スライドのテーマ名}-export.pdf Slidevでpdf出力した場合場所を指定しても失敗したため． Rootに出力される
```

</details>

# 補足

Slidevは，すべての構成を記述していないので下記のドキュメントを参考にして対応してください．
https://sli.dev/custom/directory-structure

## snapshot(v0.51.0-beta.4)

```
your-slidev/
  ├── components/       # custom components
  ├── layouts/          # custom layouts
  ├── public/           # static assets
  ├── setup/            # custom setup / hooks
  ├── snippets/         # code snippets
  ├── styles/           # custom style
  ├── index.html        # injections to index.html
  ├── slides.md         # the main slides entry
  └── vite.config.ts    # extending vite config
```