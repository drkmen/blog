class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :body, :tags, :author, :created_at, :updated_at, :comments
end
