class VenueListing < ApplicationRecord
  belongs_to :company
has_many :photos

end
