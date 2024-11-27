import 'package:flutter/material.dart';

class UploadPost extends StatefulWidget {
  const UploadPost({super.key});

  @override
  State<UploadPost> createState() => _UploadPostState();
}

class _UploadPostState extends State<UploadPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text('@Kangaroo0+',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/images/image.png',
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                ),
                SizedBox(height: 10),
                Text('Add Caption',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Color(0xFFE6E6E6),
                  child: TextField(
                    maxLines: 5,
                    minLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Enter your review',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFE6E6E6),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text('Add Hastag #',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextField(
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                    labelText: 'Add your own hastag',
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFE6E6E6),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                  color: Color(0xFFE6E6E6),
                  child: Text('#Style', style: TextStyle(fontSize: 16)),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text('Cancel',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        child: Text('Upload',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
