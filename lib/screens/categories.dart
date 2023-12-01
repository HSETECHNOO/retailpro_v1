import 'package:flutter/material.dart';
import 'package:retailpro_v1/constants/colorsconstants.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List selectedlist = List.generate(12, (index) => false).toList();

  @override
  void initState() {
    selectedlist[0] = true;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Mycolors.backgroundcolor,
            border: Border.all(color: Colors.black12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w500,
                  color: Mycolors.primarycolor,
                  fontFamily: 'Aeric',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return index == 11
                        ? Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      Mycolors.primarycolor.withOpacity(0.90),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const ListTile(
                                leading: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Add Category',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                color: selectedlist[index] == true
                                    ? Mycolors.primarycolor.withOpacity(0.50)
                                    : null,
                                borderRadius: BorderRadius.circular(12)),
                            child: ListTile(
                              leading: Icon(Icons.dinner_dining,
                                  color: selectedlist[index] == true
                                      ? Colors.white
                                      : Colors.grey),
                              title: Text(
                                'Sea Food Category',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: selectedlist[index] == true
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                            ),
                          );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
