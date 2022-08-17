import 'package:tourisme_app_ma/models/AgentVoyage.dart';
import '../models/filter.dart';



/// The [SearchController] controller is responsible for filtering the ListView
/// of [AgentVoyage] objects. Two things are taken into consideration:
///
/// (1) USER FILTERS.
///
/// (2) KEYWORD SEARCH.
///
/// There are 3 layers of filtering:
///
/// (1) Layer1: [fullList]. Basically the fullList of agents that never gets altered.
///
/// (2) Layer2: [filteredList]. This list is the result of applying every [Filter]
/// in [filters] on the [fullList].
///
/// (3) Layer3: [searchList]. This list is the result of applying a keyword search
/// on [filteredList].
class SearchController {

  final List<AgentVoyage> fullList; // DO NOT ALTER THIS LIST !!!
  List<AgentVoyage> filteredList;
  List<AgentVoyage> searchList;
  List<Filter> filters;
  List<Filter> _provNameFilters = [];
  List<Filter> _sanctFilters = [];
  int _maxSanct = 100;



  SearchController({required this.fullList, required this.filteredList, required this.searchList,required this.filters});



  void searchFor(String keyword){
    searchList = filteredList.where((agentVoyage) {
      final bool check1 = agentVoyage.nom.contains(keyword.toUpperCase());
      return check1;
    }).toList();
  }


  void addFilter(Filter filter){
   filters.insert(1,filter);
  }

  void removeFilter(Filter filter){

    filters.removeWhere((element) {
      bool removeCheck = (element == filter);
      return removeCheck;
    });
    if (filter.type == FilterType.provName){
      _provNameFilters.removeWhere((element) {

        bool removeCheck = (element == filter);
        return removeCheck;
      });
    }
    else{
      _sanctFilters.removeWhere((element) {

        bool removeCheck = (element == filter);
        return removeCheck;
      });
    }
  }



  /// Changes [filteredList] into a list containing only the agents who pass
  /// both [check1] and [check2].
  void applyFilters(){
    _seperateFilters();
    _reduceSanctFilters(_sanctFilters);
    if (_sanctFilters.isEmpty){
      _maxSanct = 100;
    }
    filteredList = fullList.where((agentVoyage) {
      final bool check1 = (agentVoyage.sanct <= _maxSanct);
      final bool check2 = _provNameMatch(agentVoyage);
      return (check1 && check2);
    }).toList();
    searchList = filteredList;
  }



  /// Separates Filters of type provName from Filters of type maxSanct.
  void _seperateFilters(){
    for (Filter filter in filters) {
      if (filter.type == FilterType.provName){
        if (_provNameFilters.contains(filter)){
          continue;
        }
        _provNameFilters.add(filter);
      }
      else{
        _sanctFilters.add(filter);
      }
    }
  }




  void _reduceSanctFilters(List<Filter> sanctFilters){
    for (Filter filter in sanctFilters) {
      int currentFilterValue = int.parse(filter.value);
      if (currentFilterValue < _maxSanct){
       _maxSanct = currentFilterValue;
      }
    }
  }

  /// Checks if [agent.nomProv] matches at least one filter value in [_provNameFilters].
  bool _provNameMatch(AgentVoyage agent){

    // Due to the fact that the filters list always has at least one filter of
    // type provName and of value "" (empty string), we have to skip the check
    // if the list contains one element (the empty string provName filter).
    if (_provNameFilters.length < 2){
      return true;
    }
    for (Filter filter in _provNameFilters){
      if (agent.nomProv.toUpperCase() == filter.value.toUpperCase()){
        return true;
      }
    }
    return false;
  }




  }



