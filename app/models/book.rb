class Book < ApplicationRecord
  belongs_to :readable, polymorphic: true
end
