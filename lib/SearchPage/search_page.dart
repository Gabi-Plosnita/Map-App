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
          onSuffixTap: (){
            BlocProvider.of<SearchPageCubit>(context).clearSearchResults();
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
            BlocProvider.of<SearchPageCubit>(context).clearSearchResults();
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
            return Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    top: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    bottom: (index + 1 == state.landmarksInfoList?.length)
                        ? const BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          )
                        : BorderSide.none,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.memory(
                          ((state.landmarksInfoList![index].image)!),
                          scale: 3,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.82),
                          child: Text(
                            '${state.landmarksInfoList![index].name}',
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ));
          },
        );
      }),
    );
  }
}
