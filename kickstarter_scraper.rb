require "nokogiri"
require "pry"#

<<<<<<< HEAD
# #projects: kickstarter.css("li.project.grid_4")
# #title:  project.css("h2.bbcard_name strong a").text
# #image: project.css("div.project-thumbnail a img").attribute("src").value
# #location: project.css("span.location-name").text
# #funded:  project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
# def create_project_hash
#   html = File.read("fixtures/kickstarter.html")#
#
#   kickstarter = Nokogiri::HTML(html)
#
#   projects = {}
#   binding.pry
#   #iterate through projects
#   kickstarter.css("li.project.grid_4").each do |project|
#     title = project.css("h2.bbcard_name strong a").text
#     project[title.to_sym] = {
#       :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
#       :description => project.css("p.bbcard_blurb").text,
#       :location => project.css("ul.project-meta span.location-name").text,
#       :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
#     }
#   end
#   projects
# end
=======
#projects: kickstarter.css("li.project.grid_4")
#title:  project.css("h2.bbcard_name strong a").text
#image: project.css("div.project-thumbnail a img").attribute("src").value
#location: project.css("span.location-name").text
#funded:  project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
def create_project_hash
  html = File.read("fixtures/kickstarter.html")#
>>>>>>> 4cd55bcb14e2a76dfa6f63b5b7a6171a406fe240

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

<<<<<<< HEAD
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    # binding.pry
    projects[title] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta span.location-name").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }


  end

  projects
=======
  #iterate through projects
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    project[title.to_sym] = {}

    projects
  end

>>>>>>> 4cd55bcb14e2a76dfa6f63b5b7a6171a406fe240
end

create_project_hash
