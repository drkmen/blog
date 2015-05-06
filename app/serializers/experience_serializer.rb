class ExperienceSerializer < ActiveModel::Serializer

  attributes :id, :job_title, :employer, :description, :from, :to, :study

end