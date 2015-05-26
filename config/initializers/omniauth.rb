Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vkontakte, ENV['VK_APP_ID'], ENV['VK_API_SECRET'],
           {
               :scope => 'wall',
               :display => 'popup',
               :image_size => 'original'
           }
  provider :twitter, ENV['TW_API_KEY'], ENV['TW_SECRET_KEY'],
           {
               :image_size => 'original'
           }
  provider :gplus, ENV['GPLUS_KEY'], ENV['GPLUS_SECRET'],
           {
               :scope => 'plus.login'
           }
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
          {
              :image_size => 'large',
              :secure_image_url => true
          }

end