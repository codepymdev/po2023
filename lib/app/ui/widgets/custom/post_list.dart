import 'package:flutter/material.dart';
import 'package:po2023/app/ui/widgets/custom/post_card.dart';

class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => PostCard(
        cardIndex: index,
        onTapCallBack: () {
          // Navigator.push(context, new MaterialPageRoute(builder: (context) =>
          //     SleepDiary(sleepDiariesPODO:sleepdiaries.elementAt(index))));
        },
      ),
    );
  }
}



// List<dynamic> sleepDiaries = [
//   {
//     "date_Created": "2022-04-25T17:43:23",
//     "id": 143,
//     "bedTime": "17:05"
//   },
//   {
//     "date_Created": "2022-04-24T17:43:23",
//     "id": 145,
//     "bedTime": null
//   },
// ];




// @override
  // Widget build(BuildContext context) {
  //   final sidePad = EdgeInsets.symmetric(horizontal: 10);
  //   themeData = Theme.of(context);
  //
  //   return SizedBox(
  //     height: 120,
  //     child: Card(
  //       clipBehavior: Clip.antiAlias,
  //       // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
  //       elevation: 0,
  //       color: appItemColorLightGrey,
  //       child: InkWell(
  //         onTap: widget.onTapCallBack,
  //         child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: <Widget>[
  //             Flexible(
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Row(
  //                     children: [
  //                       Checkbox(
  //                         checkColor: Colors.white,
  //                         fillColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
  //                         shape: RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(4.0),
  //                         ),
  //                         value: isChecked,
  //                         onChanged: null,
  //                         // onChanged: (val) async {
  //                         //   bool originalState = isChecked;
  //                         //   setState(() {
  //                         //     isChecked = val!;
  //                         //   });
  //                         // await widget.onCheckedCallback(val!).then((response) {
  //                         //   if (!response) {
  //                         //     setState(() {
  //                         //       isChecked = originalState;
  //                         //     });
  //                         //   }
  //                         // });
  //                         // },
  //                       ),
  //                       Flexible(
  //                         child: Padding(
  //                           padding: sidePad,
  //                           child: Text(
  //                             cardTitle!,
  //                             // widget.todoModel.todo,
  //                             overflow: TextOverflow.ellipsis,
  //                             style: themeData.textTheme.headline4,
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
  //                     child: Container(
  //                       decoration: BoxDecoration(
  //                         borderRadius: const BorderRadius.all(Radius.circular(12.0)),
  //                         color: Theme.of(context).colorScheme.primary.withOpacity(0.15),
  //                       ),
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(6),
  //                         child: Text(
  //                           dueDate!,
  //                           style: themeData.textTheme.headline5,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Container(
  //               color: stripColor,
  //               width: 15,
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

