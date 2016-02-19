class DocumentItem < ActiveRecord::Base
  belongs_to :document
  belongs_to :item
end
