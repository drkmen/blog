require 'faker'

Post.delete_all
Author.delete_all
Comment.delete_all
Project.delete_all
Skill.delete_all
ActsAsTaggableOn::Tag.delete_all

Author.create(name: 'Mike',
              remote_image_url: 'http://cs306711.vk.me/v306711995/9eeb/HkaIDcDflrs.jpg',
              about: Faker::Hacker.say_something_smart)
Author.create(name: 'Habrahabr',
              remote_image_url: 'http://sitereviews.ru/wp-content/uploads/2013/06/habrahabr_index.png',
              about: Faker::Hacker.say_something_smart)

date = Date.new(2013, 5, 20) # May, 20, 2013

Skill.create(name: 'Ruby', start_date: date, value: 75)
Skill.create(name: 'RubyOnRails', start_date: date, value: 75)
Skill.create(name: 'HTML', start_date: Date.new(2010, 1, 1), value: 55)
Skill.create(name: 'CSS', start_date: Date.new(2010, 1, 1), value: 55)
Skill.create(name: 'Sass/Scss', start_date: date, value: 55)
Skill.create(name: 'JS/Coffee', start_date: date, value: 65)
Skill.create(name: 'jQuery/Ajax', start_date: date, value: 70)
Skill.create(name: 'Ember.js', start_date: date, value: 50)
Skill.create(name: 'React.js', start_date: Date.new(2017, 12, 20), value: 20)
Skill.create(name: 'Relational DB', start_date: Date.new(2010, 1, 1), value: 45)
Skill.create(name: 'Document-oriented DB', start_date: date, value: 60)
Skill.create(name: 'NoSQL DB', start_date: date, value: 10)
Skill.create(name: 'Linux administration', start_date: date, value: 20)

ActsAsTaggableOn::Tag.create(name: 'Ruby')
ActsAsTaggableOn::Tag.create(name: 'RubyOnRails')
ActsAsTaggableOn::Tag.create(name: 'HTML')
ActsAsTaggableOn::Tag.create(name: 'Haml')
ActsAsTaggableOn::Tag.create(name: 'CSS')
ActsAsTaggableOn::Tag.create(name: 'Sass')
ActsAsTaggableOn::Tag.create(name: 'Scss')
ActsAsTaggableOn::Tag.create(name: 'JavaScript')
ActsAsTaggableOn::Tag.create(name: 'CoffeeScript')
ActsAsTaggableOn::Tag.create(name: 'jQuery')
ActsAsTaggableOn::Tag.create(name: 'Ajax')
ActsAsTaggableOn::Tag.create(name: 'Ember.js')
ActsAsTaggableOn::Tag.create(name: 'MySQL')
ActsAsTaggableOn::Tag.create(name: 'PostgreSQL')
ActsAsTaggableOn::Tag.create(name: 'Redis')
ActsAsTaggableOn::Tag.create(name: 'MongoDB')
ActsAsTaggableOn::Tag.create(name: '3rd API')
ActsAsTaggableOn::Tag.create(name: 'DB')
ActsAsTaggableOn::Tag.create(name: 'Other')

Experience.create(job_title: 'Software engineering', employer: 'Zaporizhzhya National Technical University',
                  description: "Bachelor's degree", from: '01-09-2011'.to_date, to: '30-06-2014'.to_date, study: true)
Experience.create(job_title: 'Software development', employer: 'Zaporizhzhya Electrical Engineering College',
                  from: '01-09-2007'.to_date, to: '30-06-2011'.to_date, study: true)
Experience.create(job_title: 'Full Stack Ruby/Ruby on Rails developer', employer: 'Face IT',
                  from: '20-05-2013'.to_date, study: false)


Project.create(name: 'Phonehome', link: 'http://phonehome.io',
               description: "It's a system of monitoring and observing the progress of different server events executing. It is used along with a gem for interacting with API and also background process",
               remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
               tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample])
Project.create(name: 'App Monitor', link: 'http://example.com',
               remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
               description: 'App Monitor is a system of checking whether a server machine is working and whether it has particular port opened',
               tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample])
Project.create(name: 'Pokerr.co', link: 'http://example.com',
               remote_image_url: 'http://www.3dmgame.com/uploads/allimg/130604/153_130604150048_4.jpg',
               description: 'The project is targeted to mobile usage. Users are able to establish a poker game and invite their friends to come and join. The app is connected with Whatsapp messenger and invitations are sent through it. There is a browser version for iOS which is why I developed a responsive layout for it and a native Android app for which I created a Ruby/Rails-based REST API',
               tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample])

7.times do
  post = Post.create(title: Faker::Hacker.say_something_smart,
              body: Faker::Lorem.paragraph(50),
              description: Faker::Lorem.sentence(20),
              tags: [ActsAsTaggableOn::Tag.all.sample, ActsAsTaggableOn::Tag.all.sample])
  5.times do
    post.comments.new(body: Faker::Hacker.say_something_smart,
                   author_id: Author.all.sample.id).save
  end
end