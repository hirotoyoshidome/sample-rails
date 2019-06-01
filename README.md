# SampleRails

## 環境
* Ruby ver 2.5.1
* Rails 5.2.0

## 内容
* ```http://localhost:3000/```でRailsのトップ画面に遷移


* ```http://localhost:3000/sample/up```で実装したサンプルの画面に遷移


* ```http://localhost:3000/```でrootに設定した画面が出力されるように設定


* ```rails generate model Sample name age```でDBのテーブルに対応したModelを作成する


* formタグの動作確認と書き方


* scaffoldは使用していない```(rails generate scaffold モデル名 カラム名)```


* postで送信したときのparamsでの取得

* ```rake db:create```でDB作成
* ```rake db:migrate```でマイグレーションスクリプト実行しテーブルを作成する
* ```rake db:seed```でseeds.rbに記述されたテストデータのinsertを行う
(seeds.rbを実行するとschema.rbファイルが作成されDBの中身が記述されている)

* Modelの情報をコントローラからviewに渡すとviewで出力することができる


## 注意点
* 通常通りrails new アプリケーション名　で作成
* 動作確認のため rails serverを行ったがsqlite3のエラーで起動しなかった
* gem uninstall sqlite3　でアンインストール
* ```http://www.sqlite.org/download.html```に行きSource Codeをダウンロードして任意のディレクトリに展開
* Precompiled Binaries for Windowsをダウンロード解凍して２つのファイルを```C:\Ruby25-x64\bin```に配置
* コマンドプロンプトを起動してsqlite3がインストールされていないかを確認 ```gem search --local sqlite3```
* ```C:\Ruby25-x64\lib\ruby\gems\2.5.0\gems\sqlite3-1.3.13``` でバージョンを確認する
* 確認出来たら下記コマンドでインストールする

```gem install sqlite3 -v"=1.3.13" --platform=ruby -- --with-sqlite3-include=Source Codeを展開したルートディレクトリ --with-sqlite3-lib=C:\Ruby25-x64\bin```

*  インストール完了後 ```C:\Ruby25-x64\lib\ruby\gems\2.5.0\gems\sqlite3-1.3.13\lib\sqlite3``` に ```sqlite3_native.so```が生成されていることを確認

* アプリケーションのルートディレクトリで ```rails server```でサーバーが起動することを確認(port 3000)


* ```rake db:reset``` ```rails db:reset``` ```rails db:migrate:reset```
全部やったけどdropできなかった


* post送信するときにModelと紐づかない場合Modelのクラスを使用してはいけない


* form_forとform_tagではオプションの記述の仕方が異なる


* formを記述する場合にform内の項目をなしで起動したらエラーになる
