class Post < ApplicationRecord
    validates :title,presence:true
    validates :start,presence:true
    validates :stop,presence:true
    validates :memo,length:{maximum:200}
    
end
