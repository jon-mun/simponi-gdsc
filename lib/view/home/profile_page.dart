import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Column(children: <Widget>[
            Expanded(
              flex: 5,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/header.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.light_mode,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.logout,
                          color: Theme.of(context).backgroundColor,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: -36,
                    child: CircleAvatar(
                      radius: 36,
                      backgroundImage: AssetImage('assets/gdsc.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
                flex: 4,
                child: Column(children: <Widget>[
                  Text(
                    'Andreas Notokusumo',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Ilmu Komputer \'22',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Text(
                    'Fakultas MIPA',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ])),
          ]),
        ),
        const Expanded(
          flex: 6,
          child: Posts(),
        ),
      ],
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      Post(),
      Post(),
    ]);
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.onPrimary)),
      child: Row(children: <Widget>[
        const Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(12.5),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/gdsc.jpg'),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.5).copyWith(bottom: 4, left: 0),
              child: SizedBox(
                height: 20,
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Andreas Notokusumo',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(fontSize: 16)),
                      Row(
                        children: const <Widget>[
                          Text('4j'),
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ]),
              ),
            ),
            Expanded(
                child: Container(
                    constraints: const BoxConstraints.expand(),
                    child: const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id libero vel felis eleifend ornare vitae et neque. Sed ultrices, metus in pretium fermentum, nunc mauris volutpat orci, eu tristique massa neque quis metus. Integer elit dolor, porttitor sed orci sed, tempor vehicula nunc.'))),
          ]),
        ),
      ]),
    );
  }
}
