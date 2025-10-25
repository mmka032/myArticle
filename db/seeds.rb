# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Article.destroy_all
Article.create!(
    [
        { title: "はじめての投稿", body: "これは最初のサンプル記事です。", summary: "やったね" },
        { title: "Rails入門", body: "scaffoldを使ってCRUDを作成しました。", summary: "CRUDは大切です。" },
        { title: "Bootstrap導入済み", body: "見た目がきれいになりました。", summary: "キレイキレイ🎶" },
        { title: "今日のご飯", body: "美味しいナポリタン", summary: "後輩の料理奪ってやった" },
        { title: "今日のご褒美", body: "お寿司〜くら寿司〜", summary: "家族で" },
        { title: "50音", body: "あいうえお", summary: "絵ぢwef日瀬fヒエwhf家whf井上whf位ウェhfsfishfiewhfiuehf上フィエフィサフィアふぃ英エフィうぇfh" },
    ]
)

puts "記事を #{Article.count} 件作成しました。"