require File.join(File.dirname(__FILE__), 'uniquify-uuid', 'uuid')

module Uniquify
  extend ActiveSupport::Concern
  
  module InstanceMethods
    def ensure_unique(name)
      begin
        self[name] = yield
      end while self.class.exists?(name => self[name])
    end
  end
  
  module ClassMethods
    def uniquify *args, &block
      args.each do |name|
        block = Proc.new { Uniquify::UUID.generate } unless block_given?
        before_create { |record| record.ensure_unique(name, &block) }
      end
    end
  end
end

class ActiveRecord::Base
  include Uniquify
end