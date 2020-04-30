class Property < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    belongs_to :account

    scope :latest, -> { order created_at: :desc }

    geocoded_by :address
    after_validation :geocode
    after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
