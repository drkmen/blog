ActiveAdmin.register Comment, as: 'Post Comments' do
  index do
    selectable_column
    column :id
    column :author
    column :body
    column :created_at
    actions
  end
end
