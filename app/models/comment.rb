class Comment < ActiveRecord::Base
  belongs_to :article

  validates :text, presence: true
end
