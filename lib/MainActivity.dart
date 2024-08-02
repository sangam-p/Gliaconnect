import 'package:flutter/material.dart';
import 'ConcussionScreen.dart'; // Make sure this path is correct

class MainActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.blue),
          onPressed: () {
            // Handle menu button press
          },
        ),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.blue),
            onPressed: () {
              // Handle notifications button press
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.blue),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.teal[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.teal,
                  size: 100,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.teal),
                  onPressed: () {
                    // Handle previous button press
                  },
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.teal),
                  onPressed: () {
                    // Handle next button press
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 5,
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 5,
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 5,
                ),
              ],
            ),
            SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                _buildGridItem(context, 'assets/concussion.png', 'Concussion'),
                _buildGridItem(context, 'assets/pcs.png', 'PCS'),
                _buildGridItem(context, 'assets/ptsd.png', 'PTSD'),
                _buildGridItem(context, 'assets/tbi.png', 'TBI'),
                _buildGridItem(context, 'assets/quiz.png', 'Quiz'),
                _buildGridItem(context, 'assets/sports.png', 'Sports'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String imagePath, String title) {
    return GestureDetector(
      onTap: () {
        if (title == 'Concussion') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ConcussionScreen(userType: 'user')), // Change userType accordingly
          );
        }
      },
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
