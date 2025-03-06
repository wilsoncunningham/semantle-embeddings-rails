# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  embedding  :cube
#  word       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
  has_neighbors :embedding
end
