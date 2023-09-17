part of 'home.dart';

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home Screen"),
      // ),
      // bottomSheet: AppBottomSheet(),
      body: Column(
        children: [
          CustomAppBar(
            child: Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 16, left: 16),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 43,
                                  width: 43,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: AppPngs.headshot,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        AppIcons.locator,
                                        const Text(
                                          "Your location",
                                          style: TextStyle(
                                            color: Color(0xFFBEBEBE),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "Wertheimer, Illinois",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.5,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Colors.white,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              width: 43,
                              height: 43,
                              padding: const EdgeInsets.all(10.5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: AppIcons.alarm,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter the receipt number...",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.zero,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                      ),
                      focusColor: Colors.transparent,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(Icons.search_rounded),
                      ),
                      prefixIconColor: const Color(0xFF6C34A4),
                      suffixIcon: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF9241),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: AppIcons.scanner,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Bottom Bar");
  }
}
