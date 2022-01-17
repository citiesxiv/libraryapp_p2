class Book < ActiveRecord::Base
    
    has_many :check_outs
    has_many :users, through: :check_outs
    
end
