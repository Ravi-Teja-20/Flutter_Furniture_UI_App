import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Display extends StatelessWidget {
  String tagname;
  String title;
  String imgno;

  Display({this.tagname ,this.title, this.imgno});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Color(0xFFF1EFF1)  ,
        elevation: 0.0,
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.black,size: 20.0,),),
        title: Text('BACK',style: TextStyle(color: Colors.black, fontSize: 15.0),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.add_shopping_cart, size: 30.0, color: Colors.black,),
          ),
        ],
      ),

      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-190,
            decoration: BoxDecoration(
              color: Color(0xFFF1EFF1),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10.0,),
                Center(
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                      width: 270.0,
                      height: 270.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(230.0),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        right: 10,
                        child: Container(
                          height: 300.0,
                          width: 300.0,
                          child: Hero(
                            tag: tagname,
                            child: Image.asset('lib/images/Item_$imgno.png', fit: BoxFit.cover ,),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,                          
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,                          
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container( 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,   
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: Text(title, style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w900),),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: Text('\$45', style: TextStyle(color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: Text('This is Description about the product. This is Description about the product. ', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0, bottom: 20.0),
            width: 330.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            height: 60,
            child: RaisedButton(
              onPressed: () {},
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Color(0xFFFFA41B),
              child: Row(
                
                children: <Widget>[
                  SizedBox(width: 10.0,),
                  Icon(Icons.chat_bubble_outline, color: Colors.white,size: 20.0,),
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    child: Text('Chat', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300),),
                  ),
                  SizedBox(width: 80.0,),
                  Icon(Icons.add_shopping_cart, color: Colors.white,size: 20.0,),
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    child: Text('Add to Cart', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}