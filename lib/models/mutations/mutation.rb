module Models
  module Mutation

    def self.included(cls)
      cls.class_exec do
        extend Build
        extend Configure
        extend Call
      end
    end

    def configure
    end

    module Configure
      def configure(receiver, attr_name: nil)
        attr_name ||= @default_attr_name
        instance = build
        receiver.public_send("#{attr_name}=", instance)
      end

      def default_attr_name(name)
        @default_attr_name = name
      end

      def self.extended(cls)
        cls.class_exec do
          default_attr_name(cls.name.split('::').last.underscore)
        end
      end
    end

    module Build
      def build
        instance = new
        instance.configure
        instance
      end
    end

    module Call
      def call(*args, &block)
        build.call(*args, &block)
      end
    end
  end
end
