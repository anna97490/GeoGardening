Plant.destroy_all

puts "Starting the seeding"

plants = [
  {
    name: "Passionflower",
    scientific_name: "Passiflora spp.",
    family: "Passifloraceae",
    image_url: "https://www.thespruce.com/thmb/l43Uaagyf6RGk4QHEyccyrunflM=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/passion-flowers-1403114-10-681ebee8169f49a89e9c8425983eea92.jpg",
    plant_type: "Perennial vine",
    description: "Of the many types of passionflowers, some are shrubs, annuals, perennials, and even trees. Some also produce edible fruits if they are placed in a pollinator garden. But they all share unusual-looking flowers that remain open for only about a day. In addition to its intricate characteristics, a passionflower has a wide, flat petal base with five or 10 petals in a flat or reflex circle. Passionflowers are rapid growers and are best planted in spring or early fall while it's still warm. The toxicity of the plant varies by type, so check which one you are planting if you have small children or pets.",
    maturity_size: "6–30 ft. tall, 3–6 ft. wide",
    sun_exposure: "Full sun, partial shade",
    soil_type: "Moist but well-drained",
    soil_ph: "Neutral to acidic",
    bloom_time: "Summer",
    pot: true,
    open_soil: true,
    hardiness_zone: "5–9",
    native_area: "	North America, South America",
    water: "Passionflowers should be given a deep watering immediately after planting. Beyond that, they typically thrive with one or two waterings per week throughout their growing season. Make sure to provide about 1 inch to 1.5 inches of water every week if there is no rain because they do not handle drought well.",
    temperature_humidity: "Passionflower plants love warm weather and may need winter protection in cooler regions. In zones cooler than zone 6, they often die in the winter unless you bring them indoors. Plant them in an area that's protected from wind, as a strong wind can damage stems and burn leaves. In addition, they do best in areas with moderate to high humidity.",
    soil: "The soil you plant your vines in should be well-draining, but rich and moist. Soil pH isn't terribly important and can be in the neutral to acidic range, anywhere from about 6.1 to 7.5. The addition of compost to the planting hole will help provide nutrients, and mulching around the plant's base will assist in retaining moisture without having the plant become waterlogged. Typically, some type of support is needed for the vines to grow on—a trellis, a structure, or even another plant.",
    light: "To keep your passionflower vines healthy and blooming, plant them in full sun to partial shade. Plants appreciate some afternoon shade in extremely hot climates. Passionflowers generally need at least four to six full hours of sunlight a day (or more in cooler climates). If you bring potted specimens indoors for the winter, give them bright, indirect light and keep them away from drafts.",
    fertilizer: "Passionflower vines are heavy feeders and will benefit from a regular light application of balanced, general-purpose fertilizer with equal proportions of nitrogen, phosphorus, and potassium. Fertilize the plant before new growth emerges in early spring, and then repeat every four to six weeks until early autumn.",
    care: "Passionflowers may look like they are from the tropics, but they can actually be grown almost anywhere, including much colder areas. In fact, you may even find these seemingly delicate vines growing along the side of the road—some passionflower species can spread vigorously in warmer climates. The genus Passiflora is native to North America and South America and contains more than 500 species, so the common name passionflower can actually describe many different plants. Where they are hardy, passionflowers are usually trained on a trellis, fence, or other vertical structures. In regions where they are not hardy, passionflower plants are often grown in pots and moved indoors for the winter. Typically, they should be grown in full sun to partial shade, in average, but well-drained soil. A sheltered location, such as against a garden wall, is recommended for many species, which can be damaged by major winds or harsh weather. In addition to being a beautiful flowering vine for your garden, passionflower also has celebrated medicinal uses. Native Americans have long used passionflower to treat a variety of ailments, such as wounds, earaches, and liver problems, and it's also thought to be beneficial in treating insomnia and reducing stress and anxiety."
  },

  {
    name: "Petunia",
    scientific_name: "Petunia spp.",
    family: "Solanaceae",
    image_url: "https://www.thespruce.com/thmb/OdHd_wy53lQ4GblkJubma1WREfk=/700x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/KaraRiley-9-486dd144fb984e6cabf8e1206f5954d3.jpg",
    plant_type: "Annual",
    description: "Petunias (Petunia spp.) are one of the most popular garden flowers for both borders and containers. They are prolific bloomers; you can find them in just about every color but true blue; and they have wide, trumpet-shaped flowers and branching foliage that is hairy and somewhat sticky. Within the petunia genus, there is great variety and most are sold as hybrids: single and double blooms; ruffled and smooth petals; striped, veined, and solid colors; mounding and cascading growth habits; and even some with fragrance. Petunias are fast-growing plants. When started as seeds, they're germinated and ready to be planted outdoors—after the last frost date—in about 12 weeks, reaching full size by late spring.",
    maturity_size: "6–24 in. tall, up to 36 in. wide",
    sun_exposure: "Full sun",
    soil_type: "Well-drained, moist",
    soil_ph: "Acidic",
    bloom_time: "Spring, summer, fall",
    pot: true,
    open_soil: true,
    hardiness_zone: "10–11",
    native_area: "South America",
    water: "Like many flowering annuals, petunias don’t like to be dry for long periods. But they also don’t like to sit in soggy soil, which can rot their roots. Plus, too much water can result in leggy plants with few flowers. In general, it's sufficient to soak beds weekly with 1 to 2 inches of water when you don't have rainfall. However, some spreading varieties and plants grown in containers typically need more frequent and deep watering. Try not to let the soil dry out more than 2 inches down.",
    temperature_humidity: "The ideal temperatures for petunias are roughly 60 degrees Fahrenheit to 75 degrees Fahrenheit during the day and 55 degrees Fahrenheit to 65 degrees Fahrenheit at night. They can tolerate temperatures all the way down to about 40 degrees Fahrenheit, but frost and freezing temperatures will damage and ultimately kill the plants. Low to moderate humidity levels are best for these flowers.",
    soil: "Petunias prefer a light, fertile soil that provides good drainage. They can tolerate a variety of soil types as long as they are well-draining. Plus, they like a slightly acidic soil pH.",
    light: "Most petunia varieties prefer full sun, meaning at least six hours of direct sunlight on most days. But in the heat of summer, partial shade (especially from the strong afternoon sun) will help to keep them refreshed and blooming better.",
    fertilizer: "Feed petunias at the time of planting with a balanced fertilizer. It’s also helpful to work some compost into the soil. Then, starting in July and continuing until the plants decline in the fall, fertilize every two to three weeks with a liquid fertilizer made for flowering plants. Some of the spreading varieties need weekly fertilization, so be sure to check your plant’s individual care instructions.",
    care: "The primary blooming season for petunias is in the summer, though they can start in the spring and stretch into fall until the temperature drops and frost arrives. Extreme summer heat also can cause a temporary cease in blooming. Older petunia varieties typically need deadheading (removing spent blooms) for them to continue blooming. Many newer varieties don’t require deadheading, though they’ll still benefit from it to maximize their blooms. Petunias also will require regular watering and feeding throughout the growing season (spring to fall). And they might appreciate some protection from extreme weather, which can involve moving container plants to a protected area or setting up a temporary cover over garden beds."
  },

  {
    name: "Lemon tree",
    scientific_name: "Citrus limon (Rutaceae)​",
    family: "",
    image_url: "https://www.thespruce.com/thmb/TYcOxzKxxzmSJ5mmw-AT8MNB8NE=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/lemon-tree-plant-profile-4846327-3-b9b35325794c465f962a5f472bc8a6b2.jpg",
    plant_type: "	Broadleaf evergreen",
    description: "Looking to grow your own citrus fruit and not sure where to start? Learn to grow lemon trees in USDA Zones 8 through 11. Citrus limon offers an awakening scent, color, and flavor. Young leaves are reddish, and mature to a dark green on the surface and light green below. Be aware there are often sharp thorns on the twigs of the tree. Mildly fragrant flowers come from reddish buds. These blooms are either solitary or in small clusters of two or more. Four or five petals make up one flower, each of which is white on top and subtly purple beneath. Light-yellow to warm yellow fruit is oval and dotted with oil glands. Though the lemon is native to Asia, its true origin is unclear. It likely migrated from India and into Italy, then throughout the Mediterranean region in the 2nd century. Lemon seeds finally arrived across the ocean, but the fruit didn't take off commercially until crops in Florida flourished in the 1950s. Plant your lemon tree in the spring after the danger of frost has passed and you can expect it to be established within three years.",
    maturity_size: "20 feet tall and 15 feet wide",
    sun_exposure: "Full sun ",
    soil_type: "Well-drained fertile soil",
    soil_ph: "Slightly acidic and low in soluble salts",
    bloom_time: "Spring",
    pot: true,
    open_soil: true,
    hardiness_zone: "8-11",
    native_area: "Asia",
    water: "Getting the watering requirements right with your lemon tree is crucial for a successful harvest. During the period of establishment, more frequent watering will be required—even as much as once or twice a week. Once mature, lemon trees develop more drought tolerance. During the summer months, the soil should be kept moist, especially for young trees. Be careful not to cause waterlogging as boggy conditions are problematic.",
    temperature_humidity: "Lemon trees are best grown in warm and humid states. They are the most sensitive to cold weather of all the citrus fruits and thrive in temperatures that range from 75 to 85 degrees Fahrenheit. They also prefer the humidity levels to be as close to 50% as possible. Young trees are particularly sensitive to cold conditions and they should be brought indoors if temperatures take an unexpected drop.",
    soil: "All citrus trees thrive in soil of medium texture and moderate depth with a slight acidity. One that is well-drained is an absolute must as root rot is a problem in soggy conditions. Mulching should be avoided to prevent pooling water.",
    light: "Lemon trees thrive in full sun in a place that is protected from the wind. If a freeze is possible in your area, plant on the southwestern side of the house along a wall for protection.",
    fertilizer: "Like other citrus fruit trees, lemon trees are energy-hungry. Use a complete NPK (nitrogen, phosphorus, potassium) fertilizer to encourage healthy growth and fruit production.",
    care: "Lemon trees grow 10 to 20 feet tall and 10 to 15 feet wide. Space accordingly. Dig a hole twice as wide and deep as the root ball. If the root is bound, cut across the ball a few times; this will loosen the roots and encourage them to reach for nutrients in well-drained fertile soil. Tropical and semi-tropical climates are best for growing lemons. The trees prefer low to moderate rainfall while growing in mild winters and warm to hot dry summer heat, which is why they are successfully grown in the sub-tropical 'citrus belt' of the United States, which ranges from California along the Gulf Coast to Florida. In Zone 8, plant a cold-hardy variety such as Meyer, which produces nearly seedless fruit and a plentiful harvest on even a small plant. Try Lisbon and Eureka in Zones 9 through 11."
  },

  {
    name: "Gardenia",
    scientific_name: "Gardenia jasminoides",
    family: "Rubiaceae",
    image_url: "https://www.thespruce.com/thmb/TkpADOZbV-q90yCKuL_UDenRQTI=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grow-gardenia-indoors-1902758-hero-c96146bbee274d978322af1510eebf8c.jpg",
    plant_type: "Flowering broadleaf evergreen shrub",
    description: "Gardenia (Gardenia jasminoides), a tropical broadleaf evergreen shrub, is typically grown as a large, indoor houseplant because its blooms smell magnificent. In fact, few natural scents are as evocative and memorable as the smell of this coveted plant. If it wasn't for the plant's fragrant appeal, however, few gardeners would attempt to grow the high-maintenance gardenia, commonly found only in conservatories and commercial greenhouses. Still, if you're up for the challenge, even a few months of blooms make it a worthwhile endeavor.",
    maturity_size: "5 to 6 feet tall, similar spread",
    sun_exposure: "Part shade",
    soil_type: "Rich, well-drained soil, peat-based potting mix in containers",
    soil_ph: "5.0 to 6.5 (acidic)",
    bloom_time: "Seasonal bloomer",
    pot: true,
    open_soil: true,
    hardiness_zone: "8 to 11",
    native_area: "China, Japan, Taiwan",
    water: "Gardenia prefers about one inch of water weekly (either by rain or by hand). Drip irrigation works best as it keeps water off the leaves, which can cause fungal leaf spots. Reduce watering in the winter and only keep the soil slightly moist to the touch. This winter watering method also works well for potted gardenia.",
    temperature_humidity: "Gardenia requires temperatures above 60 F, free of cold drafts. This plant also prefers a high humidity level, above 60 percent. Indoor plants may require the use of a humidifier or constant misting during a cold, dry winter to maintain proper humidity.",
    soil: "Gardenias are acid-loving plants, preferring soil with a lower pH. Traditional potting mixes with a peat base usually meet this criterion. When planted outdoors, it's best to test the soil's pH and amend it as needed. A teaspoon of agricultural sulfur mixed into the planting hole may help lower soil pH.",
    light: "Indoor potted gardenias prefer bright light, but not direct sunlight, especially during summer. Placing them in a sunny window that gets afternoon shade is best. Garden gardenias grow best planted in a partially shaded location. Some sun, with afternoon shade, works well here, too.",
    fertilizer: "Feed garden gardenias in mid-March and then again in late June using an acid-rich fertilizer. Refer to the product's instructed amounts and always mix the fertilizer either directly into the soil or dilute it with water. It's best to use slightly under the recommended dosing to avoid over-fertilization. Stop feeding your gardenias in the fall to inhibit new growth before dormancy. Container plants can be fed about every three weeks with an acidifying fertilizer similar to the kind used on azaleas or camellias. Organic gardeners prefer blood meal, fish emulsion, or bone meal. Refer to product recommendations on amounts and test the soil's pH regularly.",
    care: "Garden gardenias prefer a planting area that is carefully amended with organic material to achieve a rich, acidic soil that drains well. Gardenia likes to be planted in light to medium shade in a location that doesn't face competition from tree roots. Soil should be regularly covered with a thick layer of mulch to control weeds and moisture. A well-tended gardenia grows compact with deep green leaves and will bloom in early spring or early summer, depending on its location. outdoor potted plants need to be brought indoors on any night when the temperatures fall."
  },

  {
    name: "Peony",
    scientific_name: "Paeonia officinalis",
    family: "",
    image_url: "https://www.thespruce.com/thmb/IpFd4Hgt5FiaITxJ4Wyk2rPN07Y=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/how-to-plant-peonies-1402864-7-c9cc447b2cc34759a8b8926316be6140.jpg",
    plant_type: "Herbaceous perennial, or woody shrub",
    description: "Peonies are the spring-blooming stars of your garden. They have large, showy blooms, heady aromas, and loads of personality. By some estimates, there are as many as 33 different species within the genus Paeonia, known collectively as peonies. Most are herbaceous perennials, though a few are woody shrubs. Peonies are medium-sized, have tuberous roots that are a combination of thick storage roots and thin roots that are designed to absorb water and nutrients.1 Careful handling of these roots is critical to planting or transplanting peonies, as well as when you are dividing plants to propagate them. Slow-growing peonies are categorized in many different ways, such as by flower type or by growth habit. In addition to the familiar garden-variety herbaceous peonies with all their flower variations, there are special types such as fern-leaf peonies (Paeonia tenuifolia), a particularly sensitive and prized species, and tree peonies, which are woody, upright forms. These types have some special planting needs.",
    maturity_size: "",
    sun_exposure: "Full sun",
    soil_type: "Well-draining",
    soil_ph: "6.5-7.0 ",
    bloom_time: "Late spring to late summer",
    pot: true,
    open_soil: true,
    hardiness_zone: "3-9",
    native_area: "Asia, Europe, and Western North America",
    water: "Peonies need moist, well-drained soil to thrive. Ideally, they should receive 1 to 2 inches of water weekly. They can thrive in relatively wet areas but are not drought-resistant. Mulch your peonies to help them retain water and lessen the likelihood of weeds.",
    temperature_humidity: "Peonies prefer cooler areas (hardiness zones 3-8) and do best when they experience cold winters.",
    soil: "Peonies are very adaptable, but ideally, they like a well-drained, slightly acidic soil (6.5-7.0 pH). If you are planting in heavy, clay soil, amending with compost or a soil mix labeled for azaleas and rhododendrons will make it easier for your peony plant to settle in. Since peonies can remain in the same spot for upwards of 70 years, taking the time to prepare the soil before planting is time well spent. Tree peonies like a slightly more alkaline soil than standard herbaceous peonies, and they do not want to compete with other shrubs.",
    light: "Peonies need a location that receives at least 6-hours of sun each day and a full day of sun is even better. Without sufficient sunlight, you’ll get fewer blooms and smaller flowers, and the plants will have a greater risk of fungal diseases.",
    fertilizer: "Feed lightly. An annual application of compost mixed with a very small amount of fertilizer around the base of the plant is all that is needed. When you do feed with compost and fertilizer, do it just after the plants have finished blooming. Don’t smother peonies with mulch in winter. In the first winter season, you can mulch loosely with pine needles or shredded bark, but mulch should be promptly removed in spring. Tree peonies need iron and phosphate and do well with an annual feeding of sulfate and bone meal in spring. Unlike herbaceous peonies, they need regular feeding with a 5-10-5 fertilizer.",
    care: "Peonies are classic garden plants that can thrive for decades with minimal care when planted in soil that meets their needs. One of the longest-lived of all garden plants, peonies are sometimes handed down from generation to generation in families. It is important to do the initial planting correctly because peonies can be temperamental about being moved once they are established. Give each peony plant enough space to grow to maturity without being crowded. Choose a location that is sheltered from strong winds. The large heavy blooms of this plant can cause the stems to flop over during heavy rain and inclement weather. Your peonies will benefit from some type of support staking. Plant them well away from other trees and shrubs, since they don't like to compete for nutrients and water. Peonies like a good chill in the winter. In order to set their flower buds, peony roots should be planted relatively close to the soil surface—only about 2-to 3-inches deep. It may feel odd to leave roots so exposed, but peonies actually need this chilling to attain dormancy and set buds."
  }
]

plants.each do |attributes|
  plant = Plant.create!(attributes)
  puts "Created #{plant.name}"
end
puts "Finished seeding"

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    },

#    {
#     name: "",
#     scientific_name: "",
#     family: "",
#     image_url: "",
#     plant_type: "",
#     description: "",
#     maturity_size: "",
#     sun_exposure: "",
#     soil_type: "",
#     soil_ph: "",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "",
#     native_area: "",
#     water: "",
#     temperature_humidity: "",
#     soil: "",
#     light: "",
#     fertilizer: "",
#     care: ""
#    }
