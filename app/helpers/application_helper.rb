# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  #returns the title on a per-page basis.
  def title
    base_title = "LegalNinja"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
