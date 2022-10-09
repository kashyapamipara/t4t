import 'package:flutter/material.dart';
class HomeBody extends StatefulWidget {


  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: TextFormField(

            decoration: InputDecoration(
              filled: true,
              suffixIcon: Icon(Icons.search,size: 25,),
              fillColor: Colors.grey.withOpacity(0.3),
              hintText: 'Search Here...',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(height: 200,
        child: Image.asset('assets/test.jpeg'),

        color: Colors.blue,),
        SizedBox(height: 10,),
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount:10,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(


                  ),
                  child: Image.asset('assets/test1.jpg',fit: BoxFit.cover,),
                );
              }),
        ),
      ],
    );
  }
}
