class ExperienceSerializer < ActiveModel::Serializer

  attributes :id, :job_title, :employer, :description, :from, :to, :study

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
