class Article < ApplicationRecord
    has_many :comments

    validates :name, presence: true,
                    uniqueness: true
    validates :body, presence: true,
                    length: {minimum: 5}
end
