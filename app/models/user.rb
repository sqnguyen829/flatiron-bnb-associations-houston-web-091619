class User < ApplicationRecord
    # has_many :listings
    has_many :listings, :foreign_key => 'host_id'
    has_many :reservations, through: :listings, :foreign_key => 'host_id'

    has_many :reviews, :foreign_key => 'guess_id'
    has_many :trips, through: :Reservation, :foreign_key => 'guess_id'
end
