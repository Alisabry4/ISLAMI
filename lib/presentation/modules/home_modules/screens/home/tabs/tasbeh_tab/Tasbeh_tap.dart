import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TasehTap extends StatefulWidget {
   TasehTap({super.key});

  @override
  State<TasehTap> createState() => _TasehTapState();
}

class _TasehTapState extends State<TasehTap> {
  int counter =0;
  List<String>text=[
    'سبحان الله',
    'الحمد لله',
    'الله اكبر'

  ];
  int curIndex=0;

  double angle =0;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 90),
          Stack(
            alignment: Alignment.topCenter,
            
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height*0.06),
                child: Transform.rotate(
                  angle: angle,
                  child: Theme(data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,


                  ),
                    child: InkWell(
                      onTap: (){clickOnImage();
                      },
                      child: Image.asset('assets/images/body of seb7a.png',height: size.height*0.20)),
                  ))),
              Container(
                              margin: EdgeInsets.only(left: size.width*0.03),
                child: Image.asset('assets/images/head of seb7a.png',height: size.height*0.10,))],
            
          ),
          const SizedBox(height: 10,),
          Text("عدد التسبيحات",textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:const Color(0xffB7935F),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Text("$counter",textAlign: TextAlign.center,
            style:const TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
       
            
          ),
                    const SizedBox(height: 20,),
                    Container(
            //width: 100,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 100),
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:const Color(0xffB7935F),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Text(text[curIndex],textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
       
            
          ),

        ],
      ),
    );
    
    
  }
  void clickOnImage(){
    angle+=3;
    if(counter==30){
      counter=0;
      curIndex++;
      curIndex=curIndex%3;
    }
    counter++;
    
    setState(() {
      
    });
  }
}