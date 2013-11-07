class Vine < Liquid::Tag

  def initialize(tagName, markup, tokens)
    super
  
    syntax = /([^\s]+)/
    syntaxFormat = /(simple|postcard)/
    syntaxSize = /(320|480|600)/

    if (m = markup.scan(syntax)) then
      @id = m[0][0]
      @format = ( m[1].kind_of? Array and m[1][0]=~(syntaxFormat) ) ? m[1][0] : 'postcard'
      @size = ( m[2].kind_of? Array and m[2][0]=~(syntaxSize) ) ? m[2][0] : '600'
    else
      raise 'Vine tag must follow this format: vine [id] [postcard|simple] [600|480|320]'
    end
  end

  def render(context)

'<iframe src="https://vine.co/v/'+@id+'/embed/'+@format+'" height="'+@size+'" width="'+@size+'" frameborder="0"> </iframe><script charset="utf-8" type="text/javascript" src="//platform.vine.co/static/scripts/embed.js"> </script>'
  end

  Liquid::Template.register_tag "vine", self
end
