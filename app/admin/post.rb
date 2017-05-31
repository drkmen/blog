ActiveAdmin.register Post do
  index do
    selectable_column
    column :id
    column :image do |post|
      image_tag(post.image, height: 55)
    end
    column :description
    column :title
    column :body do |post|
      truncate(post.body, length: 500)
    end
    column :hidden
    column :tag_list
    column :created_at
    actions
  end

  form do |f|
    f.inputs 'Post' do
      f.input :title
      f.input :image
      f.input :remote_image_url
      f.input :description
      f.input :google_desc
      f.input :hidden
      f.input :body, as: :ckeditor
      f.input :tags, as: :check_boxes
    end
    actions
  end

  permit_params :title, :image, :remote_image_url, :body, :description,
                :google_desc, :hidden, tag_ids: []
end
