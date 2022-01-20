class Book < ApplicationRecord
    has_many :histories
    has_many :check_outs
    has_many :users, through: :check_outs
    
end
