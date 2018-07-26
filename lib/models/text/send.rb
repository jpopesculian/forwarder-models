module Models
  class Text
    class Send
      def self.call(sms)
        text = Text.find_or_create_by(guid: sms.id)
        text.update(
          twilio_id: sms.twilio_id,
          received_time: sms.received_time,
          sent_time: sms.sent_time,
          from: sms.from,
          to: sms.to,
          body: sms.body,
          status: sms.status
        )
      end
    end
  end
end
