class Stud < ApplicationRecord
  validates_presence_of :name, :dept_id
  belongs_to :dept
  has_many :books, as: :readable
end
