class Article < ApplicationRecord
    validates :title, presence: true, length: { maximum: 50 }
    validates :body, presence: true
end


class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    # 既存バリデーション等があれ維持
end