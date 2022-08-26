# :birthday:ながのCAKE
長野県にある小さな洋菓子店「ながのCAKE」の商品を通販するためのECサイト

## :thought_balloon:背景
元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文がくるようになった。  
InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、管理機能を含んだ通販サイトを開設しようと思い至った。

## :gem:開発環境
**Ruby on Rails**

## :wrench:インストール手順
```
  $ git clone https://github.com/redhotchicken/nagano_cake
  $ cd nagano_cake
  $ bundle install
  $ rails db:migrate
  $ rails db:seed
  $ rails s
```
* :bust_in_silhouette:管理者ログイン：～/admin/sign_in
* :envelope:メールアドレス：admin@admin.com
* :key:パスワード：123456

## :closed_book:設計書
### :memo:ER図
![長野cake(チームレッドホットチキン) drawio](https://user-images.githubusercontent.com/107116943/186802669-90c27fea-e395-46d5-86a9-40f2b8e96413.png)

### :memo:顧客側側ルーティング
![アプリケーション詳細設計書_public](https://user-images.githubusercontent.com/107116943/186803975-8a0ab479-3d5b-4431-9fce-53de37eae8b4.png)

### :memo:管理者側ルーティング
![アプリケーション詳細設計書_admin](https://user-images.githubusercontent.com/107116943/186803965-f85583c1-1db9-44cf-adde-219d5444c881.png)

## 開発者
### チーム名
:poultry_leg:チームレッドホットチキン:chicken:

### メンバー
* がんちゃん
* かっちゃん
* ちーちゃん
* りおちゃん
