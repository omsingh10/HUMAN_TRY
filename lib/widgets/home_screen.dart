import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 70, 77, 36), // Dark green background

        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppBar(
              backgroundColor: const Color.fromARGB(100, 20, 21, 21),
              elevation: 1,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              title: const Text(
                "Lexisense",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              centerTitle: true,
              leading: IconButton(
                iconSize: 28,
                icon: const Icon(Icons.menu, color: Color.fromARGB(221, 232, 231, 231)),
                onPressed: () {},
              ),
              
              actions: [
                IconButton(
                  iconSize: 28,
                  icon: const Icon(Icons.account_circle, color: Color.fromARGB(221, 255, 255, 255)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Image Placeholder
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Image Placeholder",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Grid Layout
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children: [
                    // Dyslexia Test Card
                    GestureDetector(
                      onTap: () {
                        // Navigate to Dyslexia Test
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFC8C8), // Pink
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.psychology,
                              size: 40,
                              color: Colors.redAccent,
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Dyslexia Test",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Icon(
                              Icons.toggle_on,
                              size: 32,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Other empty cards
                    _buildEmptyCard(const Color(0xFF6BAE9F)), // Green
                    _buildEmptyCard(const Color(0xFFFFC8C8)), // Pink
                    _buildEmptyCard(const Color(0xFF6BAE9F)),
                    _buildEmptyCard(const Color(0xFFFFC8C8)),
                    _buildEmptyCard(const Color(0xFF6BAE9F)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to create empty cards
  static Widget _buildEmptyCard(Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
