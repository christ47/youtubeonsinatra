class PostController<Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }


  configure:development do
    register Sinatra::Reloader
  end
  $posts = [
    {
      id: 0,
      title: "Post 1",
      body: "I thought today we would make a happy little stream that's just running through the woods here. Even the worst thing we can do here is good. Learn when to stop. Let's get crazy. The very fact that you're aware of suffering is enough reason to be overjoyed that you're alive and can experience it. We might as well make some Almighty mountains today as well, what the heck. Those great big fluffy clouds. This is probably the greatest thing that's ever happened in my life.",
      src: "https://www.youtube.com/embed/2GSF9N15P2o",
      h1: "Ronaldo's Craziest Goals"
    },
    {
      id: 1,
      title: "Post 2",
      body: " Homer: What's the point of going out? We're just going to wind up back here anyway.
      Homer: Yep, nobody's more wild and youthful than old man Burns.
       Barney: So, I say, when we die there should be two planets- one for the French and one for the Chinese.
       Marge: Our differences are only skin deep, but our sames go down to the bone.
       Ned Flanders: You know, a man came into the store today and asked for change for a dollar, and I accidentally gave him three quarters. Took me all afternoon just to track him down.
",
src: "https://www.youtube.com/embed/hr6ey0jpWLA",
h1: "Dance off"
    },
    {
        id: 2,
        title: "Post 3",
        body: " (leela) argh, fire hot (professer) the professie will help, AAAARGH, fire indeed hot.
 Leela Futurama Quotes: (Amy After Bender destroys Fry's tent) Bender, wasn't that Fry's Tent? (Bender Responds Scoffing) Bender, Mominey mum meh. (Leela) Bender Raises a good point. Where is Fry?
 (Zoidberg to Fry) Now open your mouth and lets have a look at that brain. No, no, not that mouth! (Fry) Well I only have one. (Zoidberg) Really??! (Fry) Uh, is there a human Doctor around? (Zoidberg) Young lady, I'm an expert on humans. Now pick a mouth, open it and say Yuh da
",
  src: "https://www.youtube.com/embed/pynDvIsLoU0",
  h1: "Ronaldihno Top Goals"
    }
  ]
  get "/" do
    # "<h1>Hello Sinatra</h1>"
    @posts = $posts
    @titleHome="Block Posts"
    erb :'posts/index'
  end

  get "/:id/edit" do
    id = params[:id].to_i

    @post = $posts[id]
    # "<h1>Hello Sinatra</h1>"
    # @title="Block Posts"
    erb :'posts/edit'
  end
  #static route
  get '/new' do
    "Hello World"
  end

  #dynamic route
  get '/:id' do
    id = params[:id].to_i
  #to convert id to a number for the server to understand
# showing page with id
    @post = $posts[id]
    #pass something with parameter somewhere
    #id in line 12 and 13 must mattch
    #get '/:monkey' do
      # id = params[:monkey]
# [0,1,2].each

      erb :'posts/show'
      # case
      # when (id=='0')
      #   id = 0
      # end
  #   if id=='taco'
  # redirect 'www.google.com'
  #
  # elsif (id=='burrito')
  #   "<h1>Showing the page with id #{id}</h1>"
  #   end

  end

end

#try use class to put all info
#switch and under each case put @title
