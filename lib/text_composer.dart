import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {

  TextComposer(this.sendMessage);
  Function (String) sendMessage;

  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {

  final TextEditingController _controller = TextEditingController();

  bool _isComposed = false;

  void _reset(){
    _controller.clear();
    setState(() {
      _isComposed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: (){

            },
          ),
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration.collapsed(hintText: "Enviar uma Mensagem"),
              onChanged: (text){
                setState(() {
                  _isComposed = text.isNotEmpty;
                });
              },
              onSubmitted: (text){
                widget.sendMessage(text);
                _reset();
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _isComposed ? (){
              widget.sendMessage(_controller.text);
              _reset();
            } : null,
          )
        ],
      ),
    );
  }
}
