class User < ActiveRecord::Base
  has_one :sns_account
end
