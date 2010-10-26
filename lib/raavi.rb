JAR_LIB = File.expand_path(File.join(File.dirname(__FILE__), 'java'))
Dir[File.join(JAR_LIB,'*.jar')].each {|jar| require jar}

require 'java'
module Raavi
end

require 'raavi/application'
