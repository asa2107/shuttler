# == Schema Information
#
# Table name: matches
#
#  id          :integer          not null, primary key
#  creator_id  :integer
#  acceptor_id :integer
#  listing_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Match < ApplicationRecord
  validates :creator_id,
            :acceptor_id,
            :listing_id, presence: true

  belongs_to :listing
end
