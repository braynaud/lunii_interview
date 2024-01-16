import 'package:lunii_test/api/api.dart';
import 'package:lunii_test/home/logic/library_logic.dart';
import 'package:lunii_test/home/widgets/library_item.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class LibraryListScreen extends StatelessWidget {
  const LibraryListScreen({
    super.key,
    required this.coordinator,
  });

  final LibraryListNavigationDelegate coordinator;

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: CustomScrollView(shrinkWrap: true, slivers: [
        SliverAppBar(
          backgroundColor: Colors.blueGrey.shade50,
          centerTitle: false,
          title: TextField(
            controller: searchController,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Provider(
              create: (context) {
                final logic = LibraryLogic(
                  Provider.of<Api>(context, listen: false).libraryApi,
                );
                return logic;
              },
              child: Consumer<LibraryLogic>(builder: (_, logic, __) {
                searchController.addListener(
                  () => logic.search(searchController.text),
                );
                return Observer(builder: (_) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: logic.libraryItems
                        .map(
                          (item) => Column(
                            children: [
                              LibraryItem(
                                itemSummary: item,
                                onTap: () =>
                                    coordinator.onItemSelected(item.imdbId),
                              ),
                              const Divider()
                            ],
                          ),
                        )
                        .toList(),
                  );
                });
              }),
            ),
          ),
        ),
      ]),
    );
  }
}

mixin LibraryListNavigationDelegate {
  void onItemSelected(String id);
}
