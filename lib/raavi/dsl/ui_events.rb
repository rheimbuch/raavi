require 'raavi/ui'
module Raavi
  module DSL
    module UIEvents
      def button_click(&block)
        listener = Class.new do
          include Raavi::UI::Button::ClickListener
          attr_accessor :event_block
          def buttonClick(evt)
            event_block.call(evt)
          end
        end
        l = listener.new
        l.event_block = block
        l
      end
    end
  end
end