import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  Widget myContainer(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 70
      ),
      width: lebar,
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("sepatu1.png")
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text("Timeless Low Black White",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Rp. 210.000",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    );
  }

  Widget myContainer2(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 70
      ),
      width: lebar,
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("sepatu2.png")
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text("Gavin Navy White STZ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Rp. 200.000",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ) 
    );
  }

  Widget sizeSepatu(){
    return Container(
      margin: const EdgeInsets.only(
        bottom: 50
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: const Text("39",
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 5,
              )
            ),
            child: const Text("40",
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 5,
              )
            ),
            child: const Text("41",
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ],
      ),
    );
  }

Widget tambahSepatu(BuildContext context){
  var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30, top: 50, left: 50, right: 50
      ),
      width: lebar,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: const Text("ADD TO CART ",
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: 5,
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget ukuran(){
    return Container(
      margin: const EdgeInsets.only(
        bottom: 50, top: 50,
      ),
      child: const Text("Ukuran",
        textAlign: TextAlign.left,
        style: TextStyle(
          letterSpacing: 5,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Posttest 2 Airlangga Rahimah Putra",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ), 
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // myContainer(),
              // sizeSepatu(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    myContainer(context),
                    myContainer2(context),
                  ],
                ),
              ),
              ukuran(),
              sizeSepatu(),
              tambahSepatu(context),
            ],
          )
        ],
      ),
    );
  }
}