class ProjectSerializer < ActiveModel::Serializer

  attributes :id, :name, :image_path, :description, :link, :tags

  def image_path
    object.image_url
  end

end

# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  link        :string
#
