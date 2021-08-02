class ApplicationController < ActionController::Base
    def hello
        render html: "Hello from the Ruby side!"
    end
end
