class SkillSerializer < ActiveModel::Serializer

  attributes :id, :name, :value, :start_date

end

# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  value      :integer
#  start_date :date
#
