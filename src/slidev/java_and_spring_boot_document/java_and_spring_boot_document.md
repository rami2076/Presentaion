---
theme: apple-basic # https://sli.dev/themes/gallery.html
title: JavaとSpring Bootに関連するドキュメント
lineNumbers: true
background: https://fastly.picsum.photos/id/130/1920/1080.jpg?hmac=CnS3QcMe52jnvtdE0r_YD6qVMEHsWuY1j998yYdVhC8
htmlAttrs:
  lang: jp
---

# Java関連ドキュメントの紹介

---
layout: intro
---

# はじめに

## What

この資料では，Java関連資料をユースケース別に紹介していきます．

## Motivation

色々使える資料があるので紹介したいという気持ちから紹介しています！  
あまり深掘りせず，軽い紹介をイメージしています！

<!-- 質問などがあれば随時うけつけています！ -->

---
layout: section
---

# 目次

---
layout: two-cols
---

## 実用度が高い編

1. Javaの関数の定義を知りたい
1. Spring Bootのテストの書き方を知りたい
1. Spring Bootで設定できる項目を知りたい
    1. ドキュメントが見つからない編
1. 使用しているライブラリの詳細を知りたい

::right::

## 実用度が低い編

1. Javadocのバージョンごとの差分を確認したい
1. Javaの開発中の機能について確認したい
1. Javaの特定の機能がなぜ追加されたかを知りたい
1. Javaの言語仕様を確認したい
1. JVMの仕様を確認したい

---
layout: center
---

# 多くない？

---
layout: center
---

# 正直多い

---
layout: center
---

# 多いので実用度が高い編の紹介をします．

---
layout: section
---

# Javaの関数の定義を知りたい

---
layout: default
---

# Javaの関数の定義を知りたい

## 選択肢

| 確認方法                  | 選択する理由               |
|-----------------------|----------------------|
| DLしたソースをIDEでみる        | 手軽に確認できるため           |
| ブログなどで確認              | 検索で上位にでてくるため         |
| Webに公開されているjavadocをみる | 手元にソースがなくとも正確なことを知れる |

今回は`Webに公開されているjavadocをみる`について紹介

### Webに公開されているjavadocをみる方法について

![](/img/search.png)

---
layout: fact
---

## 簡単・うれしい

[検索結果](https://www.google.com/search?q=javadoc+java+23+String&sca_esv=5571eca2e3b5ace7&rlz=1C5GCEA_enJP1025JP1025&sxsrf=ADLYWILkKTkYavvkl1KsuE7m5IhZSVtLvg%3A1735975318500&ei=luF4Z8OUHpnBvr0PzOqYoQU&ved=0ahUKEwjDt8qBxNuKAxWZoK8BHUw1JlQQ4dUDCBA&uact=5&oq=javadoc+java+23+String&gs_lp=Egxnd3Mtd2l6LXNlcnAiFmphdmFkb2MgamF2YSAyMyBTdHJpbmcyCBAAGIAEGKIEMggQABiiBBiJBTIIEAAYgAQYogRIoQ5Q5wFYlQxwAXgAkAEAmAGcAaAB4wWqAQM0LjO4AQPIAQD4AQGYAgigAu4FwgILEAAYgAQYsAMYywHCAgsQABiABBiwAxiiBMICCxAAGLADGKIEGIkFwgIEEAAYHsICBRAhGKABwgIEECEYFZgDAIgGAZAGBJIHAzUuM6AHygk&sclient=gws-wiz-serp)

---
layout: default
---

## Javadocおさらい

[String](https://docs.oracle.com/en/java/javase/23/docs/api/java.base/java/lang/String.html)

[Function](https://docs.oracle.com/en/java/javase/23/docs/api/java.base/java/util/function/Function.html)

![](/img/javadoc1.png)

---
layout: section
---

# Spring Bootのテストの書き方を知りたい

---
layout: default
---

# Spring Bootのテストの書き方を知りたい

| 確認方法               | 選択する理由            | 欠点      | 
|--------------------|-------------------|---------|
| ブログなどで確認           | 検索で上位に出てくる        | 正確性に欠ける |
| Spring Boot公式資料をみる | 公式サポートされており信頼性がある | 探しづらい   |

## Spring Bootのおすすめ資料

![](/img/search2.png)

`Spring boot reference singlehtml`


---
layout: default
---

# 例

Controllerのテストを調べたい:
[MockMvc](https://docs.spring.io/spring-boot/docs/3.1.3/reference/htmlsingle/#features.testing.spring-boot-applications.with-mock-environment)

![](/img/reference1.png)

---
layout: fact
---

## importするクラス名もわかって嬉しい
