desc "This task is called by the Heroku scheduler add-on"
task :update_popularity => :environment do
	Tutorial.update_popularity
	TutorialLink.update_popularity
end