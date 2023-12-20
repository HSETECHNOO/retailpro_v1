import 'package:flutter/material.dart';
import 'package:retailpro_v1/constants/colorsconstants.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage(
      {super.key, required this.function, required this.rowsqunatity});
  final Function function;
  final int rowsqunatity;

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<bool> selectedlist = List.generate(12, (index) => false).toList();

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
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              widget.rowsqunatity == 1
                  ? ListView.builder(
                      itemCount: selectedlist.length + 1,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index == selectedlist.length) {
                          return Padding(
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
                          );
                        }

                        return Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: GestureDetector(
                            onTap: () {
                              widget.function();
                              setState(() {
                                selectedlist =
                                    List.filled(selectedlist.length, false);
                                selectedlist[index] = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
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
                            ),
                          ),
                        );
                      })
                  : GridView.builder(
                      shrinkWrap: true,
                      itemCount: selectedlist.length + 1,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: widget.rowsqunatity),
                      itemBuilder: (context, index) {
                        if (index == selectedlist.length) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      Mycolors.primarycolor.withOpacity(0.90),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Center(
                                child: Text(
                                  'Add Category',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        }

                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              widget.function();
                              setState(() {
                                selectedlist =
                                    List.filled(selectedlist.length, false);
                                selectedlist[index] = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: selectedlist[index] == true
                                      ? Mycolors.primarycolor.withOpacity(0.50)
                                      : null,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text(
                                  'Sea Food Category',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: selectedlist[index] == true
                                          ? Colors.white
                                          : Colors.grey),
                                ),
                              ),
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
