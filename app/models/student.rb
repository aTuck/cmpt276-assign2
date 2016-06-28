class Student < ActiveRecord::Base
  validates_presence_of :name, :weight, :height, :color, :gpa
  validates_numericality_of :weight, :height, :gpa
  validates_inclusion_of :weight, in: 100..400
  validates_exclusion_of :weight, in: 0..99
  validates_inclusion_of :height, in: 135..225
  validates_exclusion_of :height, in: 0..134
  validates_inclusion_of :gpa, in: 0..4.3
end
