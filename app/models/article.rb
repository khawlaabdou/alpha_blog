class Article < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: {minimun: 3, maximum: 30}
    validates :description, presence: true, length: {minimun: 10, maximum: 300}
    validates :user_id, presence: true



end