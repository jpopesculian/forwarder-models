module Models
  module Queries
    class TextByContact
      include Query

      def call(number = nil)
        # TODO denormalize contact number
        return Text.all if number.nil? || number.empty?
        Text.where(
          direction: Text::INBOUND_DIRECTION,
          from: number
        ).or(
          Text.where(
            direction: Text::OUTBOUND_DIRECTION,
            to: number
          )
        )
      end
    end
  end
end
