#Grootboek rekening
class LedgerAccount < ActiveRecord::Base
  has_many :journal_items

  validates_presence_of :account
  validates_presence_of :description
  validates_uniqueness_of :account
  validates_uniqueness_of :description

end
