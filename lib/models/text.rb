module Models
  class Text < ActiveRecord::Base
    self.primary_key = :guid

    INBOUND_DIRECTION = "inbound"
    OUTBOUND_DIRECTION = "outbound"

    def inbound?
      direction == INBOUND_DIRECTION
    end

    def outbound?
      direction == OUTBOUND_DIRECTION
    end

    def contact
      inbound? ? from : to
    end
  end
end
