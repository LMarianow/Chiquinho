class StudyMaterial < ApplicationRecord
  has_one_attached :file
  has_one :user
  has_one :professor_subject
end
