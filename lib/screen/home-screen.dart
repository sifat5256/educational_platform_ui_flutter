import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List videoNumber=[
    "100",
    "69",
    "75",
    "63",
    "88"


  ];

  List imageList=[
    "Flutter",
    "C",
    "Java",
    "Python",
    "React Native"
  ];

  List catNames = [
    "Category",
    "Classes",
    "Free Courses",
    "Book Store",
    "Live Course",
    "Leader Board"
  ];
  List<Color> catColors = [
    const Color(0xFFFFCF2F),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFFC7C7F),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667)
  ];

  List<Icon> catIcons = [
    const Icon(
      Icons.category,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.video_library,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.assignment,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.store,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.play_circle_fill,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.emoji_events,
      size: 30,
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label: "Assignment"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Wish List"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding:
            const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 10),
            decoration: const BoxDecoration(
                color: Color(0xFF674AEF),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 10),
                  child: Text(
                    "Hello Programmers!!",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.search_rounded),
                          border: InputBorder.none,
                          hintText: "Search here..",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 1.1),
                    shrinkWrap: true,
                    itemCount: catNames.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: catColors[index],
                            ),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            catNames[index],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          )
                        ],
                      );
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(fontSize: 20,),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:imageList.length ,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240)

                    ),


                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){

                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFFF5F3FF)
                          ),
                          child: Column(
                            children: [
                              Padding(

                                padding: EdgeInsets.all(10),
                                child: Image.asset("assets/${imageList[index]}.png",height: 100,width: 100,),

                              ),

                              Text(imageList[index],style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 3,),
                              Text("Videos ${videoNumber[index]}",style: TextStyle(
                                  fontSize: 20,

                              ),)
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),

        ],
      ),
    );
  }
}
