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
  if [ -f "$slidevPath" ] && [ -f "$marpPath" ]; then
    # どちらも存在する
    echo "BOTHExists"
  elif [ -f "$slidevPath" ];then
    echo "SlidevOnlyExits"
  elif [ -f "$marpPath" ];then
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
  echo '####Generated Scripts Slidev & Marp コピーしてpackage.jsonのscriptsに貼り付けてください####'
  # Slidev
  printf '"slidev:open:%s": "slidev %s --open",\n' "$slideName" "$slidevPath"
  printf '"slidev:build:%s": "slidev build %s --out out",\n' "$slideName" "$slidevPath"
  printf '"slidev:export:%s": "slidev export %s",\n' "$slideName" "$slidevPath"
  # Marp
  printf '"marp:generate:%s": "marp %s -o %s -w --html --allow-local-files",\n' "$slideName" "$marpInputPath" "$marpOutputPath"
}

#　ディレクトリとファイル名を受け取ってディレクトリの作成とファイルの作成を行う
#
# 引数1 作成するファイルを格納するディレクトリのパス 例: ./../dir
# 引数2 作成するファイルのフルパス 例:./../dir/fileName
make_file(){
  dirPath=$1
  filePath=$2
  if [ -d "$dirPath" ];then
    echo "ディレクトリ作成をSKIP: $dirPath"
  else
    echo "ディレクトリ作成: $dirPath"
    mkdir -p "$dirPath"
  fi
  echo "ファイルを作成: $filePath"
  touch "$filePath"
}

#　==処理の開始==
echo "新しいスライドテーマを入力してください"
read -r slideName
echo "Hello, $slideName! Nice to meet you."
# ファイル名
inputFileName="/$slideName.md"
outputFileName="/$slideName.html"
# パス
slidevPath="src/slidev/$slideName"
marpInputPath="src/marp/$slideName"
marpOutputPath="output/marp/$slideName"
# ファイルパス
slidevFilePath="$slidevPath$inputFileName"
marpInputFilePath="$marpInputPath$inputFileName"
marpOutputFilePath="$marpOutputPath$outputFileName"
# 相対位置を宣言
CURRENT="$(cd "$(dirname "$0")" && pwd)"
echo "$CURRENT"
base="$CURRENT/../../"
echo "Project Root:$base"
# 状態の取得
status="$(get_status "$base$slidevFilePath" "$base$marpInputFilePath")"

# 状態毎にファイルを作成する
case ${status} in
  "BOTHExists")
    echo "BOTHExists";;
  "SlidevOnlyExits")
    make_file "$base$marpInputPath" "$base$marpInputFilePath"
    echo "SlidevOnlyExits";;
  "MarpOnlyExits")
    make_file "$base$slidevPath" "$base$slidevFilePath"
    echo "MarpOnlyExits";;
  "BOTHAbsent")
    make_file "$base$slidevPath" "$base$slidevFilePath"
    make_file "$base$marpInputPath" "$base$marpInputFilePath"
    echo "BOTHAbsent";;
  *)
    echo "ERROR"
    exit 1;;
esac

# 共通処理としてscriptを表示する
generate_script "$slideName" "$slidevFilePath" "$marpInputFilePath" "$marpOutputFilePath"
echo "SUCCESS"
exit 0
