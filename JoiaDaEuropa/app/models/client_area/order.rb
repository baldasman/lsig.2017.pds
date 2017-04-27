class ClientArea::Order < ApplicationRecord

  has_one :state, class_name: ClientArea::OrderState

end
