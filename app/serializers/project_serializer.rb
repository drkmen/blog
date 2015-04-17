class ProjectSerializer < ActiveModel::Serializer

  attributes :id, :name, :image_path, :description, :link, :tags

  def image_path
    object.image_url
  end

end
