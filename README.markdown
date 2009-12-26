# logging

You can also log your own messages directly into the log file from your code using
the Ruby logger class from inside your controllers. Example:

  class WeblogController < ActionController::Base
    def destroy
      @weblog = Weblog.find(params[:id])
      @weblog.destroy
      logger.info("#{Time.now} Destroyed Weblog ID ##{@weblog.id}!")
    end
  end

# debugging

You need to install ruby-debug to run the server in debugging mode. With gems, use 'gem install ruby-debug'
Example:

  class WeblogController < ActionController::Base
    def index
      @posts = Post.find(:all)
      debugger
    end
  end

So the controller will accept the action, run the first line, then present you
with a IRB prompt in the server window. Here you can do things like:

  >> @posts.inspect
  => "[#<Post:0x14a6be8 @attributes={\"title\"=>nil, \"body\"=>nil, \"id\"=>\"1\"}>,
       #<Post:0x14a6620 @attributes={\"title\"=>\"Rails you know!\", \"body\"=>\"Only ten..\", \"id\"=>\"2\"}>]"
  >> @posts.first.title = "hello from a debugger"
  => "hello from a debugger"

...and even better is that you can examine how your runtime objects actually work:

  >> f = @posts.first
  => #<Post:0x13630c4 @attributes={"title"=>nil, "body"=>nil, "id"=>"1"}>
  >> f.
  Display all 152 possibilities? (y or n)

Finally, when you're ready to resume execution, you enter "cont"

# docs and web server setting

doc
  This directory is where your application documentation will be stored when generated
  using <tt>rake doc:app</tt>

public
  The directory available for the web server. Contains subdirectories for images, stylesheets,
  and javascripts. Also contains the dispatchers and the default HTML files. This should be
  set as the DOCUMENT_ROOT of your web server.
