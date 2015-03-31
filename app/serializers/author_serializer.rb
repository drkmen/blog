class AuthorSerializer < ActiveModel::Serializer

  attributes :id, :name, :about, :url, :image, :posts

end