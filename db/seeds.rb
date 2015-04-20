# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
Author.delete_all
Comment.delete_all
Project.delete_all
Skill.delete_all

Project.create(:name => 'Phonehome',
               :description => "It's a system of monitoring and observing the progress of different server events executing. It is used along with a gem for interacting with API and also background process",
               remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
               tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample])
Project.create(:name => 'App Monitor',
               remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
               :description => 'App Monitor is a system of checking whether a server machine is working and whether it has particular port opened',
               tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample])
Project.create(:name => 'Pokerr.co',
               remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
               :description => 'The project is targeted to mobile usage. Users are able to establish a poker game and invite their friends to come and join. The app is connected with Whatsapp messenger and invitations are sent through it. There is a browser version for iOS which is why I developed a responsive layout for it and a native Android app for which I created a Ruby/Rails-based REST API',
               tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample])

Author.create(:name => 'Mike',
              :remote_image_url => 'http://cs306711.vk.me/v306711995/9eeb/HkaIDcDflrs.jpg',
              :url => 'http://vk.com/imdark',
              :about => 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing')
Author.create(:name => 'Habrahabr',
              :remote_image_url => 'http://sitereviews.ru/wp-content/uploads/2013/06/habrahabr_index.png',
              :url => 'http://habrahabr.ru',
              :about => 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing')

date = Date.new(2013, 5, 20) # May, 20, 2013

Skill.create(:name => 'Ruby', :start_date => date, :value => 65)
Skill.create(:name => 'RubyOnRails', :start_date => date, :value => 65)
Skill.create(:name => 'HTML', :start_date => Date.new(2010, 1, 1), :value => 55)
Skill.create(:name => 'CSS', :start_date => Date.new(2010, 1, 1), :value => 55)
Skill.create(:name => 'Sass/Scss', :start_date => date, :value => 55)
Skill.create(:name => 'JS/Coffee', :start_date => date, :value => 65)
Skill.create(:name => 'jQuery/Ajax', :start_date => date, :value => 70)
Skill.create(:name => 'Ember.js', :start_date => date, :value => 50)
Skill.create(:name => 'Relational DB', :start_date => Date.new(2010, 1, 1), :value => 35)
Skill.create(:name => 'Document-oriented DB', :start_date => date, :value => 10)
Skill.create(:name => 'NoSQL DB', :start_date => date, :value => 10)
Skill.create(:name => 'Linux administration', :start_date => date, :value => 10)

ActsAsTaggableOn::Tag.create(:name => 'Ruby')
ActsAsTaggableOn::Tag.create(:name => 'RubyOnRails')
ActsAsTaggableOn::Tag.create(:name => 'HTML')
ActsAsTaggableOn::Tag.create(:name => 'Haml')
ActsAsTaggableOn::Tag.create(:name => 'CSS')
ActsAsTaggableOn::Tag.create(:name => 'Sass')
ActsAsTaggableOn::Tag.create(:name => 'Scss')
ActsAsTaggableOn::Tag.create(:name => 'JavaScript')
ActsAsTaggableOn::Tag.create(:name => 'CoffeeScript')
ActsAsTaggableOn::Tag.create(:name => 'jQuery')
ActsAsTaggableOn::Tag.create(:name => 'Ajax')
ActsAsTaggableOn::Tag.create(:name => 'Ember.js')
ActsAsTaggableOn::Tag.create(:name => 'MySQL')
ActsAsTaggableOn::Tag.create(:name => 'PostgreSQL')
ActsAsTaggableOn::Tag.create(:name => 'Redis')
ActsAsTaggableOn::Tag.create(:name => 'MongoDB')
ActsAsTaggableOn::Tag.create(:name => '3rd API')
ActsAsTaggableOn::Tag.create(:name => 'DB')
ActsAsTaggableOn::Tag.create(:name => 'Other')

Post.create(title: 'Full-Screen Images In Post',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            remote_image_url: 'https://demo.gavick.com/joomla25/writer/media/k2/items/cache/e213534406f5e673030b12a49a117407_XL.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)
Post.create(title: 'Lorem Malesuada Cursus',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)
Post.create(title: 'Vulputate Ridiculus Fusce Pharetra Tristique',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            remote_image_url: 'http://cs306214.vk.me/v306214768/1785/3zQ9q_aMmhc.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)

Post.create(title: 'Vulputate Ridiculus Fusce Pharetra Tristique',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)

Post.create(title: 'Vulputate Ridiculus Fusce Pharetra Tristique',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)

Post.create(title: 'Vulputate Ridiculus Fusce Pharetra Tristique',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)

10.times do
  Comment.create(:body => 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus.',
                 :author_id => Author.all.sample.id,
                 :post_id => Post.all.sample.id
  )
end