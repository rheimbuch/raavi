require 'raavi/application'

module Raavi
  class HelloWorld < Raavi::Application
    init do |app|
      window "Hello World!" do |w|
        w.label("Hello World!")
        w.button("Click Me!") do |b|
          b.add_listener(button_click {|evt| w.show_notification "You clicked me!"})
        end
      end
    end
  end
end