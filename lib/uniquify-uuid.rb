require "uniquify-uuid/uuid"

module Uniquify
  extend ActiveSupport::Concern

  def ensure_unique(name)
    begin
      self[name] = yield(self)
    end while self.class.exists?(name => self[name])
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
