ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do

      column do
        panel "Finish this!" do
          ul do
            Post.where(hidden: true).map do |post|
              li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end

      column do
        panel "Comments" do
          ul do
            Comment.last(5).map do |comment|
              li comment.body
            end
          end
        end
      end
    end

  end # content
end
