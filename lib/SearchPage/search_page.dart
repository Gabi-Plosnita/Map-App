import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_app/cubit/search_page_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: CupertinoSearchTextField(
          onSubmitted: (String text) async {
            await BlocProvider.of<SearchPageCubit>(context)
                .onSearchBarSubmitted(text);
          },
          padding: const EdgeInsets.all(10),
          placeholder: 'Search',
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          autofocus: true,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 247, 245, 245),
            border: Border.all(
              color: Colors.grey,
              width: 1.4,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        leading: IconButton(
          iconSize: 35,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(63, 81, 181, 1),
          ),
        ),
      ),
      body: BlocBuilder<SearchPageCubit, SearchPageCubitState>(
          builder: (context, state) {
        return ListView.builder(
          itemCount: state.landmarksInfoList?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(state.landmarksInfoList![index].name!),
            );
          },
        );
      }),
    );
  }
}
