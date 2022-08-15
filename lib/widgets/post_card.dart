import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:po2023/utilities/constants.dart';
import 'package:po2023/widgets/normal_text.dart';
import 'package:po2023/widgets/bold_text.dart';

class PostCard extends StatefulWidget {
  List<dynamic>? data;
  // List<SleepDiariesPODO>? data;
  int? cardIndex;
  bool? isCompleted = false;
  String? taskName = "Task Unavailable";
  Function() onTapCallBack;

  // PostCard({this.data, required this.cardIndex, required this.onTapCallBack});
  PostCard({required this.cardIndex, required this.onTapCallBack});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool? isChecked = false;
  String? cardTitle ;
  int? sleepID;
  String? bedTime;
  String? createdDate;
  String? dueDate;
  Color? stripColor;
  late ThemeData themeData;

  @override
  void initState() {
    // if(widget.data == null){
    //   setBasicCardDetails();
    // }else{
    //   setCardDetails(widget.data!, widget.cardIndex!);
    // }
    super.initState();
  }

  // setCardDetails(List<dynamic> data, int cardIndex){
  //   DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  //   // sleepID = data[cardIndex]['id'];
  //   // bedTime = data[cardIndex]['bedTime'];
  //   sleepID = data.elementAt(cardIndex).id;
  //   bedTime = data.elementAt(cardIndex).bedTime;
  //   stripColor = COLOR_PENDING;
  //   if(bedTime != null){
  //     stripColor = COLOR_DONE;
  //     isChecked = true;
  //   }
  //   String? theDate = data.elementAt(cardIndex).dateCreated;
  //   createdDate = theDate!.split('T').first;
  //   cardTitle = "Sleep Diary For: $createdDate";
  //   theDate = dateFormat.parse(createdDate!).add(Duration(days:1)).toString();
  //   dueDate = "Due on: ${theDate.split(' ').first}";
  //   print("This is the due date: $dueDate");
  // }

  // setBasicCardDetails(){
  //   stripColor = COLOR_PENDING;
  //   if(widget.isCompleted != null){
  //     if(widget.isCompleted == true){
  //       stripColor = COLOR_DONE;
  //       isChecked = true;
  //       dueDate = "Completed";
  //     }else{
  //       isChecked = false;
  //       dueDate = "In Progress";
  //     }
  //   }else{
  //     isChecked = false;
  //     dueDate = "In Progress";
  //   }
  //   if(widget.taskName != null){
  //     cardTitle = widget.taskName;
  //   }else{
  //     cardTitle = "Task Unavailable";
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    themeData = Theme.of(context);

    return Container(
      height: (widget.cardIndex!.floor().isEven ? 320 : 120),
      constraints: const BoxConstraints(minHeight: 120, maxHeight: 320),
      child: Card(
          surfaceTintColor: colorGrey,
          color: colorWhite,
          child: InkWell(
            onTap: widget.onTapCallBack,
            child: Padding(
              padding: Constants.sidePad,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Constants.basePadValue,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Constants.mediumTextLength,
                          child: BoldText(myText: 'Usman Amaka', themeData: themeData,),
                        ),

                        Image.asset(
                          Constants.assetsImagePath + 'circular-logo.png',
                          height: Constants.getScreenPercentSize(context, 2.0),
                        ),
                        SizedBox(width: Constants.leastPadValue,),
                        SizedBox(
                          width: Constants.smallTextLength,
                          child: NormalText(myText: '@usman_amaka', themeData: themeData),
                        ),
                        SizedBox(width: Constants.leastPadValue,),
                        BoldText(myText: '.', themeData: themeData,),
                        SizedBox(width: Constants.leastPadValue,),
                        SizedBox(
                          width: Constants.smallTextLength,
                          child: NormalText(myText: '08:00 am', themeData: themeData),
                        ),
                        SizedBox(width: Constants.leastPadValue,),
                        Icon(Icons.share, color: primaryColorGreen,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(myText: 'State: ', themeData: themeData),
                            NormalText(myText: 'Lagos', themeData: themeData),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NormalText(myText: 'Polling Unit: ', themeData: themeData),
                            NormalText(myText: 'Festac-Gate', themeData: themeData),
                          ],
                        ),
                        NormalText(myText: 'Polling Unit is getting filled', themeData: themeData),
                      ],
                    ),
                    ((){
                      if (widget.cardIndex!.floor().isEven) {
                        return Container(
                          height: 200,
                          color: colorGrey,
                          child: imgWidget(context),
                        );
                      }else{
                        return SizedBox(height: 0,);
                      }
                    }()),

                  ],
                ),

            ),
          ),
        ),
    );
  }

  final List<XFile?> images = List<XFile?>.filled(3, null);

  Future _getImage(int index) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      //_image = image;
      images[index] = image!;

      //print('first element: ${_imageList!.isEmpty}');
      //print('second element: ${_imageList!.}');
    });
  }

  Widget imgWidget(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        width: 5.0,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        XFile? file = images[index];
        return GestureDetector(
          onTap: (){},
          // onTap: file == null ? () => _getImage(index) : null,
          child: Container(
            height: 40.0,
            width: 180.0,
            decoration: BoxDecoration(
              border: Border.all(color: colorWhite),
            ),
            child: file == null
                ? Center(child: Text('Image ${index + 1}'))
                : Image.file(
              File(images[index]!.path),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

}
