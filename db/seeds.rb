# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#ジャンル名
Genre.create!(name:"ケーキ")
Genre.create!(name:"プリン")
Genre.create!(name:"焼き菓子")
Genre.create!(name:"キャンディ")

#商品情報
item = Item.create!(
      name: "洋梨のチーズタルト",
      description: "甘い洋梨をふんだんに使用したチーズタルトです。",
      price: 1200,
      genre_id: 1,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/pear_tart.jpeg")),filename: "pear_tart.jpeg")
item = Item.create!(
      name: "ザッハトルテ",
      description: "スポンジ内部にあんずジャムを塗り重ね、チョコレートフォンダンはしっとり滑らかな食感に仕上げました。",
      price: 2900,
      genre_id: 1,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/sachertorte.jpeg")),filename: "sachertorte.jpeg")
item = Item.create!(
      name: "アイスキャンディー",
      description: "ケーキ屋が作った、口当たり滑らかなアイスキャンディーです。",
      price: 800,
      genre_id: 4,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/ice_candy.jpeg")),filename: "ice_candy.jpeg")
item = Item.create!(
      name: "モンブラン",
      description: "渋皮マロンを使用し、栗本来の味が楽しめます！",
      price: 500,
      genre_id: 1,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/montblanc.jpeg")),filename: "montblanc.jpeg")
item = Item.create!(
      name: "卵たっぷり濃厚プリン",
      description: "プリン好きにはたまらない納得のプリンです！",
      price: 500,
      genre_id: 2,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/pudding.jpeg")),filename: "pudding.jpeg")
item = Item.create!(
      name: "紅茶のクッキー",
      description: "オリジナルブレンドでほっと一息",
      price: 800,
      genre_id: 3,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/tea_cookie.jpeg")),filename: "tea_cookie.jpeg")
item = Item.create!(
      name: "フルーツタルト",
      description: "9種類のフルーツを使用し、おいしさをギュギュッとつめこみました！",
      price: 2900,
      genre_id: 1,
      is_active: false )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/fruit_tart.jpeg")),filename: "fruit_tart.jpeg")
item = Item.create!(
      name: "かぼちゃのプリン",
      description: "かぼちゃをふんだんに使用し、口当たりなめらかに仕上げました。",
      price: 480,
      genre_id: 2,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/pumpkin_pudding.jpeg")),filename: "pumpkin_pudding.jpeg")
item = Item.create!(
      name: "マカロン",
      description: "高級感のあるマカロン",
      price: 200,
      genre_id: 3,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/macaron.jpeg")),filename: "macaron.jpeg")
item = Item.create!(
      name: "マカロンセット（8個）",
      description: "よりどりマカロン8個セット",
      price: 1200,
      genre_id: 3,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/macaron.jpeg")),filename: "macaron.jpeg")
item = Item.create!(
      name: "マカロンセット（16個）",
      description: "よりどりマカロン16個セット",
      price: 2000,
      genre_id: 3,
      is_active: false )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/macaron.jpeg")),filename: "macaron.jpeg")
item = Item.create!(
      name: "バナナケーキ",
      description: "農家直送バナナを使用したシフォンケーキ",
      price: 380,
      genre_id: 1,
      is_active: false )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/banana_chiffon_cake.jpeg")),filename: "banana_chiffon_cake.jpeg")
item = Item.create!(
      name: "シュークリーム",
      description: "カスタードクリームをたっぷり使用した食べごたえ抜群のシュークリームです！！",
      price: 480,
      genre_id: 1,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/cream_puff.jpeg")),filename: "cream_puff.jpeg")
item = Item.create!(
      name: "ミルフィーユ",
      description: "サクサクなパイ生地に濃厚なクリームをはさんだ、自慢の逸品！！",
      price: 700,
      genre_id: 1,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/millefeuille.jpeg")),filename: "millefeuille.jpeg")
item = Item.create!(
      name: "チーズケーキ",
      description: "濃くて美味しい、手軽で嬉しい",
      price: 580,
      genre_id: 1,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/cheese_cake.jpeg")),filename: "cheese_cake.jpeg")
item = Item.create!(
      name: "ホールケーキ",
      description: "みんなで分け合うまぁるいしあわせ",
      price: 3200,
      genre_id: 1,
      is_active: true )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/whole_cake.jpeg")),filename: "whole_cake.jpeg")
item = Item.create!(
      name: "チョコレートケーキ(ホール)",
      description: "ビターなチョコレートを使用した大人のホールケーキ",
      price: 3800,
      genre_id: 1,
      is_active: false )
      item.image.attach(io: File.open(Rails.root.join("./app/assets/images/chocolate_cake.jpeg")),filename: "chocolate_cake.jpeg")


#管理者用ログイン情報
Admin.create!(
    email: 'admin@admin.com',
    password: '123456',
)
