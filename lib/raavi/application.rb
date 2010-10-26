require 'raavi/dsl/application'

module Raavi
  class Application < Java::ComVaadin::Application
    include Raavi::DSL::Application
    
    class << self
      attr_accessor :init_block
    end
    
    def self.init(&block)
      self.init_block = block
    end
    
    def init
      self.instance_eval(&self.class.init_block)
    end
  end
end