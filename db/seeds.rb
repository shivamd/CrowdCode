# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # TutorialLink.create url: "http://net.tutsplus.com/tutorials/php/aspect-oriented-programming-in-php-with-go/", title: "programming with go"
  # TutorialLink.create url: "http://net.tutsplus.com/tutorials/php/laravel-4-mastery/", title: "PHP"


categories = [  "Ruby",
                "JavaScript & AJAX", 
                "HTML & CSS", 
                "PHP", 
                "Python", 
                "Databases", 
                "Tools & Tips",
                "Design",
                "Wordpress", 
                "CMSs", 
                "ASP.NET",
                "Other"
              ]
categories.each do |category|
  image = category.downcase.gsub(/[\.&\s]/, '') + '.png'
  Category.create(name: category, img: image)
end