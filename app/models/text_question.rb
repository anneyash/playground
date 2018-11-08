class TextQuestion < ApplicationRecord
  belongs_to :country, :through => :visa_application
end
