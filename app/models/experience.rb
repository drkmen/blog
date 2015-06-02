class Experience < ActiveRecord::Base
end

# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  job_title   :string
#  employer    :string
#  description :string
#  from        :date
#  to          :date
#  study       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
