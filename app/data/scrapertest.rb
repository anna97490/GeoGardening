# require 'nokogiri'
# require 'open-uri'
# # require 'pry'
# require 'json'

# # There are 2 possibilities withing this file:
# # 1) Seeding directly from scraping (you need to create a method within plant model for that and call it from seed)
# # together with scraper = Scraper.new
# # 2) Create json file upon scraping and then use it from seed ( we'll use that in our app)

# class Scraper
#   def scrape_plant_urls
#     puts "scrape_plant_urls"
#     categories = ["potager", "vivaces", "fruitier", "arbuste", "annuelle", "arbre", "bulbe-et-rhizome", "grimpantes", "sauvages"]
#     plants_urls = []
#     categories.each do |category|
#       url = "https://www.groww.fr/fr/plants/category/#{category}"
#       html = URI.open(url)
#       doc = Nokogiri::HTML(html)
#       plants = doc.css('.plant-card').css('a')
#       plants.each do |plant|
#         url = plant.attribute('href').value
#         plants_urls << url
#       end
#     end
#     scrape_plant_pages(plants_urls)
#     # filepath = "./plants_urls.json" # Check before future use
#     # File.open(filepath, "wb") do |file|
#     # file.write(JSON.generate(plants_urls))
#     # end
#     # return plants_urls
#     # Returns correct url for each plant. There are 1750 plants
#   end

#   def scrape_plant_pages(plants_urls)
#     puts "scrape_plant_pages(plants_urls)"
#     plants_list = []
#     plants_urls.each do |plant_url|
#       url = "https://www.groww.fr#{plant_url}"
#       html = URI.open(url)
#       doc = Nokogiri::HTML(html)
#       plants_list << doc.css('.container')
#       puts "+1 plant Nokogiri object"
#     end
#     create_plants(plants_list)
#     # return plants_list
#     # Return an array with Nokogiri objects of plants
#   end

#   def create_plants(plants_list)
#     puts "create_plants(plants_list)"
#     plants_objects = []
#     plants_list.each do |plant|
#       name = plant.css('.plant-property-value').children.first.text
#       puts name
#       scientific_name = plant.css('.plant-property-value').children[1].text
#       family = plant.css('.plant-property-value').children[2].text
#       image_url = plant.css('img').css('.slide').attribute('src').value
#       type = plant.css('.plant-property-value').children[3].text
#       maturity_size = plant.css('.plant-caracteristics').search('td').children[-3].text
#       # water + sun icons = doc.search('.plant-caracteristics').css('i')
#       sun_exposure = [
#         [plant.search('.plant-caracteristics').css('i')[0].attributes['class'].value],
#         [plant.search('.plant-caracteristics').css('i')[1].attributes['class'].value],
#         [plant.search('.plant-caracteristics').css('i')[2].attributes['class'].value]
#       ]
#       water = [
#         [plant.search('.plant-caracteristics').css('i')[3].attributes['class'].value],
#         [plant.search('.plant-caracteristics').css('i')[4].attributes['class'].value],
#         [plant.search('.plant-caracteristics').css('i')[5].attributes['class'].value]
#       ]
#       soil_ph = plant.css('.plant-caracteristics').search('td').children.last.text
#       hardiness_zone = plant.css('.plant-caracteristics').search('td').children[-5].text
#       description = plant.css('.plant-description').children.text + plant.css('.plant-todo-description').children.text
#       temperature_humidity = plant.css('.plant-caracteristics').search('td').children[-7].text

#       plants_objects << plant = {
#                                   name: name,
#                                   scientific_name: scientific_name,
#                                   family: family,
#                                   image_url: image_url,
#                                   type: type,
#                                   maturity_size: maturity_size,
#                                   sun_exposure: sun_exposure,
#                                   water: water,
#                                   soil_ph: soil_ph,
#                                   hardiness_zone: hardiness_zone,
#                                   description: description,
#                                   temperature_humidity: temperature_humidity
#       }
#     end
#     return plants_objects
#     # Creates an array of hashes. Proper hash per plant
#   end
#   # filepath = "./plants_urls_vivaces.json"
#   # ser_plantes = File.read(filepath)
#   # arbres = JSON.parse(ser_plantes)

#   # plants_urls = scrape_plant_urls
#   # plant_lists = scrape_plant_pages(plants_urls)
#   # plants_hashes = create_plants(plant_lists)
#   # filepath = "./exemple.json" # Check before future use
#   # File.open(filepath, "wb") do |file|
#   #   file.write(JSON.generate(plants_hashes))
#   # end
#   puts "Yupi! Finished!!!!"
# end
