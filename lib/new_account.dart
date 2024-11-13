import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  late TextEditingController _textController1;
  late TextEditingController _textController2;
  late FocusNode _focusNode1;
  late FocusNode _focusNode2;

  @override
  void initState() {
    super.initState();
    _textController1 = TextEditingController();
    _textController2 = TextEditingController();
    _focusNode1 = FocusNode();
    _focusNode2 = FocusNode();
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    super.dispose();
  }

  Widget _buildTextField(
      {required TextEditingController controller, required FocusNode focusNode}) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: focusNode.hasFocus || controller.text.isNotEmpty ? '' : 'Masukkan teks',
        alignLabelWithHint: true,
        labelStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.blue),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      ),
      onChanged: (text) {
        setState(() {});
      },
      onTap: () {
        setState(() {});
      },
      onEditingComplete: () {
        focusNode.unfocus();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFE2CC), Color(0xFFD7843C)],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        'Create Account',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                      ),
                      SizedBox(height: 10),
                      Text('Email', style: TextStyle(fontSize: 32, color: Colors.white)),
                      Image.asset('assets/images/email.png', width: 80, height: 80),
                      SizedBox(height: 20),
                      _buildTextField(controller: _textController1, focusNode: _focusNode1),
                      SizedBox(height: 20),
                      _buildTextField(controller: _textController2, focusNode: _focusNode2),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB86D2A),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: Text(
                    'Verification',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
