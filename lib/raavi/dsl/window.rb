require 'raavi/ui'
require 'raavi/dsl/component_container'

module Raavi
  module DSL
    module Window
      include DSL::ComponentContainer
      
      def window(name=nil, &block)
        w = name ? UI::Window.new(name) : UI::Window.new
        w.extend(DSL::Window)
        block.call(w) if block_given?
        self.add_window(w)
        w
      end
    end # Window
  end # DSL
end # Raavi