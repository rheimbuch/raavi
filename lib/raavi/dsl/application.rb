require 'raavi/ui'
require 'raavi/dsl/ui_events'
require 'raavi/dsl/window'

module Raavi
  module DSL
    module Application
      include DSL::UIEvents
      
      def window(name=nil, &block)
        w = name ? UI::Window.new(name) : UI::Window.new
        w.extend(DSL::Window)
        block.call(w) if block_given?
        self.main_window = w
      end
    end # Application
  end # DSL
end # Raavi