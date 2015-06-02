class Post < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  acts_as_taggable
  mount_uploader :image, ImageUploader

  belongs_to :author
  has_many :comments

  scope :last_num, ->(limit_param) { limit_param.present? ? limit(limit_param).order('id DESC') : all}
  scope :tagged, ->(tags) { tags.present? ? tagged_with([tags], :any => true) : all}
  scope :search_by_title_and_tag, ->(str) {
    if str.present?
      joins(:tags => :taggings).
        where(%{"posts"."title" ILIKE :str OR "tags"."name" ILIKE :str}, :str => "%#{str}%").uniq
    else
      all

    end
  }

  def should_generate_new_friendly_id?
    title_changed? || super
  end

  validates :title, :body, :author_id, :description, presence: true
  validates :title, uniqueness: true

end

# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  body        :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :integer
#  slug        :string
#  description :string
#
