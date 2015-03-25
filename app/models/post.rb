class Post < ActiveRecord::Base

  acts_as_taggable

  belongs_to :author
  has_many :comments

  scope :red, -> { where(color: 'red') }
  scope :last_num, ->(limit_param) { limit_param.present? ? limit(limit_param).order('id DESC') : all}



end
