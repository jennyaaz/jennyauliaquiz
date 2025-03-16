import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jenny Aulia Az Zahra'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      imageUrl: 'https://i.pinimg.com/736x/75/b0/de/75b0defa61ee4a77b95b965e2626f1b6.jpg',
                    ),
                  ),
                );
              },
              child: Image.network(
                'https://i.pinimg.com/736x/75/b0/de/75b0defa61ee4a77b95b965e2626f1b6.jpg',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "FYI",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // Daftar Berita FYI
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  List<String> images = [
                    'https://pbs.twimg.com/media/GZx81dhawAAcH0m?format=jpg&name=large',
                    'https://pbs.twimg.com/media/GaBpTWNacAAy9si?format=jpg&name=large',
                    'https://pbs.twimg.com/media/GaRCtvbaYAA6DbH?format=jpg&name=large'
                  ];

                  List<String> descriptions = [
                    'FY BALI \n13-10-2024',
                    'FY SURABAYA \n16-10-2024',
                    'FY JAKARTA \n13-10-2024',
                  ];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            imageUrl: images[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 120,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            descriptions[index],
                            style: const TextStyle(color: Colors.black, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Galeri",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // Galeri GridView
            GridView.builder(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          imageUrl: 'https://i.pinimg.com/736x/74/4c/c7/744cc71f94f94222a601d13eb8495e0e.jpg',
                        ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://i.pinimg.com/736x/74/4c/c7/744cc71f94f94222a601d13eb8495e0e.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),

            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Disc",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // Daftar Discografi
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/3/32/Fourever.jpg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: const Text("Fourever", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Fourever is the eighth EP by South Korean band Day6."),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          imageUrl: 'https://upload.wikimedia.org/wikipedia/en/3/32/Fourever.jpg',
                        ),
                      ),
                    );
                  },
                );
              },
            ),

            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Bio",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // Bio User
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/20241019_113606.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text("Jenny", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("this to shall pass"),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
