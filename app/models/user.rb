class User < ActiveRecord::Base
  has_one :card
end
