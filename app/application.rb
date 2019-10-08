class Application
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path==""
 
    item = req.path.split("/songs/").last 
    song = @@songs.find{|s| s.title == song_title}

    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end