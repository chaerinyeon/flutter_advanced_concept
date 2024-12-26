import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> items = List.generate(20, (index) => index).toList();

  // 데이터 불러오는 도중 사용자가 스크롤 이동해서 중복 요청될 경우 방지용
  bool isFetching = false;
  void fetchMore() async {
    if (isFetching) {
      return;
    }
    print("fetchMore");
    isFetching = true;
    await Future.delayed(Duration(seconds: 3));
    final newList =
        List.generate(20, (index) => index + items.last + 1).toList();
    items.addAll(newList);
    setState(() {});
    isFetching = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            if (notification.metrics.pixels >=
                notification.metrics.maxScrollExtent) {
              fetchMore();
            }
          }
          return true;
        },
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.amber,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              child: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
