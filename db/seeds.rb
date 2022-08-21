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
Genre.create!(name: "キャンディ")

#商品情報
Product.create!(
  name: "洋梨のチーズタルト",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "ザッハトルテ",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "モンブラン",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "卵たっぷり濃厚プリン",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "紅茶のクッキー",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "フルーツタルト",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "かぼちゃのプリン",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "マカロン",
  description: "高級感のあるマカロン",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "マカロンセット（8個）",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "マカロンセット（16個）",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "バナナケーキ",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "ショートケーキ",
  description: "甘くて美味しいイチゴのショートケーキ",
  price: "500",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "洋梨のチーズタルト",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "洋梨のチーズタルト",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "洋梨のチーズタルト",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)
Product.create!(
  name: "洋梨のチーズタルト",
  description: "甘い洋梨をふんだんに使用したチーズタルト",
  price: "1,200",
  genre_id: 1,
  is_status: [['販売中', true], ['販売停止中', false]],
  #image: open("")
)


#管理者用ログイン情報
Admin.create!(
    email: 'admin@admin.com',
    password: '123456',
)
