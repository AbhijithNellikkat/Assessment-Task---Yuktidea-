import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:yuktidea_task_app/controllers/termsandconditions_controller.dart';

class TermsAndconditionView extends StatefulWidget {
  const TermsAndconditionView({super.key});

  @override
  State<TermsAndconditionView> createState() => _TermsAndconditionViewState();
}

class _TermsAndconditionViewState extends State<TermsAndconditionView> {
  @override
  void initState() {
    Provider.of<TermsAndConditionsController>(context, listen: false)
        .fetchTermsAndConditions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
              ),
            ),
            const SizedBox(width: 20)
          ],
        ),
        body: Consumer<TermsAndConditionsController>(
          builder: (context, controller, _) {
            if (controller.loading) {
              // Show a loading indicator if data is being fetched
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (controller.result != null) {
              // // Show the fetched data
              // final model = controller.result!;

              // return Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              //   child: Container(
              //     width: 250,
              //     height: 150,
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           model.data!.title!,
              //           style: const TextStyle(
              //               fontSize: 20, fontWeight: FontWeight.bold),
              //         ),
              //         const SizedBox(height: 10),
              //       ],
              //     ),
              //   ),
              // );

              final model = controller.result!;
              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Html(data: model.data!.content!),
              );
            } else {
              // Show a message if no data is available
              return Center(
                child: Text("No data available"),
              );
            }
          },
        ),
      ),
    );
  }
}
