import 'package:flutter/material.dart';
import 'package:textrally/widgets/custom_button.dart';
import 'package:textrally/widgets/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController= TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: ConstrainedBox(
    constraints: BoxConstraints(maxWidth: 600),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Create room',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: size.height * 0.08,
          ),
          CustomTextField(controller: _nameController, hintText: 'Enter your nickname'),
          const SizedBox(
            height: 30,
          ),
          CustomButton(text: 'Create', onTap: (){},)
        ],
      ),
    ))));
  }
}
