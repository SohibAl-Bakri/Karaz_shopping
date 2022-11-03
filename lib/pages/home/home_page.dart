import 'package:flutter/material.dart';
import 'package:karaz/Themes/app_colors.dart';
import 'package:karaz/pages/home/components/Drawer/custom_drawer.dart';
import 'package:karaz/pages/home/components/appBar/custom_app_bar.dart';
import 'package:karaz/pages/home/components/home_page/custom_circle_avatar.dart';
import 'package:karaz/pages/home/components/home_page/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: AppColors.mixList,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 46,
                child: const TextField(
                  decoration: InputDecoration(
                    label: Text('Search'),
                    icon: Icon(
                      Icons.search_rounded,
                    ),
        
                    // suffixIcon: Visibility(
                    //   visible: change,
                    //   child: IconButton(
                    //     icon: Icon(Icons.highlight_off_rounded),
                    //     onPressed: () {
                    //       setState(() {
                    //         searchController.clear();
                    //         change = false;
                    //       });
                    //     },
                    //   ),
                    // ),
                  ),
                  // controller: searchController,
                  // onChanged: (value) {
                  //   setState(() {
                  //     if (value == '') {
                  //       change = false;
                  //     } else {
                  //       change = true;
                  //     }
                  //     search = value;
                  //   });
                  // },
                ),
              ),
              const CustomCircleAvatar(),
              const CustomSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
