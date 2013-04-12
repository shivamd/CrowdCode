module TutorialsHelper
	def generate_url(tutorial)
		if tutorial.class == Tutorial 
			tutorial
		else
			"http://#{tutorial.url}"
		end
	end
end