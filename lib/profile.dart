import 'package:flutter/material.dart';
import 'package:resturant/home_location.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 201, 153),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 134, 123, 25),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeLocation()));
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              ' My Profile ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 0),
              child: Text('First Name ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10,left:5),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 270,
                      height: 50,
                      child:
                          const Center(child: Text('Akshay Ashokan Pothan'))),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 0),
                    child: Text('Last Name ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0,left: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: 270,
                          height: 50,
                          child: const Center(
                            child: Text('Manuel Jacob'),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 0),
                          child: Text('Address',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                        ),
                        //  const SizedBox(height: 30),
                       const Padding(padding: 
                         EdgeInsets.only(left: 5),
                        child:  Text('Work',textAlign:TextAlign.right),
                        ),
                         const SizedBox(height: 10,width: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: 270,
                          height: 80,
                          child: const Center(
                            child: Text('Imiot Technolabs\nTechnology Business Incubator\nCollege Of Engineering Thalassery\nEranjoli PO-670007',textAlign: TextAlign.justify,),
                          ),
                        ),
                        const SizedBox(height: 10),
                       const Padding(padding: 
                         EdgeInsets.only(left: 5),
                        child:  Text(
                          'change',textAlign:TextAlign.left,
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                   const Padding(padding: 
                         EdgeInsets.only(left: 5),
                        child:  Text('Home',textAlign:TextAlign.right),
                        ),
                         Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,                   
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          width: 270,
                          height: 80,
                          child: const Center(
                            child: Text('Pothans\n"Gananayakam"\nopp.pazhayatheru sree mahaganapathi\nkshethram\npazhayatheru muzhapilanagd\n670662',textAlign: TextAlign.justify,),
                          ),
                        ),
                        const SizedBox(height: 10),
                       const Padding(padding: 
                         EdgeInsets.only(left: 5),
                        child:  Text(
                          'change',textAlign:TextAlign.left,
                          style:TextStyle(
                            decoration: TextDecoration.underline,
                          )
                        ),
                        ),
                          Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,                      
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 18, 96, 21),
                          ),
                          width: 270,
                          height: 60,
                          child: InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLocation()));
                          },
                          child: const Center(
                            child:  Text(
                              'Continue to Home',textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          )
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
          ],
        ),
      ),
          ],
        ),
      ),
    );
  }
}
