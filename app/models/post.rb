class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: (['Fiction', 'Non-Fiction']) }
    validate :must_contain, on: create


    def must_contain
        unless :title.include?("Won't Believe", "Secret",  "Top [number]", "Guess")
            :title
        else 
            nil
        end
    end


end

