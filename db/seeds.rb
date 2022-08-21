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
Item.create!(
  name: "洋梨のチーズタルト",
  description: "甘い洋梨をふんだんに使用したチーズタルトです。",
  price: "1200",
  genre_id: 1,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "ザッハトルテ",
  description: "スポンジ内部にあんずジャムを塗り重ね、チョコレートフォンダンはしっとり滑らかな食感に仕上げました。",
  price: "2900",
  genre_id: 1,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "アイスキャンディー",
  description: "ケーキ屋が作った、口当たり滑らかなアイスキャンディーです。",
  price: "800",
  genre_id: 4,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "モンブラン",
  description: "渋皮マロンを使用し、栗本来の味が楽しめます！",
  price: "500",
  genre_id: 1,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "卵たっぷり濃厚プリン",
  description: "プリン好きにはたまらない納得のプリンです！",
  price: "500",
  genre_id: 2,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "紅茶のクッキー",
  description: "オリジナルブレンドでほっと一息",
  price: "800",
  genre_id: 3,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "フルーツタルト",
  description: "9種類のフルーツを使用し、おいしさをギュギュッとつめこみました！",
  price: "2900",
  genre_id: 1,
  is_active: false,
  #image: open("")
)
Item.create!(
  name: "かぼちゃのプリン",
  description: "かぼちゃをふんだんに使用し、口当たりなめらかに仕上げました。",
  price: "480",
  genre_id: 2,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "マカロン",
  description: "高級感のあるマカロン",
  price: "200",
  genre_id: 3,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "マカロンセット（8個）",
  description: "よりどりマカロン8個セット",
  price: "1200",
  genre_id: 3,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "マカロンセット（16個）",
  description: "よりどりマカロン16個セット",
  price: "2000",
  genre_id: 3,
  is_active: false,
  #image: open("")
)
Item.create!(
  name: "バナナケーキ",
  description: "農家直送バナナを使用したショートケーキ",
  price: "980",
  genre_id: 1,
  is_active: false,
  #image: open("")
)
Item.create!(
  name: "シュークリーム",
  description: "カスタードクリームをたっぷり使用した食べごたえ抜群のシュークリームです！！",
  price: "480",
  genre_id: 1,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "ミルフィーユ",
  description: "サクサクなパイ生地に濃厚なクリームをはさんだ、自慢の逸品！！",
  price: "700",
  genre_id: 1,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "チーズケーキ",
  description: "濃くて美味しい、手軽で嬉しい",
  price: "580",
  genre_id: 1,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "ホールケーキ",
  description: "みんなで分け合うまぁるいしあわせ",
  price: "3200",
  genre_id: 1,
  is_active: true,
  #image: open("")
)
Item.create!(
  name: "チョコレートケーキ(ホール)",
  description: "ビターなチョコレートを使用した大人のホールケーキ",
  price: "3800",
  genre_id: 1,
  is_active: false,
  #image: open("")
)


#管理者用ログイン情報
Admin.create!(
    email: 'admin@admin.com',
    password: '123456',
)
