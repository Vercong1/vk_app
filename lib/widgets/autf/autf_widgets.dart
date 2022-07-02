import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AutfWidget extends StatefulWidget {
  AutfWidget({Key? key}) : super(key: key);

  @override
  
  State<AutfWidget> createState() => _AutfWidgetState();
}
final iconColor = const Color(0xFF2787F5);
class _AutfWidgetState extends State<AutfWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
  children: [
      Icon(Icons.telegram_sharp, color: iconColor),
      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 2)),
      Text ('ID', style: TextStyle( color: Colors.black, fontSize: 18)), 
  ],
)
        )
      ),
        body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView (
        children: [_MainInfoWidget (),
        ],
        ),
      ),
    );
  }
}

class _MainInfoWidget extends StatelessWidget {
  const _MainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Icon(Icons.telegram_sharp, color: iconColor, size: 64,),
       SizedBox(height: 20),
       Text ('Введите номер', style: TextStyle( color: Colors.black, fontSize: 21)),
       SizedBox(height: 20),
       Text ('Ваш номер телефона будет использоваться для входа в аккаунт', style: TextStyle( color: Colors.grey, fontSize: 15),textAlign: TextAlign.center,),
      _AurButtnonWidghet(),
      ],
    ),
    );
  }
}
class _AurButtnonWidghet extends StatefulWidget {
  _AurButtnonWidghet({Key? key}) : super(key: key);

  @override
  State<_AurButtnonWidghet> createState() => __AurButtnonWidghetState();
}

class __AurButtnonWidghetState extends State<_AurButtnonWidghet> {

// final _textController = TextEditingController();
// void _login (){
// final worldColor = _textController.text;
// if (worldColor == null){
// } else {
//  setState(() { 
//  });
// }
// }

//   @override
//   Widget build(BuildContext context) {
//     final colorButton =   MaterialStateProperty.all (Color.fromARGB(255, 50, 101, 158));
//     final decorationRow = const InputDecoration(border: OutlineInputBorder(), contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), isCollapsed: true, hintText: "Email",filled: true, fillColor: Color.fromARGB(255, 236, 236, 236), hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(255, 145, 144, 144)), );
//     final richBotton = const  TextStyle(color: Color.fromARGB(255, 117, 117, 117), fontSize: 11,);  // textAlign: TextAlign.center;  пример нескольких свойств в одном методе
//     final text = const TextStyle(color: Colors.grey, fontSize: 11); 
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       child: Column(
//       children: [
//         TextField(controller: _textController,decoration: decorationRow,),
//         SizedBox(height: 15),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               // colorButton = MaterialStateProperty.all (Color.fromARGB(255, 157, 186, 219));
//         });
//       },
//             style: ButtonStyle(backgroundColor: colorButton, minimumSize: MaterialStateProperty.all (Size.fromHeight(1)), // кнопка на всю ширину с адаптивной высотой
//             foregroundColor: MaterialStateProperty.all (Colors.white),          
//           textStyle: MaterialStateProperty.all (
//           TextStyle(
//             fontSize: 16, fontWeight: FontWeight.w500)),
//             padding: MaterialStateProperty.all (EdgeInsets.symmetric(horizontal: 10, vertical: 10))),           
//             child: Text ('Next')),

// мой способ

// final _textController = TextEditingController();
//   final _focusNode = FocusNode();

//   Color get buttonColor =>
//       _textController.text.isNotEmpty ? Colors.green : Colors.grey;

//   @override
//   void dispose() {
//     _textController.dispose();
//     _focusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     //  final decorationRow = const InputDecoration(border: OutlineInputBorder(), contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), isCollapsed: true, hintText: "Email",filled: true, fillColor: Color.fromARGB(255, 236, 236, 236), hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(255, 145, 144, 144)), );
//     final richBotton = const  TextStyle(color: Color.fromARGB(255, 117, 117, 117), fontSize: 11,);  // textAlign: TextAlign.center;  пример нескольких свойств в одном методе
//     final text = const TextStyle(color: Colors.grey, fontSize: 11); 
//    return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       child: Column(
//       children: [
//           TextField(
//             focusNode: _focusNode,
//             controller: _textController,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               isCollapsed: true,
//               hintText: "Email",
//               filled: true,
//               fillColor: Color.fromARGB(255, 236, 236, 236),
//               hintStyle: TextStyle(
//                 fontSize: 15,
//                 color: Color.fromARGB(255, 145, 144, 144),
//               ),
//             ),
//           ),
//           SizedBox(height: 15),
//           ElevatedButton(
//             onPressed: _textController.text.isNotEmpty
//                 ? () {
//                     _textController.clear();
//                     _focusNode.unfocus();
//                   }
//                 : null,
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(buttonColor),
//               minimumSize: MaterialStateProperty.all(Size.fromHeight(1)),
//               foregroundColor: MaterialStateProperty.all(Colors.white),
//               textStyle: MaterialStateProperty.all(
//                 TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               padding: MaterialStateProperty.all(
//                 EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               ),
//             ),
//             child: Text('Next')),

// сопосб пацанчика 1 

final _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // Color red is button is disabled and green is enabled. you can change as per you requirement.
  final successColor = MaterialStateProperty.all(Color.fromARGB(255, 62, 126, 199));
  final errorColor = MaterialStateProperty.all(Color.fromARGB(255, 145, 144, 144));

  final decorationRow = const InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    isCollapsed: true,
    hintText: "Email или телефон",
    filled: true,
    fillColor: Color.fromARGB(255, 236, 236, 236),
    hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(255, 145, 144, 144)),
  );
  final richBotton = const TextStyle(
    color: Color.fromARGB(255, 117, 117, 117),
    fontSize: 11,
  ); // textAlign: TextAlign.center;
  final text = const TextStyle(color: Colors.grey, fontSize: 11);
  bool isValid = false;
  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      if (_textController.text.isEmpty) {
        setState(() {
          isValid = false;
        });
      } else {
        setState(() {
          isValid = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _textController,
                decoration: decorationRow,
                validator: (value) {
                   () { };
                },
              ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: !isValid
                      ? null
                      : () {
                          // go  further.
                        },
                  style: ButtonStyle(
                      backgroundColor: isValid ? successColor : errorColor,
                      minimumSize: MaterialStateProperty.all(Size.fromHeight(1)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
                  child: Text('Продолжить')),
          
     
     
    
   SizedBox(height: 15),
      
      // style: ButtonStyle(backgroundColor: MaterialStateProperty.all (Color(0xFF4986CC)), minimumSize: MaterialStateProperty.all (Size.fromHeight(1)), // кнопка на всю ширину с адаптивной высотой
      //       foregroundColor: MaterialStateProperty.all (Colors.white),           цвета для кнопки активной
      
      RichText(
        textAlign: TextAlign.center,
  text: TextSpan(
    children: [
       TextSpan(
        text: 'Нажимая «Продолжить», вы принимаете ',
        style: text,
        recognizer: TapGestureRecognizer()..onTap = () {
          // Single tapped.
        },
      ),
      TextSpan(
        text: 'пользовательское соглашение ',
        style: richBotton,
        recognizer: TapGestureRecognizer()..onTap = () {
            print('asdsa');
          // Single tapped.
        },
      ),
      TextSpan(
        text: 'и',
        style: text,
        // recognizer:  DoubleTapGestureRecognizer()..onDoubleTap = () {
        //   // Double tapped.
        // }
      ),
      TextSpan(
        text: ' политику конфиденциальности.',
        style: richBotton,
            recognizer: TapGestureRecognizer()..onTap = () {
            print('wqe2');
            }
        // recognizer: LongPressGestureRecognizer()..onLongPress = () {
        //   // Long Pressed.
        // },
      ),
    ],
  ),
),
   SizedBox(height: 5),

// ListTile(
//   leading: Icon(
//     CupertinoIcons.arrow_right,
//   ),
//   title: Text(
//     'Notifications', style: richBotton
//   ),
//   trailing: 
//    Icon(Icons.arrow_forward, color: Colors.grey, size: 10,
//   ),
// ),

RichText(
        textAlign: TextAlign.center,
    text: TextSpan(
        children: [
          TextSpan
          (text: 'Передаваемые данные', style: richBotton,
           recognizer: TapGestureRecognizer()..onTap = () {
            print('21321');
            }),
          WidgetSpan(
             alignment: PlaceholderAlignment.middle,
              child: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 11,)
          ),
        ],
    ),
),
          ],
          ),
        ),
      );
  }
}



















// Низ моего кода

//             SizedBox(height: 15),
      
//       // style: ButtonStyle(backgroundColor: MaterialStateProperty.all (Color(0xFF4986CC)), minimumSize: MaterialStateProperty.all (Size.fromHeight(1)), // кнопка на всю ширину с адаптивной высотой
//       //       foregroundColor: MaterialStateProperty.all (Colors.white),           цвета для кнопки активной
      
//       RichText(
//         textAlign: TextAlign.center,
//   text: TextSpan(
//     children: [
//        TextSpan(
//         text: 'Нажимая «Продолжить», вы принимаете ',
//         style: text,
//         recognizer: TapGestureRecognizer()..onTap = () {
//           // Single tapped.
//         },
//       ),
//       TextSpan(
//         text: 'пользовательское соглашение ',
//         style: richBotton,
//         recognizer: TapGestureRecognizer()..onTap = () {
//             print('asdsa');
//           // Single tapped.
//         },
//       ),
//       TextSpan(
//         text: 'и',
//         style: text,
//         // recognizer:  DoubleTapGestureRecognizer()..onDoubleTap = () {
//         //   // Double tapped.
//         // }
//       ),
//       TextSpan(
//         text: ' политику конфиденциальности.',
//         style: richBotton,
//             recognizer: TapGestureRecognizer()..onTap = () {
//             print('wqe2');
//             }
//         // recognizer: LongPressGestureRecognizer()..onLongPress = () {
//         //   // Long Pressed.
//         // },
//       ),
//     ],
//   ),
// ),
//    SizedBox(height: 5),

// // ListTile(
// //   leading: Icon(
// //     CupertinoIcons.arrow_right,
// //   ),
// //   title: Text(
// //     'Notifications', style: richBotton
// //   ),
// //   trailing: 
// //    Icon(Icons.arrow_forward, color: Colors.grey, size: 10,
// //   ),
// // ),

// RichText(
//         textAlign: TextAlign.center,
//     text: TextSpan(
//         children: [
//           TextSpan
//           (text: 'Передаваемые данные', style: richBotton,
//            recognizer: TapGestureRecognizer()..onTap = () {
//             print('21321');
//             }),
//           WidgetSpan(
//              alignment: PlaceholderAlignment.middle,
//               child: Icon(Icons.arrow_forward, color: Colors.grey, size: 11,)
//           ),
//         ],
//     ),
// ),
//         ],
//       ),
//     );
//   }
// }