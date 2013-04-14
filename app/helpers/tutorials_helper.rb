module TutorialsHelper
	def generate_url(tutorial)
		if tutorial.url.blank? 
			tutorial
		else
			"http://#{tutorial.url}"
		end
	end
end