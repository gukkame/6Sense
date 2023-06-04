import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class RecordButton extends StatefulWidget {
  const RecordButton({super.key});

  @override
  State<RecordButton> createState() => _RecordButtonState();
}

class _RecordButtonState extends State<RecordButton> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Where do you \n want to go?';

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );

      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
      print(_text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
            //  foregroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      onPressed: _listen,
      
      child: new Align(
          child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(300),
            border: Border.all(
              width: 15,
              color: Colors.white,
            )),
            
        child: Icon(
          Icons.settings_voice,
          color: Colors.white,
          size: 180,
        ),
      )),
    );
  }
}
