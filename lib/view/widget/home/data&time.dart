



// DateTime _selectedDate = DateTime.now();
// TimeOfDay _selectedTime = TimeOfDay.now();





// Future<void> _selectTime(BuildContext context) async {
 // final TimeOfDay? pickedTime = await showTimePicker(
  //  context: context,
  //  initialTime: _selectedTime,
 // );
 // if (pickedTime != null && pickedTime != _selectedTime) {
  //  setState(() {
   //   _selectedTime = pickedTime;
   // });
 // }
//}
 
 

 // ignore_for_file: file_names
 
 //Row(
   //               children: [
     //               const Text(
       //               "Date",
         //             style: TextStyle(color: AppColor.green),
           //         ),
             //       const SizedBox(
               //       width: 10,
                 //   ),
                   // Expanded(
//                      child: DateTimePicker(
  //                      initialValue: _selectedDate.toString(),
    //                    firstDate: DateTime(2000),
      //                  lastDate: DateTime(2100),
         //               dateLabelText: 'Date',
           //             onChanged: (value) {
             //             setState(() {
               //             _selectedDate = DateTime.parse(value);
                 //         });
                   //     },
//                     // ),
  //                  ),
    //                const SizedBox(width: 10.0),
      //            const Text(
       //               "Time",
           //           style: TextStyle(color: AppColor.green),
             //       ),
               //     const SizedBox(
                 //     width: 10,
                   // ),
  //                  Expanded(
    //                  child: GestureDetector(
      //                  onTap: () {
        //                  _selectTime(context);
          //              },
             //           child: AbsorbPointer(
               //           child: TextField(
                 //           controller: TextEditingController(
                   //             text: _selectedTime.format(context)),
                     //       decoration: const InputDecoration(
                       //       hintText: 'Time',
//                         //    border: OutlineInputBorder(),
  //                          ),
    //                      ),
      //                  ),
        //              ),
          //          ),
            //      ],
              //  ),
               // const SizedBox(height: 20.0),