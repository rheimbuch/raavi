module Raavi
  class ApplicationServlet < Java::ComVaadinTerminalGwtServer::AbstractApplicationServlet
    attr_accessor :application
    
    def getApplicationClass
      application
    end
    
    def getNewApplication(request)
      application.new
    end
  end
end