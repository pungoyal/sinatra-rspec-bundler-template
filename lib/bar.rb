module Foobar
  class Bar < Sinatra::Base
    
    #configure do
      # set app specific settings
      # for example different view folders
    #end
    
    get '/' do
      "Hello from bar"
    end
    
    # I did this to be able to wrap my app in Rack::Auth::Digest for example
    ## Example:
    ## def self.new(*)
    ##  app = Rack::Auth::Digest::MD5.new(super) do |username|
    ##    {'foo' => 'bar'}[username]
    ##  end
    ##  app.realm = 'Foobar::Bar'
    ##  app.opaque = 'secretstuff'
    ##  app
    ## end 
    
    def self.new(*)
      super
    end
    
  end
end
