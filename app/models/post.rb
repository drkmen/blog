class Post < ActiveRecord::Base

  scope :red, -> { where(color: 'red') }
  scope :last_num, ->(limit_param) { limit_param.present? ? limit(limit_param).order('id DESC') : all}

end
