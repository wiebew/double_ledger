class Journal < ActiveRecord::Base
  has_many :journal_items
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :description
end
