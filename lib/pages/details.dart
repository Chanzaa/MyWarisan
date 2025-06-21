import 'package:flutter/material.dart';
import '../models/heritages_places.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  final HeritagePlace place;

  const DetailsPage({super.key, required this.place});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: Image.network(
                place.imageUrl,
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 24),

            // Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Location tag
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.pinkAccent),
                      const SizedBox(width: 6),
                      Text(
                        place.state,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Title
                  Text(
                    place.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Subtitle
                  const Text(
                    "About this place:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Description
                  Text(
                    place.description,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 32),

                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        final Uri uri = Uri.parse(place.locationUrl);
                        if (await canLaunchUrl(uri)) {
                        await launchUrl(uri, mode: LaunchMode.externalApplication);
                        } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Could not open map")),
                        );
                        }
                      },
                      icon: const Icon(Icons.navigation),
                      label: const Text("Navigate to Location"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
