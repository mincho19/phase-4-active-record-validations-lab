class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}


    # def clickbait
    #     unless email.match?(/flatironschool.com/)
    #       errors.add(:email, "We're only allowed to have people who work for the company in the database!")
    #     end
    # end
end
