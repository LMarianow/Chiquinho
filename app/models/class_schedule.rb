# Model class to represent the relation between class and user schedule

class ClassSchedule < ApplicationRecord
  belongs_to :class_hour
  belongs_to :subject_class
  belongs_to :week_day
end
