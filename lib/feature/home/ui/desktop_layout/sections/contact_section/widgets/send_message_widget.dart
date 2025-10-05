import 'package:flutter/cupertino.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/widgets/custom_text_field.dart';
import 'package:portfolio/feature/home/ui/desktop_layout/sections/contact_section/widgets/send_message_button.dart';

class SendMessageWidget extends StatefulWidget {
  const SendMessageWidget({super.key});

  @override
  State<SendMessageWidget> createState() => _SendMessageWidgetState();
}

class _SendMessageWidgetState extends State<SendMessageWidget> {
   late TextEditingController usernameController ;
   late TextEditingController emailController ;
   late TextEditingController messageController ;
   GlobalKey<FormState> formKey = GlobalKey();
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    messageController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
       key: formKey,
      child: Column(
       
        spacing: 16,
        children: [
        CustomTextFormField(hintText: 'User Name',controller: usernameController,
        validator: (p0) {
          if(p0!.isEmpty){
            return 'Enter User Name';
          }
        },
        ),
        CustomTextFormField(hintText: 'Email',controller: emailController,
        // replace p0 by controller
        validator: (p0) {
          if(p0!.isEmpty){
            return 'Enter Email';
          }else if(isValidEmail(p0) == false){
            return 'Enter Valid Email';
          }
        },
        ),
        CustomTextFormField(hintText: 'Message',controller: messageController,
        validator: (p0) {
          if(p0!.isEmpty){
            return 'Enter Message';
           
          }
        },
        ),
        SendMessageButton(formKey: formKey,nameController: usernameController,emailController: emailController,messageController: messageController,)
      ],),
    );
  }
}
bool isValidEmail(String email) {
  String pattern =
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  RegExp regex = RegExp(pattern);
  return regex.hasMatch(email);
}