class AuthorSerializer < ActiveModel::Serializer

  attributes :id, :name, :about, :image_path

  def image_path
    object.image_url
  end

end
# == Schema Information
#
# Table name: authors
#
#  id           :integer          not null, primary key
#  name         :string
#  image        :string
#  url          :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  about        :text
#  posts_author :boolean          default(FALSE)
#

#
