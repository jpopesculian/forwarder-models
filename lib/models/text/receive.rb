class Text
  class Receive
    def self.call(sms)
      text = Text.find_or_create_by(sms.id)
      binding.pry
    end
  end
end
