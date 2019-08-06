import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsCrolled) 
        {
          return <Widget> [
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 450.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  "assets/product-10.png", 
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
              child: Text(
                "Dry Fit Long Shirt",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("by Nike"),
            ),
             Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Details", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Ahhau ahau asauhsau ashuas ashuahsa saushas asuashuahsa sashaushuas", 
              ),
            ),
          ],
        ),
      ),
    );
  }
}