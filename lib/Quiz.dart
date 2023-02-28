import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List qaList = [
    "Science is Easy ?",
    "Pakistan is delvop country?",
    "USA is truthfulle Country?",
  ];
  List ansList=[true,false,false];
  List userList=[];
  int i=0;
  int j=0;
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("${qaList[i]}"),
          Row(
            children: [
              TextButton(onPressed: () {
                setState(() {
                  if (i<qaList.length-1)
                    {
                      i++;
                    }
                  if (i<qaList.length)
                    {
                      userList.add(true);
                          j=i+1;
                    }

                });
              }, child: Text("True")),
              TextButton(onPressed: () {
                setState(() {
                  if (i<qaList.length-1)
                  {
                    i++;
                  }
                  if (i<qaList.length)
                  {
                    userList.add(false);
                    // j=i+1;
                  }
                });
              }, child: Text("False")),
              Visibility(
                visible: i>=2?true:false,
                  child: IconButton(onPressed: () {
                    setState(() {

                      for(i=0;i<qaList.length-1;i++)
                        {
                          if(ansList[i]==userList[i])
                            {
                              count=count+1;
                              print("$userList");
                            }
                        }
                    });
                  },icon: Icon(Icons.exit_to_app),

              ))
            ],
          ),
          Text("$count"),
        ],
      ),
    );
  }
}
