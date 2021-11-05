import 'package:ai_medicare/views/dashboard/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppointments extends StatelessWidget {
  const MyAppointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    final List<String> data = [
      "Dr. Ismail Shareef",
      "Dr. Ahmed Shareef",
      "Dr. Emmanuel Shareef",
    ];

    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("My Appointment"),
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            'assets/images/doctor.png',
                            width: width,
                          )),
                      title: Text(
                        data[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("psychiatrist"),
                          Text("7th November 2021"),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                ),
              )
            ],
          )),
    );
  }
}
