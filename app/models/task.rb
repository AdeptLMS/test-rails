class Task < ApplicationRecord
  belongs_to :todo

  validates_presence_of :title
end
