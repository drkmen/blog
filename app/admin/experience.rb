ActiveAdmin.register Experience do
  form do |f|
    f.inputs 'Post' do
      f.input :job_title
      f.input :employer
      f.input :description
      f.input :from, start_year: 2007
      f.input :to
      f.input :study
    end
    actions
  end

  permit_params :job_title, :employer, :description, :from, :to, :study
end
