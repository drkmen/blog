class Post < ActiveRecord::Base

  acts_as_taggable

  belongs_to :author
  has_many :comments

  scope :last_num, ->(limit_param) { limit_param.present? ? limit(limit_param).order('id DESC') : all}
  scope :tagged, ->(tags) { tags.present? ? tagged_with([tags], :any => true) : all}


end
