import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../services/claude_api.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  File? _image;
  String? _description;
  bool _isLoading = false;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
        await _analyseImage() ;
      }
    }catch (e){
      print(e);
    }

  }


  Future<void>_analyseImage() async {
      if (_image == null) return;

      setState(() {
        _isLoading = true;
      });

      try{
        final description = await ClaudeApiService().analyzeHeritageImage(_image!);

        setState(() {
          _description = description;
          _isLoading = false;
        });

      }catch(e){
        print(e);
        setState(() {
          _isLoading = false;
        });
      }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Heritage"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(" Snap or upload a photo of a heritage site.", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.pinkAccent,
              )),
              Text("Let our AI explore its story 📷.", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.pinkAccent,
              )),
              SizedBox(height: 20),
              Container(
                height: 300,
                color: Colors.grey,
                child: _image != null ? Image.file(_image!) : Center(child: Text("please Choose an Image")),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //camera button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60),
                      backgroundColor: Colors.pinkAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => _pickImage(ImageSource.camera) ,
                    icon: const Icon(Icons.camera_alt),
                    label: const Text("Camera"),
                  ),
                  const SizedBox(width: 16),
                  //gallery button
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60),
                      backgroundColor: Colors.white70,
                      foregroundColor: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => _pickImage(ImageSource.gallery) ,
                    icon: const Icon(Icons.photo_library),
                    label: const Text("Gallery"),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              if(_isLoading)
                const Center(child: CircularProgressIndicator(),)

              else if (_description != null)
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey[300]!),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      _description!,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black87,
                      ),
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
