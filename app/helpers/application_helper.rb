module ApplicationHelper
  def gravatar_for(email, options={})
    gravatar_id = Digest::MD5::hexdigest(email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?size=#{size}"
    image_tag(gravatar_url, alt: email, class: "gravatar")
  end

  def all_tags
  	Tag.all
  end
end
