import 'package:flutter/material.dart';
import 'package:student_app/style.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pupil',
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ))
        ],
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey.shade300,
                child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          maxRadius: 40,
                          backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2023/09/16/23/53/loon-8257638_1280.jpg',
                          ),
                        ),
                        const Text(
                          'Hi,Limon',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              size: 40,
                            ))
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Color.fromARGB(66, 109, 96, 96),
                        )),
                    labelText: 'Search'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2018/04/18/09/57/icon-3329995_1280.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                  child: Text(
                    'Quick Tracking',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: CircleAvatar(
                                maxRadius: 50,
                                backgroundColor: Colors.amber.shade300,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2017/09/01/08/41/book-cover-2703449_1280.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Academics',
                            style: style(),
                          ),
                        ],
                      ),
                      color: Colors.grey.shade400,
                      height: 200,
                      width: double.infinity,
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: CircleAvatar(
                                      maxRadius: 50,
                                      backgroundColor: Colors.amber.shade300,
                                      backgroundImage: NetworkImage(
                                        'https://cdn.pixabay.com/photo/2013/10/02/22/57/book-190034_1280.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Schedules',
                                  style: style(),
                                ),
                              ],
                            ),
                            color: Colors.grey.shade400,
                            height: 200,
                            width: double.infinity))
                  ],
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: CircleAvatar(
                                maxRadius: 50,
                                backgroundColor: Colors.amber.shade300,
                                backgroundImage: const NetworkImage(
                                    'https://cdn.pixabay.com/photo/2017/08/16/08/19/blogs-marketing-2646804_1280.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Apply Leave',
                            style: style(),
                          ),
                        ],
                      ),
                      color: Colors.grey.shade400,
                      height: 200,
                      width: double.infinity,
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: CircleAvatar(
                                maxRadius: 50,
                                backgroundColor: Colors.amber.shade300,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2017/06/10/07/25/book-2389229_1280.png'),
                              ),
                            ),
                          ),
                          Text('Fees', style: style()),
                        ],
                      ),
                      color: Colors.grey.shade400,
                      height: 200,
                      width: double.infinity,
                    ))
                  ],
                ))
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
