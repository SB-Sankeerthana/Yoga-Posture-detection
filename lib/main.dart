import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Yoga Fitness App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Yoga Login Page',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Screen2()));
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'FIFO : Fit In Flex Out',
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xff764abc),
              ),
              child: Text('Option Menu'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen2()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Exercises'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen3()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen4()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/y2.jpg'),
            Text(
              'Yoga is an ancient and complex practice, rooted in Indian philosophy.There are many different yoga styles, ranging from gentle practices to physically demanding ones. Differences in the types of yoga used in research studies may affect study results. It began as a spiritual practice but has become popular as a way of promoting physical and mental well-being',
              style: TextStyle(fontSize: 20.0),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen3()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              child: Text('TRY YOGA POSES'),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
/*  List a = [
    //"https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia.self.com%2Fphotos%2F5b7c4e71ecbb7f4c41c77335%2F16%3A9%2Fw_6000%2Ch_3375%2Cc_limit%2Ftriangle-pose-beginner-yoga.jpg&imgrefurl=https%3A%2F%2Fwww.self.com%2Fgallery%2Fmust-know-yoga-poses-for-beginners&tbnid=m7jj3kLtSjdxvM&vet=12ahUKEwjw69mY5sj7AhXUzqACHQ2pBpAQMygBegUIARDAAQ..i&docid=nJozI9BSTwYx7M&w=6000&h=3375&q=https%3A%2F%2Fyoga%20images&ved=2ahUKEwjw69mY5sj7AhXUzqACHQ2pBpAQMygBegUIARDAAQ",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Displaying Images"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          return Image.network(a[index]);
        },
        itemCount: a.length,
      ),
    );
  }
}*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('CONTACT US'),
          backgroundColor: const Color(0xff764abc)),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyApp()));
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey,
          ),
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('EXERCISES'),
          backgroundColor: const Color(0xff764abc)),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Vrikshasana:Tree Pose',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Image.asset('assets/images/pose1.jpg'),
            Text(
                'Gently fold your left leg. The sole of the foot should be placed flat and firmly near the root of the thigh.Once you are well balanced, take a deep breath in, gracefully raise your arms over your head from the side, and bring your palms together in ‘Namaste’ mudra (hands-folded position).',
                style: TextStyle(fontSize: 20)),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              child: Text('TRY NOW'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen5()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              child: Text('NEXT POSE'),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen5 extends StatefulWidget {
  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('EXERCISES'),
          backgroundColor: const Color(0xff764abc)),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Trikonasana : Triangle Pose',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Image.asset('assets/images/pose2.jpg'),
            Text(
                'Stand tall and straight with arms by the side of your body.Bend your right knee and place the right foot high up on your left thigh. The sole of the foot should be placed flat and firmly near the root of the thigh.Once you are well balanced, take a deep breath in, gracefully raise your arms over your head from the side, and bring your palms together in ‘Namaste’ mudra (hands-folded position).',
                style: TextStyle(fontSize: 20)),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              child: Text('TRY NOW'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyApp()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              child: Text('NEXT POSE'),
            ),
          ],
        ),
      ),
    );
  }
}
