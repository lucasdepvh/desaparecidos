class Relation < ApplicationRecord
  belongs_to :user
  belongs_to :desapeared
  belongs_to :relative
end
