class Application 

    def call(env)
        resp = Rack::Response.new

        a = Time.now

        if a.hour < 12
            resp.write "Good Morning!"
            resp.finish
        elsif a.hour >= 12 
            resp.write "Good Afternoon!"
            resp.finish
        else
            resp.write "Time is a construct."
            resp.finish
        end
    end     
end