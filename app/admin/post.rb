ActiveAdmin.register Post do

  index do
    selectable_column
    column :id
    column :image do |post|
      image_tag(post.image, height: 55)
    end
    column :author
    column :title
    column :body
    column :tag_list
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Post" do
      f.input :title
      f.input :image
      f.input :remote_image_url
      f.input :author
      f.input :body
      f.input :tags, as: :check_boxes
    end
    actions
  end

  permit_params :title, :image, :remote_image_url, :body, :author_id, :tag_ids => []



  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end



end
