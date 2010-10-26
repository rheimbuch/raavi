require 'raavi/ui'
require 'active_support/inflector'

module Raavi
  module DSL
    module ComponentContainer
      def add(comp_name, *args, &block)
        comp_class = Raavi::UI.const_get(comp_name)
        comp = comp_class.new(*args)
        block.call(comp) if block_given?
        self.add_component(comp)
        comp
      end
      
      def method_missing(method, *args, &block)
        add(ActiveSupport::Inflector.camelize(method), *args, &block)
      end
    end
  end
end