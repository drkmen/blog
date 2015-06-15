ActiveAdmin.register Author do

  index do
    selectable_column
    column :id
    column :posts_author
    column :image do |author|
      image_tag(author.image, height: 55)
    end
    column :name
    column :about
    column :url
    actions
  end

  form do |f|
    f.inputs "Author" do
      f.input :name
      f.input :posts_author
      f.input :image
      f.input :remote_image_url
      f.input :about
      f.input :url
    end
    actions
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :name, :image, :remote_image_url, :about, :url, :posts_author

  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end




end
