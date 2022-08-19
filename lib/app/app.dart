import 'package:flutter/material.dart';
import 'package:tourisme_app_ma/const/color_const.dart';
import 'package:tourisme_app_ma/models/AgentVoyage.dart';
import 'package:tourisme_app_ma/models/filter.dart';
import 'package:tourisme_app_ma/models/notifications/create_filter_notification.dart';
import 'package:tourisme_app_ma/models/notifications/delete_filter_notification.dart';
import 'package:tourisme_app_ma/models/notifications/open_filter_menu_notification.dart';
import 'package:tourisme_app_ma/models/notifications/pull_down_notification.dart';
import 'package:tourisme_app_ma/models/notifications/search_changed_notification.dart';
import 'package:tourisme_app_ma/widgets/bienvenu.dart';
import 'package:tourisme_app_ma/widgets/choice_chip.dart';
import 'package:tourisme_app_ma/widgets/filters_title.dart';
import 'package:tourisme_app_ma/widgets/information_slider.dart';
import 'package:tourisme_app_ma/widgets/list_element.dart';
import 'package:tourisme_app_ma/widgets/painters/add_filter_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/logo_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/searchbar_painter.dart';
import 'package:tourisme_app_ma/widgets/painters/underliner_painter.dart';
import 'package:tourisme_app_ma/widgets/spinning_decoration.dart';
import 'package:tourisme_app_ma/controllers/search_controller.dart';

class TourismApp extends StatefulWidget {
  final List<AgentVoyage> list;
  const TourismApp({Key? key, required this.list}) : super(key: key);

  @override
  State<TourismApp> createState() => _TourismAppState();
}

class _TourismAppState extends State<TourismApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(
        fullList: widget.list,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  final List<AgentVoyage> fullList;

  const Home({Key? key, required this.fullList}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  bool _showInfo = false;
  bool _showFilters = false;
  int _currentIndex = 0;
  late SearchController searchController;
  TextEditingController _searchFieldController = TextEditingController();
  ScrollController _filterScrollController = ScrollController();
  AgentVoyage defaultAgentVoyage = AgentVoyage(
      nom: "----",
      nomProv: "----",
      adresse: "----",
      tel: "----",
      fax: "----",
      sanct: 0,
      index: 0);

  @override
  void initState() {
    super.initState();
    searchController = SearchController(
        fullList: widget.fullList,
        filteredList: widget.fullList,
        searchList: widget.fullList,
        filters: []);
    searchController.searchFor("");
    List<Filter> l = [
      Filter(value: "", type: FilterType.provName),
    ];
    searchController.filters.addAll(l);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double xFactor = width / 428;
    double yFactor = height / 926;
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFF0FDFF), Color(0xFFFFFFFF)],
                    begin: Alignment(0, 0.4),
                    end: Alignment(2, 0.2))),
          ),
          Positioned(
              top: 30 * yFactor,
              left: 25 * xFactor,
              child: Row(
                children: [
                  Container(
                    width: 78 * xFactor,
                    height: 80 * yFactor,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xfff1fcfd),
                        borderRadius: BorderRadius.circular(21),
                        boxShadow: [
                          BoxShadow(
                            color: genericShadowColor,
                            offset: Offset(4 * xFactor, 4 * yFactor),
                            blurRadius: 6,
                          ),
                          BoxShadow(
                            color: const Color(0xFFFFFFFF),
                            offset: Offset(-4 * xFactor, -4 * yFactor),
                            blurRadius: 5,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 50 * xFactor,
                          height: 50 * yFactor,
                          child: Logo(width: width),
                        ),
                        const Text(
                          "MAROC",
                          style: TextStyle(
                            color: Color(0xFF313131),
                            fontSize: 10,
                            letterSpacing: 2.5,
                            fontFamily: "Gruppo",
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: width * xFactor / 30,),
                  Column(
                    children: [
                      const Text(
                        "AGENTS DE VOYAGES",
                        style: TextStyle(
                            color: mainDarkColor,
                            fontFamily: "Michroma",
                            fontSize: 14,
                            letterSpacing: 3.57),
                      ),
                      SizedBox(height: height * yFactor / 80,),
                      const Underliner(width: 200),
                    ],
                  ),
                ],
              )),
          Positioned(
            top: 0.262 * height * yFactor -
                (276 / 2), // Subtract distance to center of widget
            right: -125 * xFactor,
            child: Row(
              children: [
                SpinningDecoration(width: width),
              ],
            ),
          ),
          Positioned(
            top: 0.2 * height * yFactor,
            left: 0.05 * width * xFactor,
            width: 270 * xFactor,
            height: 50 * yFactor,
            child: const Bienvenu(),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, height * yFactor / 1.98, 0, 0),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.green
                  ],
                  stops: [0.0, 0.1, 0.9, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstOut,
              child: ListView.separated(
                primary: false,
                physics: const BouncingScrollPhysics(),
                addAutomaticKeepAlives: true,
                itemCount: searchController.searchList.length,
                itemBuilder: (BuildContext context, int index) {
                  if (searchController.searchList.isEmpty) {
                    return const SizedBox();
                  }
                  // TODO: CHANGE THE TYPE OF THIS NOTIFICATION TO A CUSTOM TYPE !
                  return NotificationListener<SizeChangedLayoutNotification>(
                    onNotification: (notification) {
                      setState(() {
                        _showInfo = true;
                        _currentIndex = index;
                      });
                      return true;
                    },
                    child: ListElement(
                      yFactor: yFactor,
                      xFactor: xFactor,
                      agentVoyage: searchController.searchList[index],
                      stateVar: _showInfo,
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 20, width: 20);
                },
              ),
            ),
          ),
          Positioned(
            top: 0.285 * height * yFactor + 90,
            left: width * xFactor / 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FiltersTitle(
                  width: width,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10,),
                  clipBehavior: Clip.none,
                  width: width,
                  height: _showFilters ? height / 2.1 : height / 15,
                  child: NotificationListener<DeleteFilterNotification>(
                    onNotification: (notification) {
                      setState(() {
                        searchController.removeFilter(notification.filter);
                        searchController.applyFilters();
                        if (_currentIndex >
                            searchController.searchList.length - 1) {
                          _currentIndex = 0;
                        }
                      });
                      return true;
                    },
                    child: NotificationListener<CreateFilterNotification>(
                      onNotification: (notification) {
                        setState(() {
                          searchController.addFilter(notification.filter);
                          searchController.applyFilters();
                          if (_currentIndex >
                              searchController.searchList.length - 1) {
                            _currentIndex = 0;
                          }
                        });
                        return true;
                      },
                      child: ScrollConfiguration(
                        behavior: NoOverScrollBehaviour(),
                        child: ListView.separated(
                          padding: EdgeInsets.only(right: 40 * xFactor),
                          shrinkWrap: true,
                          controller: _filterScrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: searchController.filters.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (index == 0 || searchController.filters.isEmpty) {
                              return NotificationListener<OpenFilterNotification>(
                                onNotification: (notification) {
                                  setState(() {
                                    _showFilters = notification.stateBool;
                                    if (_showFilters) {
                                    } else {}
                                  });
                                  return true;
                                },
                                child: SizedBox(
                                    height: _showFilters ? height / 4 : 0,
                                    child: AddFilter(
                                      width: _showFilters ? width : 0,
                                      height: height,
                                      plusSignWidth: width,
                                    )),
                              );
                            }
                            return CustomChoiceChip(
                              height: 32 * yFactor,
                              width: 92 * xFactor,
                              filter: searchController.filters[index],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: width * xFactor / 15);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -5,
            top: 0.285 * height * yFactor,
            child: SizedBox(
              width: width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 80 * yFactor,
                        child: NotificationListener<SearchChangeNotification>(
                          onNotification: (notification) {
                            setState(() {
                              // TODO: PUT FILTER PARAMETER LOGIC HERE
                              searchController
                                  .searchFor(_searchFieldController.text);
                            });
                            return true;
                          },
                          child: SearchBar(
                            xFactor: xFactor,
                            yFactor: yFactor,
                            controller: _searchFieldController,
                          ),
                        ),
                      ),
                    ],
                  ),
                  /// The purpose of this SizedBox is to force the InfoSlider
                  /// widget to get as close to the SearchBar widget as possible.
                  /// You can replace SizedBox with a Container and give it a color
                  /// to see where exactly the hitbox of SearchBar ends.
                  AnimatedSize(
                    curve: Curves.linearToEaseOut,
                    reverseDuration: const Duration(seconds: 1),
                    duration: const Duration(seconds: 2),
                    child: SizedBox(
                      height: _showInfo ? 0 : height,
                    ),
                  ),
                  NotificationListener<PullDownNotification>(
                    onNotification: (notification) {
                      setState(() {
                        _showInfo = false;
                      });
                      return true;
                    },
                    child: InfoSlider(
                      height: height,
                      width: width,
                      agentVoyage: searchController.searchList.isNotEmpty
                          ? (_currentIndex < searchController.searchList.length
                              ? searchController.searchList[_currentIndex]
                              : searchController.searchList[0])
                          : defaultAgentVoyage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

