module Models
  class Text
    class Send
      def self.call(sms)
        text = Text.find_or_create_by(guid: sms.id)
        text.update(
          twilio_id: sms.twilio_id,
          from: sms.from,
          to: sms.to,
          body: sms.body,
          status: sms.status,
          time: sms.time,
          direction: sms.direction
        )
        text
      end
    end
  end
end
