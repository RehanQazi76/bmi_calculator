// import 'package:bmi_calculator/Screens/InputPage.dart';
import 'package:bmi_calculator/Screens/Result_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Widgets/Reusable_Card.dart';
enum Gender{
  male,
  female
}


  final Color inactive=Colors.deepPurple;
  final Color active=Color.fromRGBO(37, 36, 36, 1);
  int hieght=180;
  int weight=20;
  int age=5;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI calci',
      theme: ThemeData(
        // primaryColor: Colors.black,
        primarySwatch:Colors.deepPurple,
        
        scaffoldBackgroundColor: Colors.black,
        

        
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   Gender? selectGender;

  Color malecolor=inactive;
  Color Female=inactive;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Center(
         child: Text("BMI calculator",
         style: GoogleFonts.roboto(
                fontSize: 30.0,
                color: Colors.white, 
              ),),
       ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(keepScrollOffset: true),
        child: SizedBox(
          height: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 ReusableCards(
                  widths: 170, 
                  colour: (selectGender==null)?inactive:((selectGender==Gender.male)?active:inactive),
                  cardChild: GenderSet(FontAwesomeIcons.mars,"Male"),
                  onpress:  (){
                 setState(() {
                   selectGender=Gender.male;
                 });
                },
                ),

                SizedBox(width: 20),
              ReusableCards(  widths: 170,
              colour: (selectGender==null)?inactive:((selectGender==Gender.female)?active:inactive),
              cardChild: GenderSet(FontAwesomeIcons.venus,"Female"),
              onpress:  (){
                  setState(() {
                    selectGender=Gender.female;
                  });
                },
              ),
              
                ],
              ),
              ),
              Expanded(
                flex: 1,
                child: ReusableCards(widths: double.infinity,
               colour:inactive,
               cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Hieght",
                   style:GoogleFonts.pacifico(
                  fontSize: 30.0,
                  color: Colors.white, 
                ),
                  ),
                  // SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                  Text(hieght.toString(),
                   style:GoogleFonts.roboto
                   (
                  fontSize: 50.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.white, 
                ),
                  ),
                  Text("cm",
                   style:GoogleFonts.roboto(
                  fontSize: 30.0,
                  color: Colors.white, 
                  fontWeight: FontWeight.w600
                ),
                  )
              
                ],),
              
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
              
                    activeTickMarkColor: Colors.white,
                    
                    overlayColor: Colors.deepPurpleAccent,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
              
                  ),
                  child: Slider(value: hieght.toDouble(),
                  min: 120.0,
                  thumbColor: Color.fromARGB(255, 92, 33, 195),
                  max: 220.0,
                  activeColor: active,
                  inactiveColor: Colors.white,
                   onChanged: (double newhiegth){
                    setState(() {
                      hieght=newhiegth.round();
                    });
                   }
                   
                   ),
                )
               ]
               ),
               onpress: (){}, ),
               ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                ReusableCards(
                widths: 170, 
                colour: inactive,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Weight",
                   style:GoogleFonts.pacifico(
                  fontSize: 30.0,
                  color: Colors.white, 
                   ),
                  ),
                  SizedBox(height: 10,),
                  Text(weight.toString(),
                        style:GoogleFonts.roboto
                              (
                             fontSize: 40.0,
                             fontWeight: FontWeight.w800,
                             color: Colors.white, 
                           ), 
                        ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            weight--;
                          });
                        },
                        backgroundColor: Colors.black38,
                        child: Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                        ),
                        ),
                        
                        SizedBox(width: 10,),
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            weight++;
                          });
                        },
                        backgroundColor: Colors.black38,
                        child: Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                        ),
                        ),
                    ],
                  )
                
                ]
                ),
                onpress: (){},),

                SizedBox(width: 20),
              ReusableCards( 
                 widths: 170,
                 colour: inactive,
                 cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Age",
                   style:GoogleFonts.pacifico(
                  fontSize: 30.0,
                  color: Colors.white, 
                   ),
                  ),
                  SizedBox(height: 10,),
                  Text(age.toString(),
                        style:GoogleFonts.roboto
                              (
                             fontSize: 50.0,
                             fontWeight: FontWeight.w800,
                             color: Colors.white, 
                           ), 
                        ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            age--;
                          });
                        },
                        backgroundColor: Colors.black38,
                        child: Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                        ),
                        ),
                        
                        SizedBox(width: 20,),
                      FloatingActionButton(
                        onPressed: (){
                          setState(() {
                            age++;
                          });
                        },
                        backgroundColor: Colors.black38,
                        child: Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                        ),
                        ),
                    ],
                  )
                
                ]
                ),
                 onpress: (){},),
                ],
              ),
              ),
              
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Result_page()));
                },
                child: Container(
                  
                  color: active,
                  width: double.infinity,
                  
                 margin: EdgeInsets.only(bottom: 20,top: 10),
                  
                  height: 50,
                  child: Text("Calulate",
                  textAlign: TextAlign.center ,
                  style: GoogleFonts.pacifico(
                  fontSize: 30.0,
                  color: Colors.white, 
                   ),
                  ),
                  
                ),
              ),
              
            ]
          ),
        ),
      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class GenderSet extends StatelessWidget {
  const GenderSet(this.icon,this.label);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            
            Icon(
              icon,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(height:10,),
            Text(label,
            style: GoogleFonts.pacifico(
              fontSize: 30.0,
              color: Colors.white, 
            ),
            )
          
          ],
        );
  }
}

