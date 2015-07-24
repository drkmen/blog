ActiveAdmin.register Post do

  index do
    selectable_column
    column :id
    column :image do |post|
      image_tag(post.image, height: 55)
    end
    column :description
    column :author
    column :title
    column :body do |post|
      truncate(post.body, length: 500)
    end
    column :tag_list
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Post" do
      f.input :title
      f.input :image
      f.input :remote_image_url
      f.input :author, :collection => Author.posts_author
      f.input :description
      f.input :google_desc
      f.input :body, :as => :ckeditor
      f.input :tags, as: :check_boxes
    end
    actions
  end

  permit_params :title, :image, :remote_image_url, :body, :author_id, :description, :google_desc, :tag_ids => []



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
