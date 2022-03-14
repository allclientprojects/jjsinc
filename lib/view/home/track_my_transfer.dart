import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jjsinc/model/dummy_list.dart';
import 'package:jjsinc/utils/colors.dart';
import 'package:jjsinc/widgets/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart' as http;

class TrackMyTransfer extends StatefulWidget {
  static final String routerName = "track-my-transfer";

  const TrackMyTransfer({Key? key}) : super(key: key);

  @override
  _TrackMyTransferState createState() => _TrackMyTransferState();
}

class _TrackMyTransferState extends State<TrackMyTransfer> {
  bool inAsyncCall = false;

  var url = "https://jsonplaceholder.typicode.com/todos/";

  List<DummyList>? dummyList;
  List<TableRow> dummyListTableRow = [];

  Future<List<DummyList>?> fetchAlbum() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final String responseString = response.body;
      print(responseString);
      List _dummyList = jsonDecode(responseString);

      dummyList = _dummyList.map((f) => DummyList.fromJson(f)).toList();

      print(dummyList);
      return dummyList;
    } else {
      return null;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAlbum();
    // for (DummyList newDummyList in dummyList!) {
    //   dummyListTableRow.add(
    //     TableRow(children: [
    //       Table(
    //           border: TableBorder.all(width: 1.0, color: Colors.black87),
    //           children: [
    //             TableRow(children: [
    //               TableCell(
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(6.0),
    //                   child: Text(
    //                     'Order No:',
    //                     style: TextStyle(
    //                         color: Colors.black87,
    //                         fontSize: 17.0,
    //                         fontWeight: FontWeight.bold),
    //                   ),
    //                 ),
    //               ),
    //               TableCell(
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(6.0),
    //                   child: Text(
    //                     newDummyList.id.toString(),
    //                     style:
    //                     TextStyle(color: Colors.black87, fontSize: 17.0),
    //                   ),
    //                 ),
    //               ),
    //             ]),
    //             TableRow(children: [
    //               TableCell(
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(6.0),
    //                   child: Text(
    //                     'Vehicle:',
    //                     style: TextStyle(
    //                         color: Colors.black87,
    //                         fontSize: 17.0,
    //                         fontWeight: FontWeight.bold),
    //                   ),
    //                 ),
    //               ),
    //               TableCell(
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(6.0),
    //                   child: Text(
    //                     newDummyList.userId.toString(),
    //                     style:
    //                     TextStyle(color: Colors.black87, fontSize: 17.0),
    //                   ),
    //                 ),
    //               ),
    //             ]),
    //
    //           ])
    //     ]),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: inAsyncCall,
      child: Scaffold(
        body: SafeArea(
          child: Scaffold(
              body: Stack(
            children: [
              Image.asset(
                "assets/images/bg-image2.jpg",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 10,
                right: 10,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.menu,
                        size: 50,
                      ),
                    ),
                    Image.asset(
                      "assets/icons/logo1.png",
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                right: 0,
                left: 0,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.yellow,
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 0.5),
                      bottom: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Track My Transfer",
                      style: GoogleFonts.publicSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Current File: ABC12345",
                      style: GoogleFonts.publicSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 250,
                      width: 350,
                      child: ListView.builder(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: dummyList?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Table(
                                border: TableBorder.all(
                                    width: 1.0, color: Colors.black87),
                                children: [
                                  TableRow(children: [
                                    TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(
                                          'Item:',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(
                                          dummyList![index].id.toString(),
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 17.0),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(
                                          'Item:',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(
                                          dummyList![index].userId.toString(),
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 17.0),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ]);
                          }),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Widgets.callNow(),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
