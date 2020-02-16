require 'kramdown'
# require 'kramdown-parser-gfm'

module ApplicationHelper



   def gravatar_for(user, options = { size: 200})

    
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    
    size = options[:size]
    
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    
    image_tag(gravatar_url, alt: user.name, class: "border-radius-50")
  
  end

  
  def markdown_to_html(text)
    
    # Kramdown::Document.new(text, input: "GFM").to_html

    Kramdown::Document.new(text).to_html
    
     # if Parser.const_defined?(parser)
     #    @root, @warnings = Parser.const_get(parser).parse(source, @options)
     #  else
     #    raise Kramdown::Error.new("kramdown has no parser to handle the specified input format: #{options[:input]}")
     #  end
  
  end

  
  def trade_author(trade)
    
    user_signed_in? && current_user.id == trade.user_id
  
  end

end