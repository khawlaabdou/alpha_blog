class Article < ApplicationRecord
    validates :title, presence: true, length: {minimun: 3, maximum: 30}
    validates :description, presence: true, length: {minimun: 10, maximum: 300}



end