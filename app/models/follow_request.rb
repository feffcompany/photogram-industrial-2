class FollowRequest < ApplicationRecord
  belongs_to :recipient, class_name: "User"
  belongs_to :sender, class_name: "User"

  enum status: { pending: "pending", rejected: "rejected", accepted: "accepted" }

  # assume follow_request is a valid and pending
  follow_request.accepted? # => false
  follow_request.accepted! # sets status to "accepted" and saves

  
end
