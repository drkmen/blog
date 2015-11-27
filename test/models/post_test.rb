require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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
#  slug        :string
#  description :string
#  google_desc :string
#  hidden      :boolean          default(FALSE)
#
