# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Message < ApplicationRecord
  validates :sender_id,
            :receiver_id,
            :body, presence: true
  belongs_to :sending_user, :class_name => "User", :foreign_key => "sender_id"
  belongs_to :receiving_user, :class_name => "User", :foreign_key => "receiver_id"
end
