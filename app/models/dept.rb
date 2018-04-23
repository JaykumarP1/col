class Dept < ApplicationRecord
  validates_presence_of :name
  has_many :studs,dependent: :destroy
  has_and_belongs_to_many :teachers
end
