class PostSerializer < ActiveModel::Serializer

  attributes :id, :title, :image_path, :body, :tags, :created_at, :updated_at, :comments, :friendly_id

  has_one :author

  def image_path
    object.image_url
  end

end

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
