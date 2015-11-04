require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: authors
#
#  id           :integer          not null, primary key
#  name         :string
#  image        :string
#  url          :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  about        :text
#  posts_author :boolean          default(FALSE)
#
