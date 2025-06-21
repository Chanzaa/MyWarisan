class HeritagePlace {
  final String name;
  final String imageUrl;
  final String state;
  final String description;
  final String locationUrl;

  HeritagePlace({
    required this.name,
    required this.imageUrl,
    required this.state,
    required this.description,
    required this.locationUrl,
  });
}

List<HeritagePlace> heritagePlaces = [
  HeritagePlace(
    name: "Stadthuys",
    imageUrl:
        "https://www.malaysia.travel/mt-flmngr/files/Dutch-Square/Dutch-square-14.jpg",
    state: "Melaka",
    description:
        "The Stadthuys is the oldest Dutch building in Southeast Asia, constructed in the 1650s. Its striking red exterior and historical significance as the administrative center during the Dutch colonial period make it a key landmark in Melaka. Today, it houses the History and Ethnography Museum, showcasing Melaka's rich heritage.",
    locationUrl: "https://maps.app.goo.gl/z6n6U5msY1fs8C1E6",
  ),
  HeritagePlace(
    name: "Sultan Abdul Samad Building",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/4/40/2016_Kuala_Lumpur%2C_Budynek_Su%C5%82tana_Abdula_Samada_%2803%29.jpg",
    state: "Kuala Lumpur",
    description:
        "Completed in 1897, the Sultan Abdul Samad Building is an iconic historical building featuring a unique blend of Moorish and Mughal architectural styles. It originally served as the administrative center of British colonial rule and is now home to the Ministry of Information, Communications and Culture. The building is a testament to Malaysia's colonial past and is often a focal point for national celebrations.",
    locationUrl: "https://maps.app.goo.gl/9Lze6WLPG8Z1KLSb7",
  ),
  HeritagePlace(
    name: "Fort Cornwallis",
    imageUrl: "https://i.ytimg.com/vi/XsdjojrLFQQ/maxresdefault.jpg",
    state: "Penang",
    description:
        "Fort Cornwallis, built in 1786, is the largest fort in Malaysia and holds great historical significance as the site where the British first landed in Penang. The fort features a series of cannons, historic buildings, and a well-preserved chapel that offer insights into colonial military architecture and the early history of the region.",
    locationUrl: "https://maps.app.goo.gl/S789xJuULDZxmQE49",
  ),
  HeritagePlace(
    name: "A Famosa",
    imageUrl: "https://www.cidb.gov.my/wp-content/uploads/2023/09/a-famosa.jpg",
    state: "Melaka",
    description:
        "A Famosa is a Portuguese fortress built in 1511 and is one of the oldest surviving European architectural remains in Asia. Originally constructed to protect the Portuguese settlement, only a small portion of the original structure remains today. It stands as a symbol of Melaka's rich history and colonial past, attracting visitors with its historical significance and picturesque setting.",
    locationUrl: "https://maps.app.goo.gl/3YX78pXq4t5Ghhys7",
  ),
  HeritagePlace(
    name: "Kuan Yin Temple",
    imageUrl:
        "https://image-tc.galaxy.tf/wijpeg-8130zu0wye5gpwg8wx3ee5nj1/kuan-yin-temple.jpg",
    state: "Penang",
    description:
        "The Kuan Yin Temple, also known as the Goddess of Mercy Temple, is one of the oldest Chinese temples in Penang, built in the 1800s. It is renowned for its intricate architecture and vibrant decorations. The temple is a center of worship for the local Chinese community and showcases cultural practices and traditions that have been preserved over generations.",
    locationUrl: "https://maps.app.goo.gl/SnF2EJ983cPsgNC76",
  ),
  HeritagePlace(
    name: "Perak Cave Temple",
    imageUrl:
        "https://www.malaysia.travel/mt-flmngr/files/Temples-in-Perak/ipoh-temple-1.jpg",
    state: "Perak",
    description:
        "Perak Cave Temple is a unique cave temple that dates back to the 1920s. Nestled within limestone hills, it features stunning murals depicting Buddhist teachings and a serene environment for meditation. The temple is not only a place of worship but also a remarkable example of how natural caves can be transformed into sacred spaces.",
    locationUrl: "https://maps.app.goo.gl/aF8MUoVD9VdzJkDN7",
  ),
  HeritagePlace(
    name: "Batu Caves",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Batu_Caves_stairs_2022-05.jpg/1024px-Batu_Caves_stairs_2022-05.jpg",
    state: "Selangor",
    description:
        "Batu Caves is a limestone hill featuring a series of caves and cave temples, dedicated to Lord Murugan. The site is renowned for its massive golden statue and serves as a major pilgrimage site for Hindus, especially during the Thaipusam festival. Its natural beauty and spiritual significance attract thousands of visitors each year.",
    locationUrl: "https://maps.app.goo.gl/ttm2jy2MEvMpXjm68",
  ),
  HeritagePlace(
    name: "National Museum",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Muzium_Negara%2C_2023_%2801%29.jpg/1920px-Muzium_Negara%2C_2023_%2801%29.jpg",
    state: "Kuala Lumpur",
    description:
        "The National Museum of Malaysia is a treasure trove of the country's history and culture. Established in 1963, it houses extensive collections of artifacts, traditional costumes, and exhibits that trace Malaysia's journey from prehistoric times to the modern era. It serves as an educational hub for both locals and visitors.",
    locationUrl: "https://maps.app.goo.gl/E1tdkQXoJBt5cmVR7",
  ),
  HeritagePlace(
    name: "Islamic Arts Museum Malaysia",
    imageUrl:
        "https://www.gojira.my/wp-content/uploads/2023/03/islamic-arts-museum-malaysia-1280x640.jpg",
    state: "Kuala Lumpur",
    description:
        "The Islamic Arts Museum Malaysia is the largest museum of Islamic arts in Southeast Asia. It showcases a vast collection of artifacts, textiles, and manuscripts that reflect the rich cultural heritage of the Islamic world. The museum's architecture is also a sight to behold, blending traditional Islamic design with modern elements.",
    locationUrl: "https://maps.app.goo.gl/hWSzrJopRfyrpKvz7",
  ),
  HeritagePlace(
    name: "Cheong Fatt Tze Mansion",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Cheong_Fatt_Tze_Mansion_%28I%29.jpg/1280px-Cheong_Fatt_Tze_Mansion_%28I%29.jpg",
    state: "Penang",
    description:
        "Known as the Blue Mansion, Cheong Fatt Tze Mansion is a historic home built in the late 19th century by a wealthy Chinese merchant. The mansion exemplifies the fusion of Eastern and Western architectural styles and is a symbol of Penang's multicultural heritage. Guided tours reveal stories of its fascinating history and restoration efforts.",
    locationUrl: "https://maps.app.goo.gl/o5WzF9Duu7XJJpe27",
  ),
  HeritagePlace(
    name: "Sultan Iskandar Building",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/SultanIskandarCIQ.JPG/1200px-SultanIskandarCIQ.JPG",
    state: "Johor",
    description:
        "The Sultan Iskandar Building, built in the 1940s, is an iconic structure in Johor Bahru that reflects the architectural style of the British colonial period. It served as the state secretariat and is notable for its grand facade and historical significance within Johor's political landscape.",
    locationUrl: "https://maps.app.goo.gl/CndY5UqokZfsiwRXA",
  ),
  HeritagePlace(
    name: "Masjid Jamek",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Masjid_Jamek%2C_Kuala_Lumpur_20231114_114015.jpg/1280px-Masjid_Jamek%2C_Kuala_Lumpur_20231114_114015.jpg",
    state: "Kuala Lumpur",
    description:
        "Masjid Jamek is one of the oldest mosques in Kuala Lumpur, built in 1909. Its stunning Moorish architecture and serene gardens make it a peaceful retreat in the bustling city. The mosque serves as an important place of worship for the Muslim community and a cultural landmark for visitors.",
    locationUrl: "https://maps.app.goo.gl/H5wyboLekJGsf4529",
  ),
  HeritagePlace(
    name: "Penang Hill",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/fb/10/15/the-habitat-penang-hill.jpg?w=1400&h=800&s=1",
    state: "Penang",
    description:
        "Penang Hill is a historic hill station offering panoramic views of the island. The funicular railway, built in the late 19th century, is a key attraction. Visitors can explore colonial-era bungalows, the David Brown's Restaurant, and the historic Bel Retiro bungalow, all reflecting the hill's rich past.",
    locationUrl: "https://maps.app.goo.gl/VhcrdzeZryYNdryf7",
  ),
  HeritagePlace(
    name: "Tunku Abdul Rahman Park",
    imageUrl:
        "https://sabahtourism.com/assets/uploads/RS47_RS30354_DJI_0031-scr.jpg",
    state: "Sabah",
    description:
        "This marine park is named after Malaysia's first Prime Minister, Tunku Abdul Rahman. It comprises several islands and is famous for its stunning beaches, coral reefs, and vibrant marine life. The park serves as a reminder of Malaysia's natural heritage and is a popular destination for eco-tourism.",
    locationUrl: "https://maps.app.goo.gl/qu4B87HLsmCPyseYA",
  ),
  HeritagePlace(
    name: "Borneo Cultural Museum",
    imageUrl:
        "https://www.theborneopost.com/newsimages/2022/04/Ok-kch-260322-sc-100-DayKarim-p3.jpg",
    state: "Sarawak",
    description:
        "The Borneo Cultural Museum is dedicated to showcasing the diverse cultures and traditions of Borneo's indigenous peoples. The museum features extensive exhibits on traditional crafts, music, and rituals, providing a comprehensive overview of the region's rich cultural tapestry.",
    locationUrl: "https://maps.app.goo.gl/98fRuVejdeAX76rp7",
  ),
  HeritagePlace(
    name: "Kota Bharu Cultural Centre",
    imageUrl:
        "https://www.agoda.com/wp-content/uploads/2024/06/The-Istana-Jahar-Kota-Bharu-Kelantan-Malaysia.jpg",
    state: "Kelantan",
    description:
        "The Kota Bharu Cultural Centre is a hub for traditional Kelantanese arts and crafts. It hosts cultural performances, art exhibitions, and workshops, allowing visitors to immerse themselves in the local culture. The centre is a vital part of Kelantan's cultural preservation efforts.",
    locationUrl: "https://maps.app.goo.gl/txZhjDgFhAjB27iM6",
  ),
  HeritagePlace(
    name: "The Royal Palace of Malaysia",
    imageUrl:
        "https://images.wanderon.in/blogs/new/2024/12/royal-palace-istana-negara-in-kuala-lumpur-malaysia.jpg",
    state: "Kuala Lumpur",
    description:
        "The Royal Palace, known as Istana Negara, is the official residence of the Yang di-Pertuan Agong (King) of Malaysia. The palace features stunning architecture and beautiful gardens, symbolizing the country's monarchy and serving as a site for state ceremonies and official functions.",
    locationUrl: "https://maps.app.goo.gl/nhV7xV3fPS9SsCWM7",
  ),
  HeritagePlace(
    name: "Thean Hou Temple",
    imageUrl:
        "https://lh5.googleusercontent.com/RF9hAn6gs4OUOHHm1gDBbWpW-A4lr1oeWgT-fvRf0h01QsJGh352krykQJfZATVF10k3ApscP7wad4HUw9Ruzk5_SWKSvgvhIBDzgansMCDET7SJDUeDq13J2d0Co_tHDkH0V8DxgG4YNKR5hBpsQGM",
    state: "Kuala Lumpur",
    description:
        "Thean Hou Temple is a magnificent Chinese temple dedicated to the Goddess of Heaven. Built in 1987, it showcases intricate designs and beautiful decorations, serving as a center for cultural and religious activities. The temple offers stunning views of the city and is a popular spot for celebrations.",
    locationUrl: "https://maps.app.goo.gl/T1FjASzT1LrAACTE9",
  ),
  HeritagePlace(
    name: "Sabah State Museum",
    imageUrl: "https://sabahtourism.com/assets/uploads/sabah-museum-1-of-1.jpg",
    state: "Sabah",
    description:
        "The Sabah State Museum showcases the rich cultural heritage of Sabah's diverse ethnic groups. It features exhibits on traditional crafts, historical artifacts, and natural history, offering visitors a comprehensive understanding of the state's unique identity.",
    locationUrl: "https://maps.app.goo.gl/SVytd1h5VJsRbbwt8",
  ),
  HeritagePlace(
    name: "Sarawak State Museum",
    imageUrl:
        "https://static.vecteezy.com/system/resources/previews/032/079/978/large_2x/sarawak-state-museum-the-oldest-museum-in-borneo-located-in-kuching-malaysia-photo.jpg",
    state: "Sarawak",
    description:
        "The Sarawak State Museum is one of the oldest museums in Borneo, featuring extensive collections on the natural history and indigenous cultures of the region. The museum’s architecture is noteworthy, blending Victorian and Sarawakian styles, and it serves as a cornerstone for cultural education.",
    locationUrl: "https://maps.app.goo.gl/HevKRwtssfPhSzy57",
  ),
  HeritagePlace(
    name: "Kellie's Castle",
    imageUrl:
        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg743qJ7tyUrEYsOVY-swCCO8AKBjCczsjfqPRYfGaZluGAcuhA0WqDklaA7AV1lTUsWax5QU-Dy-h8LCjihlNV0Nz9zyTTnBBUPvItPgq8G5GIKYDZD-0vXi0JS0AGuLns_LoNlFA_F-OtTsi_jY2Jse6-qwELnXEsBG1wXVTDpk0EzhyoD44/s1600/kellie-castle-batu-gajah-perak-01.jpg",
    state: "Perak",
    description:
        "Kellie's Castle is an unfinished mansion built in the early 20th century by Scottish planter William Kellie Smith. Its intriguing architecture and mysterious history have made it a popular tourist destination, with legends surrounding its construction and the sudden death of its owner.",
    locationUrl: "https://maps.app.goo.gl/VpNxRgQmomaT95YU8",
  ),
  HeritagePlace(
    name: "Langkawi Sky Bridge",
    imageUrl:
        "https://offloadmedia.feverup.com/secretsingapore.co/wp-content/uploads/2024/04/25202902/Sky-Walk-2.jpg",
    state: "Kedah",
    description:
        "The Langkawi Sky Bridge is a breathtaking curved pedestrian bridge located on Gunung Mat Cincang. Offering stunning views of the surrounding islands and sea, it stands as a modern architectural marvel, attracting visitors for its scenic beauty and thrilling experience.",
    locationUrl: "https://maps.app.goo.gl/F3FN15gASum9EW1AA",
  ),
  HeritagePlace(
    name: "Masjid Negara (National Mosque)",
    imageUrl: "https://pbs.twimg.com/media/EcX1vnJUYAESk9F.jpg:large",
    state: "Kuala Lumpur",
    description:
        "Masjid Negara, or the National Mosque, is a significant religious site and a symbol of Malaysia's Islamic heritage. Opened in 1965, the mosque features contemporary Islamic architecture with a stunning blue dome and tranquil gardens, serving as a place of worship and community gathering.",
    locationUrl: "https://maps.app.goo.gl/2j93Vs2bGF4wj3Ec7",
  ),
  HeritagePlace(
    name: "Putra Mosque",
    imageUrl:
        "https://cdn.forevervacation.com/uploads/digital/assets/putra-mosque.webp",
    state: "Putrajaya",
    description:
        "Putra Mosque is a striking pink-domed mosque located in the administrative capital of Putrajaya. Completed in 1999, it showcases Persian architectural influences and serves as a center for Islamic activities in the area. The mosque's beautiful setting by the lake adds to its serene atmosphere.",
    locationUrl: "https://maps.app.goo.gl/TogvGgjAVk9HfEXN8",
  ),
  HeritagePlace(
    name: "Perdana Botanical Gardens",
    imageUrl:
        "https://live.staticflickr.com/65535/51012063946_896f9adf59_h.jpg",
    state: "Kuala Lumpur",
    description:
        "The Perdana Botanical Gardens, formerly known as Lake Gardens, is a lush green space in the heart of Kuala Lumpur. Established in the 1880s, it features a variety of plant species, a lake, and historical monuments, serving as a peaceful retreat and an important part of the city's heritage.",
    locationUrl: "https://maps.app.goo.gl/c8sjcqKTumtLw5xg6",
  ),
  HeritagePlace(
    name: "Merdeka Square",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Dataran_Merdeka_2.jpg/1280px-Dataran_Merdeka_2.jpg",
    state: "Kuala Lumpur",
    description:
        "Merdeka Square is a historic site where Malaysia's independence was proclaimed in 1957. The square is surrounded by colonial-era buildings, including the Sultan Abdul Samad Building, and features a 95-meter flagpole, symbolizing the country's sovereignty and rich history.",
    locationUrl: "https://maps.app.goo.gl/vayBVaP4cyjSer8YA",
  ),
  HeritagePlace(
    name: "Genting Highlands",
    imageUrl: "https://riderchris.com/wp-content/uploads/2023/09/GlobalTix.jpg",
    state: "Pahang",
    description:
        "Genting Highlands is a hill resort known for its cooler climate and entertainment options. The area has a rich history as a retreat for British colonial officials and has evolved into a popular tourist destination with casinos, theme parks, and scenic views.",
    locationUrl: "https://maps.app.goo.gl/MMB9v7nUa7dZsbTw5",
  ),
  HeritagePlace(
    name: "The Old Railway Station",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/e/ef/Kuala-Lumpur-Railway-Station-20070216-001.jpg",
    state: "Kuala Lumpur",
    description:
        "The Old Railway Station in Kuala Lumpur is a historical landmark, showcasing a blend of Moorish and Mughal architectural styles. Completed in 1910, it served as a key transportation hub and remains a significant symbol of Malaysia's railway history.",
    locationUrl: "https://maps.app.goo.gl/1GbugGAXYxHCti4J7",
  ),
  HeritagePlace(
    name: "Bukit Bintang",
    imageUrl:
        "https://www.expatgo.com/my/wp-content/uploads/2021/04/8a-Large.jpg",
    state: "Kuala Lumpur",
    description:
        "Bukit Bintang is a vibrant area known for its shopping, dining, and entertainment. Historically, it has evolved from a rural area into a bustling urban center, reflecting Malaysia's rapid development and cultural diversity over the decades.",
    locationUrl: "https://maps.app.goo.gl/KEg9gezsrxfyUaD58",
  ),
  HeritagePlace(
    name: "Taman Negara",
    imageUrl:
        "https://www.malaysia.travel/webroot/articles/peekintomalaysia/1140083d6.png",
    state: "Pahang",
    description:
        "Taman Negara is one of the oldest rainforests in the world, rich in biodiversity and cultural heritage. It is home to indigenous communities and offers eco-tourism activities like jungle trekking and canopy walks, emphasizing the importance of conservation.",
    locationUrl: "https://maps.app.goo.gl/u96ftZgEYNoQEnAV7",
  ),
  HeritagePlace(
    name: "Malacca Sultanate Palace Museum",
    imageUrl: "https://mypov.com.my/template/assets/img/visit/muzium.jpg",
    state: "Melaka",
    description:
        "The Malacca Sultanate Palace Museum is a reconstruction of the 15th-century palace of the Malacca Sultanate. It showcases artifacts and exhibits that depict the royal heritage and history of Melaka, offering visitors insights into the region's sultanate era.",
    locationUrl: "https://maps.app.goo.gl/b9CtMPeZLaRxozQw9",
  ),
  HeritagePlace(
    name: "Sungai Lembing",
    imageUrl:
        "https://i0.wp.com/hikersforlife.com/wp-content/uploads/2015/08/169876_486549633457_5262823_o.jpg?fit=2048%2C1536&ssl=1",
    state: "Pahang",
    description:
        "Sungai Lembing is known for its historical tin mining operations and is home to the Sungai Lembing Museum. The museum showcases the history of tin mining, local culture, and the town's development, making it a significant site for understanding Malaysia's industrial heritage.",
    locationUrl: "https://maps.app.goo.gl/GzbFK1uXsWZK14h29",
  ),
  HeritagePlace(
    name: "Kapitan Keling Mosque",
    imageUrl:
        "https://a.travel-assets.com/findyours-php/viewfinder/images/res70/41000/41296-Kapitan-Keling-Mosque.jpg",
    state: "Penang",
    description:
        "Kapitan Keling Mosque is one of the oldest mosques in Penang, built in the early 19th century. It features beautiful Indo-Saracenic architecture and serves as a significant place of worship for the local Muslim community, reflecting the multicultural heritage of Penang.",
    locationUrl: "https://maps.app.goo.gl/kNV32wH1JY9ZMHe76",
  ),
  HeritagePlace(
    name: "Windmill Dutch Square",
    imageUrl:
        "https://zinvolreizen.nl/wp-content/uploads/2023/08/PXL_20230214_083256643.MP_-1024x771.jpg",
    state: "Melaka",
    description:
        "Windmill Dutch Square, also known as the Red Square, is a historic area in Melaka featuring colorful colonial buildings and a windmill. It serves as a popular gathering spot for tourists and locals, reflecting the cultural heritage and architectural styles from the Dutch colonial period.",
    locationUrl: "https://maps.app.goo.gl/4dKCR53hADUxERyQ8",
  ),
  HeritagePlace(
    name: "Old High Court Building",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/8/81/Old_High_Court_Building%2C_Kuala_Lumpur%2C_Malaysia_-_20070303.jpg",
    state: "Kuala Lumpur",
    description:
        "The Old High Court Building, built in the 1900s, showcases Moorish architecture and is a historical landmark in Kuala Lumpur. It served as a key judicial center during the British colonial era and remains a symbol of the country's legal history.",
    locationUrl: "https://maps.app.goo.gl/TcqA3guRxA4yCybR8",
  ),
  HeritagePlace(
    name: "Sultan Sulaiman Mosque",
    imageUrl:
        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjzaO7CGI5vq2WXvEFP4AlwpVwA-n0x8D284iijz3M04bdoPbCrNxo6h-sLFKqxGSTL-8OtMchbRM5AUZoryty3vFnb3hbUpEFPxKlXVGAOLp3z6nD1qd0gcISDW6Et0EzpoRpjX9qXJw/s1600/DSC07944.JPG",
    state: "Kuala Lumpur",
    description:
        "Sultan Sulaiman Mosque is a beautiful mosque built in the early 20th century, known for its stunning architecture and serene atmosphere. It serves as a place of worship and a cultural landmark for the local community.",
    locationUrl: "https://maps.app.goo.gl/dr5FBrtxUEzrNDmcA",
  ),
  HeritagePlace(
    name: "Bako National Park",
    imageUrl:
        "https://static.wixstatic.com/media/239308_8dcc901408e74a368b270fb165c3964a~mv2_d_1920_1280_s_2.jpg/v1/fill/w_1920,h_1280,al_c/239308_8dcc901408e74a368b270fb165c3964a~mv2_d_1920_1280_s_2.jpg",
    state: "Sarawak",
    description:
        "Bako National Park is the oldest national park in Sarawak, known for its unique wildlife and diverse ecosystems. The park features various trails that lead to stunning coastal views and rainforest habitats, making it a popular destination for nature lovers and hikers.",
    locationUrl: "https://maps.app.goo.gl/2gCv38t3mC4nw56BA",
  ),
  HeritagePlace(
    name: "Langkawi Geopark",
    imageUrl:
        "https://www.paradise101.com/wp-content/uploads/2021/08/1200-mangrove-langkawi-1080x675.jpg",
    state: "Kedah",
    description:
        "Langkawi Geopark is a UNESCO Global Geopark that features stunning geological formations, unique ecosystems, and rich biodiversity. The park offers educational tours and activities, promoting awareness of the importance of preserving natural heritage.",
    locationUrl: "https://maps.app.goo.gl/ZtvJYLFfZj3hLEUz5",
  ),
  HeritagePlace(
    name: "Menara Kuala Lumpur",
    imageUrl:
        "https://theedgemalaysia.com/_next/image?url=https%3A%2F%2Fassets.theedgemarkets.com%2F20250226-kl%20tower%20skyline-ZHD-2455-APP_theedgemalaysia_0.jpg&w=1920&q=75",
    state: "Kuala Lumpur",
    description:
        "Menara Kuala Lumpur, or KL Tower, is a telecommunications tower that stands as one of the tallest structures in the world. Completed in 1996, it offers panoramic views of the city and serves as a key landmark, symbolizing Malaysia's modern development.",
    locationUrl: "https://maps.app.goo.gl/YCcoVTRCdNaGHUKU7",
  ),
  HeritagePlace(
    name: "Taman Tasik Titiwangsa",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/fc/38/44/caption.jpg?w=1200&h=-1&s=1",
    state: "Kuala Lumpur",
    description:
        "Taman Tasik Titiwangsa is a scenic park that features a large lake surrounded by lush greenery. Historically, it has served as a recreational area for locals and tourists, reflecting the importance of green spaces in urban planning.",
    locationUrl: "https://maps.app.goo.gl/yJRLVDzz2Z9HN83w6",
  ),
  HeritagePlace(
    name: "Istana Seri Menanti",
    imageUrl:
        "https://www.pelago.com/img/products/MY-Malaysia/seremban-seri-menanti-private-day-tour-from-kuala-lumpur/0447d337-8b58-45f1-822b-bf77e4a3a649_seremban-seri-menanti-private-day-tour-from-kuala-lumpur-xlarge.jpg",
    state: "Negeri Sembilan",
    description:
        "Istana Seri Menanti is the royal palace of the Negeri Sembilan Sultanate, built in the early 20th century. This magnificent wooden structure reflects the unique Minangkabau architectural style, characterized by its distinctive roof design. The palace is a symbol of the state's royal heritage and serves as an important cultural landmark, showcasing the history and traditions of the Negeri Sembilan people.",
    locationUrl: "https://maps.app.goo.gl/xD349dMwkNsL8qBY8",
  ),
];
