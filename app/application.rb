require 'pry'

class Application

  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, has_key ]
  end

  def has_key
    (Time.now.hour < 12) ? ["Good Morning!"] : ["Good Afternoon!"]
    #binding.pry
  end
end
