class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  validates :title, presence: true
  validates :body, presence: true

  def thumbnail input
    return self.image.variant(resize: '300x300!').processed
  end
 
  # def self.search_by(search_term)
  #   where("LOWER(name) LIKE :search_term",
  #    search_term: "%#{search_term.downcase}%")
  # end
  

end
