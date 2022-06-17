require 'json'
# require 'open-uri'

Plant.destroy_all

List.destroy_all

User.destroy_all

puts "Starting the seeding"

filepath = File.expand_path(File.dirname(__FILE__) + '/plants.json')

ser_plants = File.read(filepath)
plants = JSON.parse(ser_plants)

Plant.create_from_collection(plants)

user_1 = User.create(email: 'lewagon@gmail.com', password: 'lewagon', user_location: 'Nice', nickname: 'Fab')

List.create(name: 'Liste Nice', location: 'Nice', user_id: user_1.id)

List.create(name: 'Liste Paris', location: 'Paris', user_id: user_1.id)

puts "Finished seeding"

# plants = [
#   {
#     name: "Passionflower",
#     scientific_name: "Passiflora spp.",
#     family: "Passifloraceae",
#     image_url: "https://www.thespruce.com/thmb/l43Uaagyf6RGk4QHEyccyrunflM=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/passion-flowers-1403114-10-681ebee8169f49a89e9c8425983eea92.jpg",
#     plant_type: "Perennial vine",
#     description: "Of the many types of passionflowers, some are shrubs, annuals, perennials, and even trees. Some also produce edible fruits if they are placed in a pollinator garden. But they all share unusual-looking flowers that remain open for only about a day. In addition to its intricate characteristics, a passionflower has a wide, flat petal base with five or 10 petals in a flat or reflex circle. Passionflowers are rapid growers and are best planted in spring or early fall while it's still warm. The toxicity of the plant varies by type, so check which one you are planting if you have small children or pets.",
#     maturity_size: "6–30 ft. tall, 3–6 ft. wide",
#     sun_exposure: "Full sun, partial shade",
#     soil_type: "Moist but well-drained",
#     soil_ph: "Neutral to acidic",
#     bloom_time: "Summer",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "5–9",
#     native_area: "	North America, South America",
#     water: "Passionflowers should be given a deep watering immediately after planting. Beyond that, they typically thrive with one or two waterings per week throughout their growing season. Make sure to provide about 1 inch to 1.5 inches of water every week if there is no rain because they do not handle drought well.",
#     temperature_humidity: "Passionflower plants love warm weather and may need winter protection in cooler regions. In zones cooler than zone 6, they often die in the winter unless you bring them indoors. Plant them in an area that's protected from wind, as a strong wind can damage stems and burn leaves. In addition, they do best in areas with moderate to high humidity.",
#     soil: "The soil you plant your vines in should be well-draining, but rich and moist. Soil pH isn't terribly important and can be in the neutral to acidic range, anywhere from about 6.1 to 7.5. The addition of compost to the planting hole will help provide nutrients, and mulching around the plant's base will assist in retaining moisture without having the plant become waterlogged. Typically, some type of support is needed for the vines to grow on—a trellis, a structure, or even another plant.",
#     light: "To keep your passionflower vines healthy and blooming, plant them in full sun to partial shade. Plants appreciate some afternoon shade in extremely hot climates. Passionflowers generally need at least four to six full hours of sunlight a day (or more in cooler climates). If you bring potted specimens indoors for the winter, give them bright, indirect light and keep them away from drafts.",
#     fertilizer: "Passionflower vines are heavy feeders and will benefit from a regular light application of balanced, general-purpose fertilizer with equal proportions of nitrogen, phosphorus, and potassium. Fertilize the plant before new growth emerges in early spring, and then repeat every four to six weeks until early autumn.",
#     care: "Passionflowers may look like they are from the tropics, but they can actually be grown almost anywhere, including much colder areas. In fact, you may even find these seemingly delicate vines growing along the side of the road—some passionflower species can spread vigorously in warmer climates. The genus Passiflora is native to North America and South America and contains more than 500 species, so the common name passionflower can actually describe many different plants. Where they are hardy, passionflowers are usually trained on a trellis, fence, or other vertical structures. In regions where they are not hardy, passionflower plants are often grown in pots and moved indoors for the winter. Typically, they should be grown in full sun to partial shade, in average, but well-drained soil. A sheltered location, such as against a garden wall, is recommended for many species, which can be damaged by major winds or harsh weather. In addition to being a beautiful flowering vine for your garden, passionflower also has celebrated medicinal uses. Native Americans have long used passionflower to treat a variety of ailments, such as wounds, earaches, and liver problems, and it's also thought to be beneficial in treating insomnia and reducing stress and anxiety."
#   },

#   {
#     name: "Petunia",
#     scientific_name: "Petunia spp.",
#     family: "Solanaceae",
#     image_url: "https://www.thespruce.com/thmb/OdHd_wy53lQ4GblkJubma1WREfk=/700x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/KaraRiley-9-486dd144fb984e6cabf8e1206f5954d3.jpg",
#     plant_type: "Annual",
#     description: "Petunias (Petunia spp.) are one of the most popular garden flowers for both borders and containers. They are prolific bloomers; you can find them in just about every color but true blue; and they have wide, trumpet-shaped flowers and branching foliage that is hairy and somewhat sticky. Within the petunia genus, there is great variety and most are sold as hybrids: single and double blooms; ruffled and smooth petals; striped, veined, and solid colors; mounding and cascading growth habits; and even some with fragrance. Petunias are fast-growing plants. When started as seeds, they're germinated and ready to be planted outdoors—after the last frost date—in about 12 weeks, reaching full size by late spring.",
#     maturity_size: "6–24 in. tall, up to 36 in. wide",
#     sun_exposure: "Full sun",
#     soil_type: "Well-drained, moist",
#     soil_ph: "Acidic",
#     bloom_time: "Spring, summer, fall",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "10–11",
#     native_area: "South America",
#     water: "Like many flowering annuals, petunias don’t like to be dry for long periods. But they also don’t like to sit in soggy soil, which can rot their roots. Plus, too much water can result in leggy plants with few flowers. In general, it's sufficient to soak beds weekly with 1 to 2 inches of water when you don't have rainfall. However, some spreading varieties and plants grown in containers typically need more frequent and deep watering. Try not to let the soil dry out more than 2 inches down.",
#     temperature_humidity: "The ideal temperatures for petunias are roughly 60 degrees Fahrenheit to 75 degrees Fahrenheit during the day and 55 degrees Fahrenheit to 65 degrees Fahrenheit at night. They can tolerate temperatures all the way down to about 40 degrees Fahrenheit, but frost and freezing temperatures will damage and ultimately kill the plants. Low to moderate humidity levels are best for these flowers.",
#     soil: "Petunias prefer a light, fertile soil that provides good drainage. They can tolerate a variety of soil types as long as they are well-draining. Plus, they like a slightly acidic soil pH.",
#     light: "Most petunia varieties prefer full sun, meaning at least six hours of direct sunlight on most days. But in the heat of summer, partial shade (especially from the strong afternoon sun) will help to keep them refreshed and blooming better.",
#     fertilizer: "Feed petunias at the time of planting with a balanced fertilizer. It’s also helpful to work some compost into the soil. Then, starting in July and continuing until the plants decline in the fall, fertilize every two to three weeks with a liquid fertilizer made for flowering plants. Some of the spreading varieties need weekly fertilization, so be sure to check your plant’s individual care instructions.",
#     care: "The primary blooming season for petunias is in the summer, though they can start in the spring and stretch into fall until the temperature drops and frost arrives. Extreme summer heat also can cause a temporary cease in blooming. Older petunia varieties typically need deadheading (removing spent blooms) for them to continue blooming. Many newer varieties don’t require deadheading, though they’ll still benefit from it to maximize their blooms. Petunias also will require regular watering and feeding throughout the growing season (spring to fall). And they might appreciate some protection from extreme weather, which can involve moving container plants to a protected area or setting up a temporary cover over garden beds."
#   },

#   {
#     name: "Lemon tree",
#     scientific_name: "Citrus limon (Rutaceae)​",
#     family: "",
#     image_url: "https://www.thespruce.com/thmb/TYcOxzKxxzmSJ5mmw-AT8MNB8NE=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/lemon-tree-plant-profile-4846327-3-b9b35325794c465f962a5f472bc8a6b2.jpg",
#     plant_type: "	Broadleaf evergreen",
#     description: "Looking to grow your own citrus fruit and not sure where to start? Learn to grow lemon trees in USDA Zones 8 through 11. Citrus limon offers an awakening scent, color, and flavor. Young leaves are reddish, and mature to a dark green on the surface and light green below. Be aware there are often sharp thorns on the twigs of the tree. Mildly fragrant flowers come from reddish buds. These blooms are either solitary or in small clusters of two or more. Four or five petals make up one flower, each of which is white on top and subtly purple beneath. Light-yellow to warm yellow fruit is oval and dotted with oil glands. Though the lemon is native to Asia, its true origin is unclear. It likely migrated from India and into Italy, then throughout the Mediterranean region in the 2nd century. Lemon seeds finally arrived across the ocean, but the fruit didn't take off commercially until crops in Florida flourished in the 1950s. Plant your lemon tree in the spring after the danger of frost has passed and you can expect it to be established within three years.",
#     maturity_size: "20 feet tall and 15 feet wide",
#     sun_exposure: "Full sun ",
#     soil_type: "Well-drained fertile soil",
#     soil_ph: "Slightly acidic and low in soluble salts",
#     bloom_time: "Spring",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "8-11",
#     native_area: "Asia",
#     water: "Getting the watering requirements right with your lemon tree is crucial for a successful harvest. During the period of establishment, more frequent watering will be required—even as much as once or twice a week. Once mature, lemon trees develop more drought tolerance. During the summer months, the soil should be kept moist, especially for young trees. Be careful not to cause waterlogging as boggy conditions are problematic.",
#     temperature_humidity: "Lemon trees are best grown in warm and humid states. They are the most sensitive to cold weather of all the citrus fruits and thrive in temperatures that range from 75 to 85 degrees Fahrenheit. They also prefer the humidity levels to be as close to 50% as possible. Young trees are particularly sensitive to cold conditions and they should be brought indoors if temperatures take an unexpected drop.",
#     soil: "All citrus trees thrive in soil of medium texture and moderate depth with a slight acidity. One that is well-drained is an absolute must as root rot is a problem in soggy conditions. Mulching should be avoided to prevent pooling water.",
#     light: "Lemon trees thrive in full sun in a place that is protected from the wind. If a freeze is possible in your area, plant on the southwestern side of the house along a wall for protection.",
#     fertilizer: "Like other citrus fruit trees, lemon trees are energy-hungry. Use a complete NPK (nitrogen, phosphorus, potassium) fertilizer to encourage healthy growth and fruit production.",
#     care: "Lemon trees grow 10 to 20 feet tall and 10 to 15 feet wide. Space accordingly. Dig a hole twice as wide and deep as the root ball. If the root is bound, cut across the ball a few times; this will loosen the roots and encourage them to reach for nutrients in well-drained fertile soil. Tropical and semi-tropical climates are best for growing lemons. The trees prefer low to moderate rainfall while growing in mild winters and warm to hot dry summer heat, which is why they are successfully grown in the sub-tropical 'citrus belt' of the United States, which ranges from California along the Gulf Coast to Florida. In Zone 8, plant a cold-hardy variety such as Meyer, which produces nearly seedless fruit and a plentiful harvest on even a small plant. Try Lisbon and Eureka in Zones 9 through 11."
#   },

#   {
#     name: "Gardenia",
#     scientific_name: "Gardenia jasminoides",
#     family: "Rubiaceae",
#     image_url: "https://www.thespruce.com/thmb/TkpADOZbV-q90yCKuL_UDenRQTI=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grow-gardenia-indoors-1902758-hero-c96146bbee274d978322af1510eebf8c.jpg",
#     plant_type: "Flowering broadleaf evergreen shrub",
#     description: "Gardenia (Gardenia jasminoides), a tropical broadleaf evergreen shrub, is typically grown as a large, indoor houseplant because its blooms smell magnificent. In fact, few natural scents are as evocative and memorable as the smell of this coveted plant. If it wasn't for the plant's fragrant appeal, however, few gardeners would attempt to grow the high-maintenance gardenia, commonly found only in conservatories and commercial greenhouses. Still, if you're up for the challenge, even a few months of blooms make it a worthwhile endeavor.",
#     maturity_size: "5 to 6 feet tall, similar spread",
#     sun_exposure: "Part shade",
#     soil_type: "Rich, well-drained soil, peat-based potting mix in containers",
#     soil_ph: "5.0 to 6.5 (acidic)",
#     bloom_time: "Seasonal bloomer",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "8 to 11",
#     native_area: "China, Japan, Taiwan",
#     water: "Gardenia prefers about one inch of water weekly (either by rain or by hand). Drip irrigation works best as it keeps water off the leaves, which can cause fungal leaf spots. Reduce watering in the winter and only keep the soil slightly moist to the touch. This winter watering method also works well for potted gardenia.",
#     temperature_humidity: "Gardenia requires temperatures above 60 F, free of cold drafts. This plant also prefers a high humidity level, above 60 percent. Indoor plants may require the use of a humidifier or constant misting during a cold, dry winter to maintain proper humidity.",
#     soil: "Gardenias are acid-loving plants, preferring soil with a lower pH. Traditional potting mixes with a peat base usually meet this criterion. When planted outdoors, it's best to test the soil's pH and amend it as needed. A teaspoon of agricultural sulfur mixed into the planting hole may help lower soil pH.",
#     light: "Indoor potted gardenias prefer bright light, but not direct sunlight, especially during summer. Placing them in a sunny window that gets afternoon shade is best. Garden gardenias grow best planted in a partially shaded location. Some sun, with afternoon shade, works well here, too.",
#     fertilizer: "Feed garden gardenias in mid-March and then again in late June using an acid-rich fertilizer. Refer to the product's instructed amounts and always mix the fertilizer either directly into the soil or dilute it with water. It's best to use slightly under the recommended dosing to avoid over-fertilization. Stop feeding your gardenias in the fall to inhibit new growth before dormancy. Container plants can be fed about every three weeks with an acidifying fertilizer similar to the kind used on azaleas or camellias. Organic gardeners prefer blood meal, fish emulsion, or bone meal. Refer to product recommendations on amounts and test the soil's pH regularly.",
#     care: "Garden gardenias prefer a planting area that is carefully amended with organic material to achieve a rich, acidic soil that drains well. Gardenia likes to be planted in light to medium shade in a location that doesn't face competition from tree roots. Soil should be regularly covered with a thick layer of mulch to control weeds and moisture. A well-tended gardenia grows compact with deep green leaves and will bloom in early spring or early summer, depending on its location. outdoor potted plants need to be brought indoors on any night when the temperatures fall."
#   },

#   {
#     name: "Peony",
#     scientific_name: "Paeonia officinalis",
#     family: "",
#     image_url: "https://www.thespruce.com/thmb/IpFd4Hgt5FiaITxJ4Wyk2rPN07Y=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/how-to-plant-peonies-1402864-7-c9cc447b2cc34759a8b8926316be6140.jpg",
#     plant_type: "Herbaceous perennial, or woody shrub",
#     description: "Peonies are the spring-blooming stars of your garden. They have large, showy blooms, heady aromas, and loads of personality. By some estimates, there are as many as 33 different species within the genus Paeonia, known collectively as peonies. Most are herbaceous perennials, though a few are woody shrubs. Peonies are medium-sized, have tuberous roots that are a combination of thick storage roots and thin roots that are designed to absorb water and nutrients.1 Careful handling of these roots is critical to planting or transplanting peonies, as well as when you are dividing plants to propagate them. Slow-growing peonies are categorized in many different ways, such as by flower type or by growth habit. In addition to the familiar garden-variety herbaceous peonies with all their flower variations, there are special types such as fern-leaf peonies (Paeonia tenuifolia), a particularly sensitive and prized species, and tree peonies, which are woody, upright forms. These types have some special planting needs.",
#     maturity_size: "",
#     sun_exposure: "Full sun",
#     soil_type: "Well-draining",
#     soil_ph: "6.5-7.0 ",
#     bloom_time: "Late spring to late summer",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "3-9",
#     native_area: "Asia, Europe, and Western North America",
#     water: "Peonies need moist, well-drained soil to thrive. Ideally, they should receive 1 to 2 inches of water weekly. They can thrive in relatively wet areas but are not drought-resistant. Mulch your peonies to help them retain water and lessen the likelihood of weeds.",
#     temperature_humidity: "Peonies prefer cooler areas (hardiness zones 3-8) and do best when they experience cold winters.",
#     soil: "Peonies are very adaptable, but ideally, they like a well-drained, slightly acidic soil (6.5-7.0 pH). If you are planting in heavy, clay soil, amending with compost or a soil mix labeled for azaleas and rhododendrons will make it easier for your peony plant to settle in. Since peonies can remain in the same spot for upwards of 70 years, taking the time to prepare the soil before planting is time well spent. Tree peonies like a slightly more alkaline soil than standard herbaceous peonies, and they do not want to compete with other shrubs.",
#     light: "Peonies need a location that receives at least 6-hours of sun each day and a full day of sun is even better. Without sufficient sunlight, you’ll get fewer blooms and smaller flowers, and the plants will have a greater risk of fungal diseases.",
#     fertilizer: "Feed lightly. An annual application of compost mixed with a very small amount of fertilizer around the base of the plant is all that is needed. When you do feed with compost and fertilizer, do it just after the plants have finished blooming. Don’t smother peonies with mulch in winter. In the first winter season, you can mulch loosely with pine needles or shredded bark, but mulch should be promptly removed in spring. Tree peonies need iron and phosphate and do well with an annual feeding of sulfate and bone meal in spring. Unlike herbaceous peonies, they need regular feeding with a 5-10-5 fertilizer.",
#     care: "Peonies are classic garden plants that can thrive for decades with minimal care when planted in soil that meets their needs. One of the longest-lived of all garden plants, peonies are sometimes handed down from generation to generation in families. It is important to do the initial planting correctly because peonies can be temperamental about being moved once they are established. Give each peony plant enough space to grow to maturity without being crowded. Choose a location that is sheltered from strong winds. The large heavy blooms of this plant can cause the stems to flop over during heavy rain and inclement weather. Your peonies will benefit from some type of support staking. Plant them well away from other trees and shrubs, since they don't like to compete for nutrients and water. Peonies like a good chill in the winter. In order to set their flower buds, peony roots should be planted relatively close to the soil surface—only about 2-to 3-inches deep. It may feel odd to leave roots so exposed, but peonies actually need this chilling to attain dormancy and set buds."
#   },

#   {
#     name: "Yellow watermelon",
#     scientific_name: "Citrullus lanatus",
#     family: "",
#     image_url: "https://www.thespruce.com/thmb/a3W3aEUh3rxW69kmLw-XD9Hafww=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/yellow-watermelon-plant-profile-4766599-hero-9d202a5d27344bb58d7741c221c6624a.jpg",
#     plant_type: "Tender annual",
#     description: "In the quest to breed watermelons with the fewest seeds and fastest maturing time, flavor sometimes gets pushed to the side. Not so with yellow watermelon plants. Although the yellow watermelon often has seeds, there is no compromise on flavor. In fact, many watermelon connoisseurs argue that the yellow watermelon yields fruits that are superior in taste to the standard red cultivars. From the exterior, the fruits look no different from the red types: They are light green with dark green stripes, and the plants have the same lobed leaves. Some yellow watermelon plants produce large fruits, between 20 and 40 pounds, ideal for sharing at a picnic or party, while others produce small, 6-pound fruits. The plants are vigorous and grow best in areas with long, hot summers. Grow a mix of yellow and red watermelon vines in the same garden, and dazzle your friends with a yellow and red medley of fruit at your next Labor Day celebration. Watermelons should be planted by seed in spring garden when the soil has warmed. They take anywhere from 70 to 100 days to grow fruit ready for harvest, depending on variety.",
#     maturity_size: "10-foot vines",
#     sun_exposure: "Full sun",
#     soil_type: "Moist, rich, and loamy",
#     soil_ph: "Acific; 6.0 to 6.8",
#     bloom_time: "",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "Grow as an annual in all zones",
#     native_area: "Africa",
#     water: "Keep soil moist but not soggy until fruits form. After fruits reach softball size, water only when the surface of the soil is dry. Overwatering can cause rapid growth that leads to cracking.",
#     temperature_humidity: "Yellow watermelons love hot weather, but if an extended hot spell in the triple digits is stressing plants, you can use shade cloth. Hot weather combined with high humidity can make plants susceptible to powdery mildew. Increase spacing to help air circulation and reduce fungal spores.",
#     soil: "A rich, sandy loam will produce the healthiest yellow watermelon harvest. Add compost or manure to poor soils; in areas with clay soil, use raised beds with amended soil to improve drainage.",
#     light: "Yellow watermelon plants need a full day of sun. Plant them away from buildings or tall plants that cast shade.",
#     fertilizer: "Chemical fertilizers aren't necessary to grow yellow watermelons. The slow, steady stream of nutrients from leaf mold, compost, or manure as a top dressing will increase soil fertility and tilth. Some commercial growers have been known to inject fruits with nitrogen fertilizer or other chemicals to stimulate large growth. Never attempt this with a watermelon you intend to eat.",
#     care: "Like all melons, yellow watermelon plants like lots of sun and soil with good drainage and high fertility. If you live in an area with short summers, choose a bush baby variety that matures in under 70 days. Plants become somewhat drought tolerant as they mature. Prevent common pests and diseases by not growing yellow watermelons in locations where other melons, squash, or cucumbers were grown the previous year. Starting yellow watermelon seeds indoors is not recommended. Wait until soil temperatures are at least 70 degrees Fahrenheit planting seeds outdoors. It's important that the soil be warm—not just the air temperatures. Delay planting until about two weeks after the last frost of the season. You can also plant in raised beds or cover the soil with plastic to speed up warming. Make a mound of soil 6 to 8 inches high for seed planting. Rows should be at least 4 feet apart; mounds should be 3 feet apart. Plant two or three seeds in the mound, 6 inches apart. After germination occurs in about eight days, remove all but the most vigorous seedling."
#   },

#   {
#     name: "Eucalyptus, silver dollar tree, argyle apple",
#     scientific_name: "Eucalyptus cinerea",
#     family: "Myrtaceae",
#     image_url: "https://www.thespruce.com/thmb/gqUMw-rWv9UBRUpHjMn7fRI9Ukw=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/DryingEucalyptus_300-7063b7e0fd7f4ce9aea79223b6512ad3.jpg",
#     plant_type: "Tree",
#     description: "You might be most familiar with eucalyptus (Eucalyptus cinerea) as a favorite food of the koala. This evergreen tree can grow to 60 feet high or more in its natural Australian environment, but in home gardens, it usually remains small, at around 6–10 feet high. It features reddish-brown bark that peels on the smaller branches. The leaves are a silvery to blue-green color, and they give off the plant’s distinct menthol-like fragrance when bruised. Eucalyptus trees are best planted in the spring. They have a fast growth rate and can gain several feet per year. It's important to note that the bark, leaves, and sap of eucalyptus are toxic both to humans and pets.",
#     maturity_size: "6–60 ft. tall, 2–15 ft. wide",
#     sun_exposure: "Full sun",
#     soil_type: "Well-drained",
#     soil_ph: "Acidic to neutral (5.5 to 6.5)",
#     bloom_time: "Rarely flowers",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "8–11 (USDA)",
#     native_area: "Australia",
#     water: "Eucalyptus is somewhat drought-tolerant once it's established. However, it really doesn't like to be left dry for long periods, and doing so might cause it to drop leaves or branches. A good rule of thumb is to water when you can stick your finger into the soil and feel dryness at your fingertip. This often will amount to watering weekly if you haven't had rainfall, especially for container plants.",
#     temperature_humidity: "Eucalyptus prefers warm temperatures between roughly 65 and 75 degrees, and it likes a moderate humidity level. It cannot survive prolonged exposure to temperatures below 50 degrees. So if you're growing your plant in a container, bring it indoors if you expect chilly temperatures.",
#     soil: "Eucalyptus can tolerate most soil types, but it needs soil with good drainage. For container plants, use a well-draining potting mix. A slightly acidic to neutral soil pH is best.",
#     light: "Eucalyptus likes a lot of light, so settle your plant somewhere in your landscape that receives at least six hours of direct sunlight daily. Likewise, eucalyptus plants grown indoors should be kept near a bright window, preferably one that faces south.",
#     fertilizer: "If you're growing your plant in the ground, it typically won't need fertilizer. However, container plants will deplete their nutrients more quickly. So fertilize them with a low-nitrogen houseplant fertilizer throughout the growing season, following label instructions.",
#     care: "When growing eucalyptus from seeds, start them indoors 10 to 12 weeks before your area’s projected last frost date in the spring. If you have a nursery plant, transplant it into the garden in the spring after the danger of frost has passed. Choose a planting site that gets lots of sun and has soil with sharp drainage. Also, ensure that there is enough space to accommodate the tree’s full height and spread. Make sure no nearby trees or shrubs will block sunlight from a young eucalyptus plant. This plant also can be grown in containers as well as indoors when given enough light. If you’re planting multiple eucalyptus trees, space them at least 8 feet apart. Plant them at the same depth they were in their nursery pot. These trees generally do not need any staking or other support structure on which to grow."
#   },

#   {
#     name: "Anthurium, tailflower, flamingo flower, laceleaf",
#     scientific_name: "Anthurium spp.",
#     family: "Araceae",
#     image_url: "https://www.thespruce.com/thmb/tT922Rxom7Pe7baCDMJVzTjy1JM=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grow-anthurium-plants-1902738-11-3d277f29cd8a4ef082f9788f705896bc.jpg",
#     plant_type: "Herbaceous perennial",
#     description: "Anthurium is a genus of around 1,000 perennial plants native to Central America, northern South America, and the Caribbean. While they can be grown outdoors in the garden in warm climates, anthurium is more often grown as houseplants or in greenhouses since they have particular care needs. They grow at a slow or moderate growth rate, depending on getting ample light without getting sunburned. Also called flamingo flower for their unique tropical shape, you can plant them year-round and they bloom throughout the year. The blooming varieties are distinctive for their colorful, heart-shaped waxy spathes and red or yellow tail-like flower spikes. Other varieties feature large-leaved, deeply veined foliage. This plant's long-lasting bright red, green, and white colors make them a popular centerpiece during the Christmas holidays. Many anthuriums are climbers, and all need high humidity and warmth to thrive. Anthurium is toxic to humans and pets.",
#     maturity_size: "12-18 in., 9- to 12-inch spread",
#     sun_exposure: "Bright indirect light",
#     soil_type: "Coarse, moist potting mix",
#     soil_ph: "Acidic (5.5 to 6.5)",
#     bloom_time: "Flowers year-round, usually 3-month intervals",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "11 to 12",
#     native_area: "Central America, South America, Caribbean",
#     water: "The soil should be kept slightly moist and never allowed to dry out completely. Set the pot in a tray with rocks or gravel that has water. The plant's water can drain there and help keep humidity levels higher around the plant. Allow the top of the soil to dry out to the touch before watering again. Indoors, this is about once a week. If outside, during hot days, it can be every two or three days between waterings.",
#     temperature_humidity: "All species of anthurium are native tropical plants, and mimicking those conditions will give you the best chances for success. This plant prefers high humidity and temperatures between 65 and 85 degrees Fahrenheit. These plants can be grown outside in zones 11 to 12 and will likely perish at temperatures 40 degrees or less. In dry climates—or during dry winter months—mist the plant daily to keep humidity levels high. You may find it necessary to run a humidifier constantly during dry months.",
#     soil: "Anthuriums prefer coarse, well-draining potting. An orchid mix with additional sand and peat moss mixed in makes a perfect potting mix for anthuriums.",
#     light: "Indoors or out, anthuriums grow best in bright, indirect light. Avoid direct sun, which can burn the leaves",
#     fertilizer: "It is safe and recommended to use liquid fertilizer throughout the growing period. Use a fertilizer high in phosphorus, dilute it to 1/4 strength and feed the plants every week. The phosphorus-rich fertilizer will help encourage blooms. The common gardening expression, 'Weekly, weakly' applies to how often to fertilize and the strength or concentration of fertilizer to water.",
#     care: "Anthurium plants thrive in bright, indirect light, and they do not like exposure to direct sunlight, except in the winter months or in plants that have been carefully acclimated. Wild anthuriums generally live in temperatures at or above 60 degrees Fahrenheit, and the foliage types prefer temperatures even warmer. If temperatures dip below this level, the plant will suffer. Potted anthuriums prefer a rich but well-draining potting mix that should be kept moist but not wet. Potting mix tailored for orchids, with a few handfuls of sand and a few handfuls of peat moss mixed in, is ideal. Many anthurium plants are 'epiphytic' in natural settings—they grow on other plants instead of in soil. If your plant fails to support itself, give it a stake or small trellis to climb on.",
#   },

#   {
#     name: "Corn plant, dracaena, false palm",
#     scientific_name: "Dracaena fragrans",
#     family: "Asparagaceae",
#     image_url: "https://www.thespruce.com/thmb/h6Y0gikH9yx_hfdk0bcoHrMYg1k=/941x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grow-dracaena-fragrans-indoors-1902748-HERO-f558407adead407dafbc93003ac9b1d6.jpg",
#     plant_type: "Broadleaf, evergreen, shrub/tree",
#     description: "The corn plant (Dracaena fragrans) is a tropical African evergreen tree popular in Europe as an indoor plant since the mid-1800s—and in the U.S. since the early 20th century. They grow fairly slowly, from thick canes or stems that produce long, narrow leaves like stalks of corn, growing upward. This growth habit also makes them look a lot like palm trees, which is why they’re sometimes called “false palms.” They make good houseplants because they are tall and narrow, typically only reaching around 4- to 6-feet tall in containers. These plants aren't high maintenance once you get their growing conditions right. Springtime is ideal for starting new plants, though you can typically pot nursery plants indoors any time of year. if you have cats or dogs, pass on this plant as dracaena is toxic to both.",
#     maturity_size: "15–50 ft. tall, 3–10 ft. wide outdoors; container-grown plants can grow up to 6 ft. tall",
#     sun_exposure: "Partial",
#     soil_type: "Moist, well-draining, loamy",
#     soil_ph: "6.1 to 6.5 (Acidic)",
#     bloom_time: "Late fall and then again in late spring; nighttime bloomer",
#     pot: true,
#     open_soil: true,
#     hardiness_zone: "10–12 (USDA)",
#     native_area: "Africa (tropics)",
#     water: "Keep the soil evenly moist but not soggy during the growing season (spring through fall). Reduce watering in the late fall to winter. However, never let the soil completely dry out. Soil that is too wet or too dry will lead to plant health issues.",
#     temperature_humidity: "Corn plants do best in temperatures from 60-75 F. Avoid exposing them to temperatures in the 50s F. If you temporarily moved your corn plants outdoors for the summer, make sure to bring them indoors before temperatures reach this point. Maintain humidity levels between 40 to 50 percent, which mimics the plant's native environment. To raise the plant's humidity, use a humidifier or place the pot on a tray of water and pebbles. Do not let the bottom of the pot touch the water. You can also mist the leaves regularly.",
#     soil: "A loose, loamy potting soil mix is the best option for growing corn plants. Make sure the soil has good drainage because its roots don't do well in standing water.",
#     light: "The ideal indoor location for this plant is near a window with filtered sunlight. Too little light will result in the leaves losing their color variegation and might stunt the plant's growth. Exposure to direct sun can burn the plant's leaves and cause them to wilt. Outdoors, the plant does best in a shadier spot.",
#     fertilizer: "Corn plants prefer organically rich soil. Use a balanced liquid fertilizer every other month throughout the growing season and feed sparingly, if at all, over the winter.",
#     care: "Home gardeners usually grow corn plants as large potted plants indoors since they are tropical plants that require climate-controlled conditions. Corn plants do best in bright indoor locations protected against direct sunlight, drafts, and air conditioning and heating vents. These plants also prefer a high humidity environment.You can put corn plants outdoors during the summer if they are in a sheltered, somewhat shady location. Protect them against strong winds. Bring the plant indoors once the temperatures start to fall into the 60s F.",
#   }
# ]

# plants.each do |attributes|
#   plant = Plant.create!(attributes)
#   puts "Created #{plant.name}"
# end
