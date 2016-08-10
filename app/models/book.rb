class Book < ActiveRecord::Base
    belongs_to :subject
    validates :title, presence: :true
    validates :author, presence: :true
    validates :the_number_of_pages, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

