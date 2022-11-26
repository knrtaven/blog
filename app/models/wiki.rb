class Wiki < ApplicationRecord
    validates :name, presence: true,

    validates :year_model, presence: true,
        numericality: {greater_than: 1937}
    validates :chassis_model, presence:true,
                            uniqueness: true
    validates :description, presence: true,
                    length: {minimum: 15}                
end
