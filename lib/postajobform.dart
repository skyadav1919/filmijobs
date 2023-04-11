import 'package:file_picker/file_picker.dart';
import 'package:filmijobs/color_constants.dart';
import 'package:filmijobs/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Post_a_JobForm extends StatefulWidget {
  const Post_a_JobForm({Key? key}) : super(key: key);

  @override
  State<Post_a_JobForm> createState() => _Post_a_JobFormState();
}

class _Post_a_JobFormState extends State<Post_a_JobForm> {

  List<String> gender = ["Male", "Female"];
  String? selectedGender;
  selectGender(String gender) {
    selectedGender = gender;
    // notifyListeners();
  }
  final formKey = GlobalKey<FormState>();
  int id=1;
  FilePickerResult? result;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Card(
            margin: const EdgeInsets.all(6.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: ColorConstants.primaryColorLight,
            child: GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )),
        title: Text('Post a Job',style: TextStyle(color: Color(0xff585858)),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.bell,color: Colors.black54,))
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
     key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(isRequired: true,title: 'Add Job Title  ',),
                Stack(
                  children: [
                    Text('Select Job Category  ',
                      style:
                      GoogleFonts.poppins(
                        color: ColorConstants.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 2,
                      child: Icon(
                        CupertinoIcons.staroflife_fill,
                        color: Colors.red,
                        size: 8,
                      ),
                    )
                  ],
                ),
                DropdownButton<String>(
                  value: selectedGender,
                  itemHeight: 80,
                  isExpanded: true,
                  hint: Text("Select Job Category"),
                  icon:
                  const Icon(CupertinoIcons.chevron_down),
                  iconSize: 20,
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black),
                  underline: Divider(
                    color: ColorConstants.pink2,
                    thickness: 1,
                  ),
                  onChanged: (newValue) {
                    selectGender(newValue!);
                  },
                  items: (gender)
                      .map<DropdownMenuItem<String>>(
                          (value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: SizedBox(
                            height: 30,
                            child: Text(
                              value,
                              // style: StyleConstants
                              //     .dropdownStyle,
                            ),
                          ),
                        );
                      }).toList(),
                ),
                Stack(
                  children: [
                    Text('Select Job Sub Category  ',
                      style:
                      GoogleFonts.poppins(
                        color: ColorConstants.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 2,
                      child: Icon(
                        CupertinoIcons.staroflife_fill,
                        color: Colors.red,
                        size: 8,
                      ),
                    )
                  ],
                ),
                DropdownButton<String>(
                  value: selectedGender,
                  itemHeight: 80,
                  isExpanded: true,
                  hint: Text("Select Job Sub Category"),
                  icon:
                  const Icon(CupertinoIcons.chevron_down),
                  iconSize: 20,
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black),
                  underline: Divider(
                    color: ColorConstants.pink2,
                    thickness: 1,
                  ),
                  onChanged: (newValue) {
                    selectGender(newValue!);
                  },
                  items: (gender)
                      .map<DropdownMenuItem<String>>(
                          (value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: SizedBox(
                            height: 30,
                            child: Text(
                              value,
                              // style: StyleConstants
                              //     .dropdownStyle,
                            ),
                          ),
                        );
                      }).toList(),
                ),
                CustomTextField(isRequired: true,title: 'Expired Date  ',),
                CustomTextField(isRequired: true,title: 'Job Description  ',),
                CustomTextField(isRequired: true,title: 'Height  ',keyboardType: TextInputType.number,),
                CustomTextField(isRequired: true,title: 'Hiring Candidates  ',keyboardType: TextInputType.number,),

                Stack(
                  children: [
                    Text('Gender  ',
                      style:
                      GoogleFonts.poppins(
                        color: ColorConstants.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 2,
                      child: Icon(
                        CupertinoIcons.staroflife_fill,
                        color: Colors.red,
                        size: 8,
                      ),
                    )
                  ],
                ),
                DropdownButton<String>(
                  value: selectedGender,
                  itemHeight: 80,
                  isExpanded: true,
                  hint: Text("Select Gender"),
                  icon:
                  const Icon(CupertinoIcons.chevron_down),
                  iconSize: 20,
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black),
                  underline: Divider(
                    color: ColorConstants.pink2,
                    thickness: 1,
                  ),
                  onChanged: (newValue) {
                    selectGender(newValue!);
                  },
                  items: (gender)
                      .map<DropdownMenuItem<String>>(
                          (value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: SizedBox(
                            height: 30,
                            child: Text(
                              value,
                              // style: StyleConstants
                              //     .dropdownStyle,
                            ),
                          ),
                        );
                      }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: size.height*0.15,
                        width: size.width*0.4,
                    child: CustomTextField(title: 'Select Age  ',isRequired: true,)),
                    Container(
                        height: size.height*0.1,
                        width: size.width*0.4,
                        child: CustomTextField()),
                  ],
                ),
                CustomTextField(isRequired: true,title: 'Meeting Date  ',suffix: Icon(Icons.calendar_month_outlined),),

                CustomTextField(isRequired: true,title: 'Location  '),
                CustomTextField(isRequired: true,title: 'Meeting Details  '),

                Stack(
                  children: [
                    Text('Types of audition  ',
                      style:
                          GoogleFonts.poppins(
                            color: ColorConstants.textColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                      Positioned(
                        right: 0,
                        top: 2,
                        child: Icon(
                          CupertinoIcons.staroflife_fill,
                          color: Colors.red,
                          size: 8,
                        ),
                      )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(value: 1,
                            groupValue: id,
                            activeColor: Colors.green,
                            onChanged: (val) {
                          setState(() {
                          });
                            }),
                        Text('Face to Face')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                        Text('In App')
                      ],
                    ),
                  ],
                ),

                Divider(thickness: 1,color: Colors.black,),
                Stack(
                  children: [
                    Text('Audition Script  ',
                      style:
                      GoogleFonts.poppins(
                        color: ColorConstants.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 2,
                      child: Icon(
                        CupertinoIcons.staroflife_fill,
                        color: Colors.red,
                        size: 8,
                      ),
                    )
                  ],
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(result?.files[0].name ?? '', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                      IconButton(
                        onPressed: () async{
                          result = await FilePicker.platform.pickFiles(type: FileType.any);
                          if (result == null) {
                            print("No file selected");
                          } else {
                            setState(() {
                            });
                            result?.files.forEach((element) {
                              print(element.name);
                            });
                          }
                        },
                        icon: Icon(Icons.upload_file,color: Colors.red,),
                      ),
                    ],
                  ),


                Divider(thickness: 1,color: Colors.black,),
                CustomTextField(isRequired: true,title: 'Contact Number  ',keyboardType: TextInputType.number,),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 20),
                  child: InkWell(
                    onTap: (){
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
