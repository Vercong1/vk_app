import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vk_app/Theme/button_style.dart';
import 'package:vk_app/widgets/autf/autf_login_widgets.dart';

class AutfPasswordWidget extends StatefulWidget {
  AutfPasswordWidget({Key? key}) : super(key: key);

  @override
  State<AutfPasswordWidget> createState() => _AutfPasswordWidgetState();
}

final iconColor = const Color(0xFF2787F5);

class _AutfPasswordWidgetState extends State<AutfPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
        color: Colors.grey
   ), 
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // Иконка по центру несмотря на кнопку назад
            children: [
          Icon(Icons.telegram_sharp, color: iconColor),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 2, vertical: 2)),
          Text('ID', style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            _MainInfoWidget(),
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
          Icon(
            Icons.telegram_sharp,
            color: iconColor,
            size: 64,
          ),
          SizedBox(height: 20),
          Text('Введите пароль',
              style: AppAuthTitleStyle.LinkButton),
          SizedBox(height: 20),
          Text(
            'Используйте пароль, указанный при регистрации c (Entered Text)' ,
            style: AppDescribeTittleStyle.LinkButton,
            textAlign: TextAlign.center,
          ),
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
  final _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // Color red is button is disabled and green is enabled. you can change as per you requirement.
  final successColor =
      MaterialStateProperty.all(Color.fromARGB(255, 62, 126, 199));
  final errorColor =
      MaterialStateProperty.all(Color.fromARGB(255, 195, 205, 230));

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
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
              obscureText: true, // введеный текст скрывается
              decoration: AppTextFieldPasswordStyle.LinkButton,
              validator: (value) {
                () {};
              },
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Забыли или не установили пароль?',
                          style: TextStyle( color: Color(0xFF4896CC),fontSize: 14, fontWeight: FontWeight.w500),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('21321');
                            }),
                    ],
                  ),
                ),
              ],
            ),

            
            SizedBox(height: 35),
            ElevatedButton(
                onPressed: !isValid
                    ? null
                    : () {
                          Navigator.of(context).pushNamed('/main_screen');                
                        // go  further.
                      },
                style: ButtonStyle(
                    backgroundColor: isValid ? successColor : errorColor,
                    minimumSize: MaterialStateProperty.all(Size.fromHeight(1)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
                child: Text('Продолжить')),

            SizedBox(height: 15),

            // style: ButtonStyle(backgroundColor: MaterialStateProperty.all (Color(0xFF4986CC)), minimumSize: MaterialStateProperty.all (Size.fromHeight(1)), // кнопка на всю ширину с адаптивной высотой
            //       foregroundColor: MaterialStateProperty.all (Colors.white),           цвета для кнопки активной
          ],
        ),
      ),
    );
  }
}
