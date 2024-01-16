import 'package:lunii_test/api/api.dart';
import 'package:lunii_test/common/logic/loading_state.dart';
import 'package:lunii_test/common/theme/text_styles.dart';
import 'package:lunii_test/common/widgets/buttons/primary_button.dart';
import 'package:lunii_test/common/widgets/buttons/secondary_button.dart';
import 'package:lunii_test/home/logic/library_item_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class LibraryItemScreen extends StatelessWidget {
  const LibraryItemScreen({
    super.key,
    required this.itemId,
  });

  final String itemId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider(
        create: (context) => LibraryItemLogic(
          Provider.of<Api>(context, listen: false).libraryApi,
          itemId: itemId,
        )..init(),
        child: Consumer<LibraryItemLogic>(
          builder: (_, logic, __) => Observer(builder: (_) {
            return CustomScrollView(shrinkWrap: true, slivers: [
              const SliverAppBar(),
              SliverFillRemaining(
                child: (logic.loadingState == LoadingState.loading)
                    ? const Center(child: CircularProgressIndicator())
                    : (logic.loadingState == LoadingState.error)
                        ? Center(
                            child: Text(
                            'There was an error',
                            style: TextStyles.header,
                          ))
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.network(
                                  logic.item.posterUrl,
                                  height: 200,
                                  width: 200,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  logic.item.directors.join(', '),
                                  style: TextStyles.subtitle,
                                ),
                                Text(
                                  logic.item.title,
                                  style: TextStyles.label,
                                ),
                                PrimaryButton(
                                    onPressed: () {},
                                    text: 'Ajouter au panier'),
                                const SizedBox(height: 16),
                                SecondaryButton(
                                    onPressed: () {}, text: 'Extrait'),
                                const SizedBox(height: 16),
                                Text(logic.item.plotSummary)
                              ],
                            ),
                          ),
              ),
            ]);
          }),
        ),
      ),
    );
  }
}
