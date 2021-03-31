import 'package:emergency_app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:emergency_app/data/data.dart';

class ContactsCard extends StatelessWidget {
  const ContactsCard({
   this.list,
    this.index,
    this.update
  });
  final List<ContactsData> list;
  final int index;
  final Function update;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: height*0.0947,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),

        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(list[index].name,
                  style: TextStyle(
                    fontSize: height*0.0213,
                    fontWeight: FontWeight.w600
                  ),),
                  Text(list[index].number,
                    style: TextStyle(
                        fontSize: height*0.0189,
                        fontWeight: FontWeight.w400
                    ),)
                ],
              ),
              IconButton(icon: Icon(Icons.delete, color: Colors.red,),
                  onPressed: (){
                  update(index);
              }),
            ]
        ),
      ),
    );
  }
}