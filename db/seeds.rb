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

Author.create(:name => 'Mike', :image => 'http://cs306711.vk.me/v306711995/9eeb/HkaIDcDflrs.jpg' ,:url => 'http://vk.com/imdark')
Author.create(:name => 'Habrahabr', :image => 'http://sitereviews.ru/wp-content/uploads/2013/06/habrahabr_index.png', :url => 'http://habrahabr.ru')

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

Post.create(title: 'Full-Screen Images In Post',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            image: 'https://demo.gavick.com/joomla25/writer/media/k2/items/cache/e213534406f5e673030b12a49a117407_XL.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)
Post.create(title: 'Lorem Malesuada Cursus',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            image: 'http://img0.joyreactor.cc/pics/post/full/%D0%BA%D0%BE%D1%82%D1%8D-%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B0%D1%8F-%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B0-%D1%84%D0%BE%D1%82%D0%BE-%D0%BA%D0%BE%D1%82%D0%B5%D0%B9%D0%BA%D0%B0-658890.jpeg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)
Post.create(title: 'Vulputate Ridiculus Fusce Pharetra Tristique',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            image: 'http://cs306214.vk.me/v306214768/1785/3zQ9q_aMmhc.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)

Post.create(title: 'Vulputate Ridiculus Fusce Pharetra Tristique',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            image: 'http://img0.joyreactor.cc/pics/post/full/Sci-Fi-art-%D0%BA%D1%80%D0%B0%D1%81%D0%B8%D0%B2%D1%8B%D0%B5-%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B8-Starcraft-2-662703.jpeg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)

Post.create(title: 'Vulputate Ridiculus Fusce Pharetra Tristique',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            image: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)

Post.create(title: 'Vulputate Ridiculus Fusce Pharetra Tristique',
            body: 'Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                  Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.
                  Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.
                  Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
            image: 'http://img0.joyreactor.cc/pics/post/full/%D0%BF%D1%80%D0%BE%D1%81%D1%82%D0%BE-%D0%BA%D1%80%D0%B0%D1%81%D0%B8%D0%B2%D1%8B%D0%B5-%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B8-%D0%B2-%D0%BA%D0%BE%D0%BC%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D1%80%D0%B8%D1%8F%D1%85-%D0%B5%D1%89%D1%91-%D0%BF%D0%B5%D1%81%D0%BE%D1%87%D0%BD%D0%B8%D1%86%D0%B0-647906.jpeg',
            author_id: Author.all.sample.id,
            tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample]
)

5.times do
  Comment.create(:body => 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus.',
                 :author_id => Author.all.sample.id,
                 :post_id => Post.all.sample.id
  )
end