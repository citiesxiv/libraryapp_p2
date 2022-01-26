class Book < ApplicationRecord
    belongs_to :library
    has_many :histories
    has_many :requests
    has_many :check_outs
    has_many :users, through: :check_outs
    
end
