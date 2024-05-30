import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:gadc/pages/map_page/map_page.dart';

class ExplorePage extends StatefulWidget {
  final VoidCallback drawer_key, nav_key;
  const ExplorePage(
      {super.key, required this.drawer_key, required this.nav_key});

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Align(
              alignment: const AlignmentDirectional(0, -1),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Theme.of(context).secondaryHeaderColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(24),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      const ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(24),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                        child: MapPage(),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 48, 8, 0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.drawer_key();
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.notes,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: TextFormField(
                                autofocus: false,
                                obscureText: false,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Search Aura',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.keyboard_voice,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Colors.white,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/icon.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1, 1),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 16 * 4),
                          child: GestureDetector(
                            onTap: () {
                              widget.nav_key();
                            },
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(4),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1, 1),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 0, 16, 16 * 4),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(
                                    Icons.my_location_rounded,
                                    size: 36,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.create_rounded,
                                        size: 36,
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Icon(
                                        Icons.threed_rotation_rounded,
                                        size: 36,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
