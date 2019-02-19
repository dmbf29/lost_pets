# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  name       :string
#  found_on   :date
#  dead       :boolean          default(FALSE)
#  location   :string
#  species    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pet < ApplicationRecord
  # associations -> none
  SPECIES = %w(cat dog iguana bear fox fish)
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end










