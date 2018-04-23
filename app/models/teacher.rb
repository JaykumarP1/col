class Teacher < ApplicationRecord
  has_and_belongs_to_many :depts
  validates_presence_of :name
end
