require 'raavi/servlet'

module Raavi
  module Server
    java_import 'org.mortbay.jetty.Server'
    java_import 'org.mortbay.jetty.servlet.Context'
    java_import 'org.mortbay.jetty.servlet.ServletHolder'
    def self.call(application)
      server = Server.new(8080)
      context = Context.new(server, '/', Context::SESSIONS)
      servlet = ApplicationServlet.new
      servlet.application = application
      holder = ServletHolder.new(servlet)
      context.addServlet(holder, '/*')
      server
    end
  end
end