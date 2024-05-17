import 'package:flutter/material.dart';

class SearchUtil extends SearchDelegate{

  List<String> searchTerms = [];

  SearchUtil.withSearchList(List<String> searchList){
    searchTerms = searchList;
  }
  SearchUtil();
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(
      onPressed: (){
        query = '';
      }, 
      icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        }, 
        icon: const Icon(Icons.arrow_back)
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var exam in searchTerms){
      if(exam.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(exam);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(title: Text(result),);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var exam in searchTerms){
      if(exam.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(exam);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(title: Text(result));
      },
    );
  }
  
}