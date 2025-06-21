import 'package:flutter/material.dart';
import 'package:my_warisan/components/carousel.dart';
import 'package:my_warisan/models/heritages_places.dart';

import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Carousel image
  final List<String> Images = [
    'https://cdn.getyourguide.com/image/format=auto,fit=crop,gravity=auto,quality=60,width=620,height=400,dpr=2/tour_img/40c3780e231b56ab.jpeg',
    'https://www.caridestinasi.com/wp-content/uploads/2015/08/tempat-bersejarah-di-malaysia.jpg',
    'https://media.siraplimau.com/2023/08/md31TSIp-s13___.jpg',
  ];


  //search bar
  String selectedState = "All";
  String searchQuery = "";

  List<String> states = [
    "All",
    "Melaka",
    "Kuala Lumpur",
    "Penang",
    "Selangor",
    "Johor",
    "Sabah",
    "Sarawak",
    "Perlis",
    "Pahang",
    "Perak",
    "Kedah",
    "Kelantan",
    "Negeri Sembilan",
    "Putrajaya",
  ];

  @override
  Widget build(BuildContext context) {
    List<HeritagePlace> filteredPlaces = heritagePlaces.where((place) {
      bool matchesState = selectedState == "All" || place.state == selectedState;
      bool matchesSearch = place.name.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesState && matchesSearch;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("MyWarisan"),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 12),
                const Text(
                  "'Where Culture Lives On.'",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 20),
                ImageCarousel(imageUrls: Images),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // Search bar
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverToBoxAdapter(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search heritage places...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 10)),

          // Filter chips
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                children: states.map((state) {
                  final isSelected = selectedState == state;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ChoiceChip(
                      label: Text(state),
                      selected: isSelected,
                      selectedColor: Colors.pinkAccent,
                      backgroundColor: Colors.grey[200],
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                      onSelected: (_) {
                        setState(() {
                          selectedState = state;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 10)),

          // Heritage Place Cards
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final place = filteredPlaces[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(place: place),
                        ),
                      );
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                            child: Image.network(
                              place.imageUrl,
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  place.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on, color: Colors.pinkAccent, size: 16),
                                    const SizedBox(width: 4),
                                    Text(
                                      place.state,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: filteredPlaces.length,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
