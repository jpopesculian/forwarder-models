module Models
  module Mutations
    class TextReceive
      include Mutation

      def call(sms)
        text = Text.find_or_create_by(guid: sms.id)
        text.update(
          twilio_id: sms.twilio_id,
          from: sms.from,
          to: sms.to,
          body: sms.body,
          status: sms.status,
          time: sms.time,
          direction: sms.direction,
          contact: sms.contact
        )
        text
      end
    end
  end
end
