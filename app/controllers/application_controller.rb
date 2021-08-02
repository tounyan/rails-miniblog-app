class ApplicationController < ActionController::Base
    def hello
        render text: "Hello from the Ruby side!"
    end
end
