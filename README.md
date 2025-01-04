# About

自分用のPresentation資料を作るためのRepository

## 環境構築

| Required | Expected Version      | Install link                                                                          |
|----------|-----------------------|---------------------------------------------------------------------------------------|
| Node.js  | Current LTS(v22.12.0) | [link](https://nodejs.org/en/download)                                                |
| git lfs  | -                     | [link](https://git-lfs.com/) <br/>1. `brew install git-lfs`<br/>2. ` git lfs install` |

```
npm install
```

## ディレクトリ構成

以下を参照してください．  
[README_DIRECTORY.md](README_DIRECTORY.md)

## 実行

以下を参照してください．  
[README_GET_START.md](README_GET_START.md)

## 追加

以下を参照してください．  
[README_SLIDE_WORKFLOW.md](./scripts/workflow_for_slides/README_SLIDE_WORKFLOW.md)  
OR  
[README_PACKAGE_JSON_SCRIPTS.md](README_PACKAGE_JSON_SCRIPTS)

## package.jsonに登録されているコマンド

以下を参照してください．  
[README_PACKAGE_JSON_SCRIPTS.md](README_PACKAGE_JSON_SCRIPTS)

## package.jsonのdependenciesの説明

以下を参照してください．  
[README_DEPENDENCIES.md](README_DEPENDENCIES.md)

## 参考

- Marp
    - https://marp.app/
    - https://blog.jetbrains.com/dotnet/2024/10/01/markdown-powered-slides-in-jetbrains-ides/
    - syntax
        - https://github.com/marp-team/marp/blob/main/website/docs/guide/how-to-write-slides.md
- Slidev
    - official
        - https://sli.dev/
        - add-on
            - https://sli.dev/resources/addon-gallery
        - theme
            - https://sli.dev/guide/theme-addon
        - cli
            - https://sli.dev/builtin/cli
        - export
            - https://sli.dev/guide/exporting
        - icon
            - https://sli.dev/features/icons
        - syntax
            - https://sli.dev/guide/syntax
        - slideの設定
            - https://sli.dev/custom/#headmatter
    - non-official
        - tips: export and more...
            - https://github.com/ahandsel/articles/blob/main/slidev-tip-export/slidev-tip-export.md
        - syntax
            - https://zenn.dev/rinc5/articles/00dc1931efc2bf
        - example
            - https://github.com/loftkun/slidev-example/tree/main
        - syntax highlight
            - https://zenn.dev/rinc5/articles/72106a65de9afb
        - 目次
            - https://zenn.dev/rinc5/articles/d0b5fcb086c241
        - ヘッダー/フッター/ページ番号
            - https://zenn.dev/rinc5/articles/f0e5532968a258
        - layout
            - https://zenn.dev/rinc5/articles/b7dc7a3b0bbd30
- Tree
    - online generator
        - https://tree.nathanfriend.com
    - `tree -L 3`
        - https://qiita.com/koshihikari/items/0906cd8e97b931714efe
- Font
    - https://github.com/adobe-fonts/source-han-code-jp/releases
- Slidevが依存しているUnoCSS+Vue+Viteの説明
    - https://zenn.dev/comm_vue_nuxt/articles/vite_vue_unocss_setup
- CSS
    - https://zenn.dev/tonkotsuboy_com/articles/css-grid-centering
    - https://tw-elements.com/docs/standard/extended/center-grid-items/
