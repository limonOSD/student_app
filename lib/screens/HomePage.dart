import 'package:flutter/material.dart';
import 'package:student_app/profile.dart';
import 'package:student_app/style.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  var MyItems = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/03/29/08/45/entrepreneur-696959_1280.jpg'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/03/29/08/45/entrepreneur-696959_1280.jpg'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/03/29/08/45/entrepreneur-696959_1280.jpg'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/03/29/08/45/entrepreneur-696959_1280.jpg'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/03/29/08/45/entrepreneur-696959_1280.jpg'
    }
  ];
  mysnackbar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limon Paul Argo', style: style()),
        backgroundColor: Colors.white,
        elevation: 5,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 241, 231, 187),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.black,
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Free Career',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.white)),
                          Text('Guideline',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: Colors.white)),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '---- Free video,Expert Guideline,Blog',
                            style: TextStyle(color: Colors.amber),
                          )
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 70,
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            'Live',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Courses',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text(
                      'SEE MORE',
                      style: TextStyle(color: Colors.red),
                    ),
                    const Icon(
                      Icons.arrow_right,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: MyItems.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        mysnackbar(context, 'Welcome to our course');
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.network(
                          MyItems[index]['img']!,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              icon: const Icon(
                Icons.home,
                color: Colors.orange,
              )),
          label: 'Home,',
        ),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profilePage()));
                },
                icon: Icon(
                  Icons.description,
                  color: Colors.orange,
                )),
            label: 'Dashboard'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.book,
                  color: Colors.orange,
                )),
            label: 'Free'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more,
                  color: Colors.orange,
                )),
            label: 'More')
      ]),
    );
  }
}
