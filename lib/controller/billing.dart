import 'package:flutter/material.dart';

class BillingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Premium", style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 25, 165, 158),
      ),
      body: SingleChildScrollView(
        // Add SingleChildScrollView to make content scrollable
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 174, 240, 223),
                Color.fromARGB(255, 217, 218, 218),
              ],
            ),
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/lazynotes_logo.png',
                height: 180, // Adjust the height as needed
              ),
              SizedBox(height: 20),
              Text(
                "Premium Includes:",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              // ... (Other pricing info)
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle subscribe button action
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  shadowColor: Colors.blue.withOpacity(0.5),
                ),
                child: Text(
                  "Subscribe",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Pricing:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 217, 255),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "4K context: \$0.0015 / 1K tokens",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
                "16K context: \$0.003 / 1K tokens",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              // Additional Information
              SizedBox(height: 48),
              _buildInfoRow("AI Generation", Icons.lightbulb_outline),
              _buildInfoRow("200 Notes", Icons.description),
              _buildInfoRow("Track Notes", Icons.track_changes),
              _buildInfoRow("Cloud Storage", Icons.cloud),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Icon(
            icon,
            size: 30,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
    );
  }
}
