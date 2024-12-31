#!/bin/sh
#　===
# スクリプトの概要
# slideを新規追加する時のワークフローをまとめたスクリプト
#　===

set -u
#set -x
#PS4='+$LINENO: '

# ファイルの状態により状態を返却する
#　状態は文字列として返却する
#
# 引数2 Slidevの入力パス
# 引数3 Marpの入力ファイルパス
get_status () {
  slidevPath=$1
  marpPath=$2
  if [ -d "$slidevPath" ] && [ -d "$marpPath" ]; then
    # どちらも存在する
    echo "BOTHExists"
  elif [ -d "$slidevPath" ];then
    echo "SlidevOnlyExits"
  elif [ -d "$marpPath" ];then
    echo "MarpOnlyExits"
  else
    echo "BOTHAbsent"
  fi
}

# 生成対象のscriptを表示する
#
# 引数1 slideName
# 引数2 slidevの入力ファイルのパス
# 引数3 Marpの入力ファイルのパス
# 引数4 Marpの出力ファイルのパス
generate_script(){
  #引数の受け取り
  slideName=$1
  slidevPath=$2
  marpInputPath=$3
  marpOutputPath=$4

  # package.jsonに追加する文字列を生成する
  echo '####Remove Scripts Slidev & Marp package.jsonのscriptsから該当する行を削除してください####'
  # Slidev
  printf '"slidev:open:%s": "slidev %s --open",\n' "$slideName" "$slidevPath"
  printf '"slidev:build:%s": "slidev build %s --out out",\n' "$slideName" "$slidevPath"
  printf '"slidev:export:%s": "slidev export %s",\n' "$slideName" "$slidevPath"
  # Marp
  printf '"marp:generate:%s": "marp %s -o %s -w --html --allow-local-files",\n' "$slideName" "$marpInputPath" "$marpOutputPath"
}

#　ディレクトリとファイル名を受け取ってディレクトリの作成とファイルの作成を行う
#
# 引数1 削除するディレクトリ
delete_file(){
  dirPath=$1
  if [ -d "$dirPath" ];then
    echo "ディレクトリ削除: $dirPath"
    rm -rf "$dirPath"
  else
    echo "ディレクトリ削除をSKIP: $dirPath"
  fi
}

#　==処理の開始==

echo "削除するスライドテーマを入力してください"
read -r slideName
echo "Bye, $slideName! Nice to meet you."

# 入力ファイル名と出力ファイル名を宣言
inputFileName="/$slideName.md"
outputFileName="/$slideName.html"
# ツール毎のディレクトリを宣言
slidevPath="src/slidev/$slideName"
marpInputPath="src/marp/$slideName"
marpOutputPath="output/marp/$slideName"
# ツール毎のファイルのパスを宣言
slidevFilePath="$slidevPath$inputFileName"
marpInputFilePath="$marpInputPath$inputFileName"
marpOutputFilePath="$marpOutputPath$outputFileName"
# 相対パスを特定するためのパスを宣言
CURRENT="$(cd "$(dirname "$0")" && pwd)"
echo "実行中のScriptのパス:$CURRENT"
base="$CURRENT/../../"
echo "Project Root:$base"
# ファイルの状態を取得
status="$(get_status "$base$slidevPath" "$base$marpInputPath")"

# 状態毎に処理を実施
# 処理は，ディレクトリを削除する
case ${status} in
  "BOTHExists")
    delete_file "$base$slidevPath"
    delete_file "$base$marpInputPath"
    delete_file "$base$marpOutputPath"
    echo "BOTHExists";;
  "SlidevOnlyExits")
    delete_file "$base$slidevPath"
    echo "SlidevOnlyExits";;
  "MarpOnlyExits")
    delete_file "$base$marpInputPath"
    delete_file "$base$marpOutputPath"
    echo "MarpOnlyExits";;
  "BOTHAbsent")
    echo "BOTHAbsent";;
  *)
    echo "ERROR"
    exit 1;;
esac
# 処理は，共通処理としてscriptを表示する
generate_script "$slideName" "$slidevFilePath" "$marpInputFilePath" "$marpOutputFilePath"
echo "SUCCESS"
exit 0
