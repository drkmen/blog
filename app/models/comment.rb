class Comment < ActiveRecord::Base
  belongs_to :author
  belongs_to :post

  validates :body, presence: true, length: { minimum: 2, maximum: 500 }
  validates :author, presence: true
end

# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  post_id    :integer
#
