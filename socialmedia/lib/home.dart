import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: const Text('Social Media'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: screenHeight * 0.02),
            Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What\'s on your mind?',
                  prefixIcon: Icon(Icons.edit),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              height: screenHeight * 0.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  StoryCard(
                    image: 'assets/images/user1.png',
                    name: 'Niraj Zargad',
                  ),
                  StoryCard(
                    image: 'assets/images/user2.png',
                    name: 'Anonymous',
                  ),
                  StoryCard(
                    image: 'assets/images/user3.png',
                    name: 'Ritanshu Koul',
                  ),
                  StoryCard(
                    image: 'assets/images/user4.png',
                    name: 'Anonymous',
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            const PostCard(
              image: 'assets/images/user1.png',
              name: 'Niraj Zargad',
              timeAgo: '2 hours ago',
              text: 'This is a test post.',
            ),
            const PostCard(
              image: 'assets/images/user2.png',
              name: 'Anonymous',
              timeAgo: '4 hours ago',
              text: 'This is another test post.',
            ),
            const PostCard(
              image: 'assets/images/user3.png',
              name: 'Ritanshu Koul',
              timeAgo: '5 hours ago',
              text: 'Yet another test post.',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final String image;
  final String name;

  const StoryCard({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(left: screenWidth * 0.05),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: screenHeight * 0.035,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(height: screenHeight * 0.01),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String image;
  final String name;
  final String timeAgo;
  final String text;

  const PostCard(
      {super.key,
      required this.image,
      required this.name,
      required this.timeAgo,
      required this.text});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: screenHeight * 0.035,
                backgroundImage: AssetImage(image),
              ),
              SizedBox(width: screenWidth * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    timeAgo,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            text,
            style: TextStyle(fontSize: screenHeight * 0.025),
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              SizedBox(width: screenWidth * 0.02),
              const Text('123'),
              SizedBox(width: screenWidth * 0.02),
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline),
                onPressed: () {},
              ),
              SizedBox(width: screenWidth * 0.02),
              const Text('456'),
              SizedBox(width: screenWidth * 0.02),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
              SizedBox(width: screenWidth * 0.02),
              const Text('789'),
            ],
          ),
        ],
      ),
    );
  }
}