# About

`package.json`の`scripts`に記載されているコマンドの意味を説明する

# 説明

| Command Name                | Usecase                        | Description                                                                                                                                       |
|-----------------------------|--------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| script:new:slide            | 新規スライドを作りたい時                   | 必要なファイルを作成してスクリプトを表示する.[REF](./scripts/workflow_for_slides/README_SLIDE_WORKFLOW.md)                                                              |
| script:remove:slide         | スライドを削除したい時                    | 不要なディレクトリを削除してスクリプトを表示する.[REF](./scripts/workflow_for_slides/README_SLIDE_WORKFLOW.md)                                                            |
| marp:help                   | marpコマンドのオプションがわからなくなった時       | marpのヘルプを表示する                                                                                                                                     |
| slidev:help                 | slidevコマンドのオプションがわからなくなった時     | slidevのヘルプページを表示する                                                                                                                                |
| playwright:help             | playwrightコマンドのオプションがわからなくなった時 | playwrightのヘルプを表示する                                                                                                                               |
| marp:generate:{slide theme} | marpのmdからスライドを作成したい時           | marpのmdから[output/marp/{slide theme}](output/marp/)にhtml形式のスライドを作成する                                                                               |
| slidev:open:{slide theme}   | slidevのmdからスライドを表示したい時         | slidevをのmdを元にvue app作成，local起動を行い，slideを表示する                                                                                                      |
| slidev:build:{slide theme}  | slidevのmdを元にremoteにデプロイしたい時    | slidevをのmdを元にvue appをサーバにデプロイできる形式にして出力する．出力先は，{slide theme}の入力ファイルが存在するディレクトリ直下のoutディレクトリ<br/>例:`src/slidev/sample/out`<br/> outディレクトリはgit管理してない |
| slidev:export:{slide theme} | slidevのmdを元にhtmlのスライドを出力したい時   | slidevをのmdを元にスライドをpdf形式にして出力する                                                                                                                    |

# 用語

| 用語          | 説明              |
|-------------|-----------------|
| md          | markdownファイルのこと |
| slide theme | スライドのテーマのこと     |
