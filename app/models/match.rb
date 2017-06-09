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
#  status      :boolean
#  state       :integer
#  requested   :integer
#

class Match < ApplicationRecord
  validates :creator_id,
            :acceptor_id,
            :listing_id, presence: true

  belongs_to :listing
  belongs_to :creating_user, :class_name => "User", :foreign_key => "creator_id"
  belongs_to :accepting_user, :class_name => "User", :foreign_key => "acceptor_id"
end
