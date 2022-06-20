import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatItem extends StatefulWidget {
  String? title;

  chatItem({this.title});
  @override
  _chatItemState createState({title}) => _chatItemState();
}

class _chatItemState extends State<chatItem> with TickerProviderStateMixin {
  /// set key for bottom sheet
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final List<Msg> _messages = <Msg>[];
  final TextEditingController _textController = new TextEditingController();
  bool _isWriting = false;

  /// Create Modal BottomSheet (SortBy)
  void _modalBottomSheetChat() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: new Container(
              height: 80.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Image.asset(
                        "assets/Template4/image/icon_image.png",
                        height: 45.0,
                      ),
                      Text(
                        "Photo",
                        style: TextStyle(fontFamily: "Popins", fontSize: 11.0),
                      )
                    ]),
                    InkWell(
                      onTap: () {},
                      child: Column(children: <Widget>[
                        Image.asset(
                          "assets/Template4/image/icon_video.png",
                          height: 45.0,
                        ),
                        Text(
                          "Video",
                          style:
                              TextStyle(fontFamily: "Popins", fontSize: 11.0),
                        )
                      ]),
                    ),
                    Column(children: <Widget>[
                      Image.asset(
                        "assets/Template4/image/icon_microphone.png",
                        height: 45.0,
                      ),
                      Text(
                        "Voice",
                        style: TextStyle(fontFamily: "Popins", fontSize: 11.0),
                      )
                    ]),
                    Column(children: <Widget>[
                      Image.asset(
                        "assets/Template4/image/icon_file.png",
                        height: 45.0,
                      ),
                      Text(
                        "File",
                        style: TextStyle(fontFamily: "Popins", fontSize: 11.0),
                      )
                    ]),
                    Column(children: <Widget>[
                      Image.asset(
                        "assets/Template4/image/icon_monitor.png",
                        height: 45.0,
                      ),
                      Text(
                        "Screen",
                        style: TextStyle(fontFamily: "Popins", fontSize: 11.0),
                      )
                    ]),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,

      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0.4,
        title: Padding(
          padding: const EdgeInsets.only(right: 90.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Text(
                  widget.title!,
                  style: TextStyle(
                      fontFamily: "Sofia", fontSize: 20.0, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xFFfd4040)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      /// body in chat like a list in a message
      body: Container(
        color: Colors.white,
        child: new Column(children: <Widget>[
          new Flexible(
            child: _messages.length > 0
                ? Container(
                    child: new ListView.builder(
                      itemBuilder: (_, int index) => _messages[index],
                      itemCount: _messages.length,
                      reverse: true,
                      padding: new EdgeInsets.all(11.0),
                    ),
                  )
                : NoMessage(),
          ),

          /// Line
          Container(
            height: 0.4,
            width: double.infinity,
            color: Colors.white24,
          ),
          new Container(
            child: _buildComposer(),
            decoration: new BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 1.0, color: Colors.black12)]),
          ),
        ]),
      ),
    );
  }

  /// Component for typing text
  Widget _buildComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
          height: 50.0,
          margin: const EdgeInsets.symmetric(horizontal: 9.0),
          child: new Row(
            children: <Widget>[
              InkWell(
                  onTap: _modalBottomSheetChat,
                  child: Icon(
                    Icons.add,
                    color: Color(0xFFfd4040),
                    size: 27.0,
                  )),
              new Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: new TextField(
                        controller: _textController,
                        onChanged: (String txt) {
                          setState(() {
                            _isWriting = txt.length > 0;
                          });
                        },
                        onSubmitted: _submitMsg,
                        decoration: new InputDecoration.collapsed(
                            hintText: "Enter some text to send a message",
                            hintStyle: TextStyle(
                                fontFamily: "Sans",
                                fontSize: 16.0,
                                color: Colors.black12)),
                      ),
                    ),
                  ),
                ),
              ),
              new Container(
                  margin: new EdgeInsets.symmetric(horizontal: 3.0),
                  child: Theme.of(context).platform == TargetPlatform.iOS
                      ? new CupertinoButton(
                          child: new Text("Submit"),
                          onPressed: _isWriting
                              ? () => _submitMsg(_textController.text)
                              : null)
                      : new IconButton(
                          icon: new Icon(Icons.message),
                          onPressed: _isWriting
                              ? () => _submitMsg(_textController.text)
                              : null,
                        )),
            ],
          ),
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? new BoxDecoration(
                  border: new Border(top: new BorderSide(color: Colors.brown)))
              : null),
    );
  }

  void _submitMsg(String txt) {
    _textController.clear();
    setState(() {
      _isWriting = false;
    });
    Msg msg = new Msg(
      txt: txt,
      animationController: new AnimationController(
          vsync: this, duration: new Duration(milliseconds: 800)),
    );
    setState(() {
      _messages.insert(0, msg);
    });
    msg.animationController!.forward();
  }

  @override
  void dispose() {
    for (Msg msg in _messages) {
      msg.animationController!.dispose();
    }
    super.dispose();
  }
}

class Msg extends StatelessWidget {
  Msg({this.txt, this.animationController});

  final String? txt;
  final AnimationController? animationController;

  @override
  Widget build(BuildContext ctx) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController!, curve: Curves.fastOutSlowIn),
      axisAlignment: 0.0,
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 2.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Expanded(
              child: Padding(
                padding: const EdgeInsets.all(00.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(1.0),
                              bottomLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              tileMode: TileMode.repeated,
                              colors: [
                                Colors.orangeAccent,
                                Color(0xFFfd4040)
                              ])),
                      padding: const EdgeInsets.all(11.0),
                      child: new Text(
                        txt!,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// If list empty show no message image
class NoMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ListView(
        children: <Widget>[
          /// image
          Padding(
            padding: const EdgeInsets.only(top: 150.0, bottom: 25.0),
            child: Center(
              child: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "assets/Template4/image/noMessage.png",
                    height: 200.0,
                  )),
            ),
          ),
          Center(
              child: Text(
            "Not Have Message",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black12,
                fontSize: 17.0,
                fontFamily: "Sofia"),
          ))
        ],
      ),
    ));
  }
}
