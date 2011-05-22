module Uniquify; end

if RUBY_VERSION > '1.9'
  require 'securerandom'
  
  module Uniquify::UUID
    extend self
    def generate
      SecureRandom.uuid
    end
  end

else
  require 'simple_uuid'
  
  module Uniquify::UUID
    extend self
    def generate
      SimpleUUID::UUID.new.to_guid
    end
  end
end