import 'package:flutter/material.dart';

import 'display.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: Text('Dashboard', style: TextStyle(color: Colors.white,fontSize: 30.0,),),
        actions: <Widget>[Icon(Icons.notifications_none, size: 30.0, color: Colors.white,)],
      ),
      body: SafeArea(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[ 
            Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 80,
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                    child: TextField( 
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.w500,),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300,),
                    prefixIcon: Icon(Icons.search ,color: Colors.white, size: 40.0,),
                    border: OutlineInputBorder(
                      gapPadding: 4.0,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(child:Text('All', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500,),),),
                    ),
                     Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(child:Text('Sofa', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500,),),),
                    ),
                     Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 40,
                      width: 120,
                      child: Center(child:Text('Park Bench', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500,),),),
                    ),
                     Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 40,
                      width: 120,
                      child: Center(child:Text('ArmChair', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500,),),),
                    ),
                  ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    overflow: Overflow.clip,
                    children: <Widget> [ 
                      Container(
                      margin: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
                      ),
                    ),
                    ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        SizedBox(height: 20.0,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Display(tagname: 'picture1',title: 'Clasic Leather Arm Chair',imgno: '1')),);
                          },
                           child: Stack(
                            overflow: Overflow.visible,
                            children: <Widget> [ 
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(5.0, 20.0),
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.all(20.0),
                              height: 160.0,
                            ),
                            Positioned(
                              top: 40,
                              left: 40,
                              right: 200,
                              child: Container(
                                height: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text('Classic Leather', style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.w700,),),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Container(
                                      child: Text('Arm Chair', style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.w500,),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              left: 150,
                              top: 0,
                              bottom: 10,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 20.0),
                                child: Hero(tag: 'picture1', 
                                child: Image.asset(
                                  'lib/images/Item_1.png', width: 200.0, height: 200.0, fit: BoxFit.contain,
                                 ),
                                ),
                              ),
                            ),

                            Positioned(
                              bottom: 20,
                              top: 140,
                              right: 250,
                              left: 20,
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.amber[300],
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                                ),
                                child: Center(child: Text('45\$', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300),),),
                              ),
                            ),
                          ],  
                      ),
                        ),

                      SizedBox(height: 20.0,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Display(tagname: 'picture2',title: 'Poppy Plastic Tub Chair',imgno: '2')),);
                          },
                           child: Stack(
                            children: <Widget> [ 
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(5.0, 30.0),
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.all(20.0),
                              height: 160.0,
                            ),
                            Positioned(
                              top: 40,
                              left: 40,
                              right: 200,
                              child: Container(
                                height: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text('Poppy Plastic', style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.w700,),),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Container(
                                      child: Text('Tub Chair', style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.w500,),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              left: 150,
                              top: 0,
                              bottom: 10,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 20.0),
                                child: Hero(tag: 'picture2', 
                                child:Image.asset(
                                  'lib/images/Item_2.png', width: 200.0, height: 200.0, fit: BoxFit.contain,
                                 ),
                                 ),
                              ),
                            ),

                            Positioned(
                              bottom: 20,
                              top: 140,
                              right: 250,
                              left: 20,
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.amber[300],
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                                ),
                                child: Center(child: Text('45\$', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300),),),
                              ),
                            ),
                          ],  
                      ),
                        ),

                      SizedBox(height: 20.0,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Display(tagname: 'picture3',title: 'Bar Stool Chair',imgno: '3')),);
                          },
                           child: Stack(
                            children: <Widget> [ 
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(3.0, 30.0),
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.all(20.0),
                              height: 160.0,
                            ),
                            Positioned(
                              top: 40,
                              left: 40,
                              right: 200,
                              child: Container(
                                height: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text('Bar Stool', style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.w700,),),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Container(
                                      child: Text('Chair', style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.w500,),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              left: 150,
                              top: 0,
                              bottom: 10,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 20.0),
                                child: Hero(tag: 'picture3', 
                                child: Image.asset(
                                  'lib/images/Item_3.png', width: 200.0, height: 200.0, fit: BoxFit.contain,
                                 ),
                                 ),
                              ),
                            ),

                            Positioned(
                              bottom: 20,
                              top: 140,
                              right: 250,
                              left: 20,
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.amber[300],
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                                ),
                                child: Center(child: Text('45\$', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300),),),
                              ),
                            ),
                          ],  
                      ),
                        ),
                      ],
                    ),
                  ],
                ),
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