# Journaal
class Journal < ActiveRecord::Base
  has_many :journal_items
end
