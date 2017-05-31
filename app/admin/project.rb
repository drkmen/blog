ActiveAdmin.register Project do
  index do
    selectable_column
    column :id
    column :image do |post|
      image_tag(post.image, height: 55)
    end
    column :name
    column :link
    column :description
    column :tag_list
    column :created_at
    actions
  end

  form do |f|
    f.inputs 'Project' do
      f.input :name
      f.input :description
      f.input :link
      f.input :image
      f.input :remote_image_url
      f.input :tags, as: :check_boxes
    end
    actions
  end

  permit_params :name, :description, :image, :remote_image_url, :link, tag_ids: []
end
