module Uniquify
  module UUID
    extend self
    
    if RUBY_VERSION > '1.9'
      require 'securerandom'
      def generate
        SecureRandom.uuid
      end
    else
      require 'simple_uuid'
      def generate
        SimpleUUID::UUID.new.to_guid
      end
    end
    
  end
end