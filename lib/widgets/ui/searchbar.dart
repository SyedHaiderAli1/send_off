import 'package:flutter/material.dart';

class buildSearchBar extends StatefulWidget {
  @override
  buildSearchBarState createState() => buildSearchBarState();
}

class buildSearchBarState extends State<buildSearchBar> {
  TextEditingController _searchController = TextEditingController();
  List<String> dataList = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Another Item',
    'Sample Text',
    'Search',
    'Flutter',
  ];
  List<String> filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList.addAll(dataList);
  }

  void filterSearchResults(String query) {
    List<String> results = [];
    if (query.isNotEmpty) {
      dataList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          results.add(item);
        }
      });
    } else {
      results.addAll(dataList);
    }

    setState(() {
      filteredList.clear();
      filteredList.addAll(results);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4, // Set the elevation value here
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: [

            Expanded(
              child: Padding(
                padding:const EdgeInsets.only(left: 10,top: 6,bottom: 6),
                child: TextField(
                  controller: _searchController,
                  style:const TextStyle(fontSize: 16.0),
                  decoration:const InputDecoration(
                    hintText: 'What service or product are you looking for? ',
                    border: InputBorder.none,
                  ),
                  onChanged: filterSearchResults,
                ),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.all(12.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
