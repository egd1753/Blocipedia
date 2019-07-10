module ApplicationHelper

  def markdown(text)
    options = [:hard_wrap, :filer_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    syntax_highlighter(Markdown.new(text, *options).to_html).html_safe
  end

#  def markdown(text)
#    markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, hard_wrap: true, filter_html: true, autolink: true, no_intraemphasis: true, fenced_code_blocks: true, gh_blockcode: true, space_after_headers: true)
#    markdown.render(text)
#  end

  def syntax_highlighter(html)
    doc = Nokogiri::HTML(html)
    doc.search("//pre[@lang]").each do |pre|
      pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
    end
    doc.to_s
  end

end
