class RoutesResponse {
  String yearId;
  String lastUpdate;
  int routesCount;
  int areasCount;
  int groupsCount;
  int countysCount;
  List<Group> data;

  RoutesResponse(
      {this.yearId,
      this.lastUpdate,
      this.routesCount,
      this.areasCount,
      this.groupsCount,
      this.countysCount,
      this.data});

  RoutesResponse.fromJson(Map<String, dynamic> json) {
    yearId = json['yearId'];
    lastUpdate = json['lastUpdate'];
    routesCount = json['routesCount'];
    areasCount = json['areasCount'];
    groupsCount = json['groupsCount'];
    countysCount = json['countysCount'];
    if (json['data'] != null) {
      data = new List<Group>();
      json['data'].forEach((v) {
        data.add(new Group.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['yearId'] = this.yearId;
    data['lastUpdate'] = this.lastUpdate;
    data['routesCount'] = this.routesCount;
    data['areasCount'] = this.areasCount;
    data['groupsCount'] = this.groupsCount;
    data['countysCount'] = this.countysCount;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Group {
  int groupId;
  String groupName;
  List<Area> areas;

  Group({this.groupId, this.groupName, this.areas});

  Group.fromJson(Map<String, dynamic> json) {
    groupId = json['groupId'];
    groupName = json['groupName'];
    if (json['areas'] != null) {
      areas = new List<Area>();
      json['areas'].forEach((v) {
        areas.add(new Area.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['groupId'] = this.groupId;
    data['groupName'] = this.groupName;
    if (this.areas != null) {
      data['areas'] = this.areas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Area {
  int areaId;
  String areaName;
  List<Route> routes;

  Area({this.areaId, this.areaName, this.routes});

  Area.fromJson(Map<String, dynamic> json) {
    areaId = json['areaId'];
    areaName = json['areaName'];
    if (json['routes'] != null) {
      routes = new List<Route>();
      json['routes'].forEach((v) {
        routes.add(new Route.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['areaId'] = this.areaId;
    data['areaName'] = this.areaName;
    if (this.routes != null) {
      data['routes'] = this.routes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Route {
  int routeId;
  String routeName;
  String routeFrom;
  String routeTo;
  String routeLenght;
  String routeAcent;
  String routeKmlFile;
  String routeDescriptionFile;
  String routeDescription;
  String routeLastUpdate;

  Route(
      {this.routeId,
      this.routeName,
      this.routeFrom,
      this.routeTo,
      this.routeLenght,
      this.routeAcent,
      this.routeKmlFile,
      this.routeDescriptionFile,
      this.routeDescription,
      this.routeLastUpdate});

  Route.fromJson(Map<String, dynamic> json) {
    routeId = json['routeId'];
    routeName = json['routeName'];
    routeFrom = json['routeFrom'];
    routeTo = json['routeTo'];
    routeLenght = json['routeLenght'];
    routeAcent = json['routeAcent'];
    routeKmlFile = json['routeKmlFile'];
    routeDescriptionFile = json['routeDescriptionFile'];
    routeDescription = json['routeDescription'];
    routeLastUpdate = json['routeLastUpdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['routeId'] = this.routeId;
    data['routeName'] = this.routeName;
    data['routeFrom'] = this.routeFrom;
    data['routeTo'] = this.routeTo;
    data['routeLenght'] = this.routeLenght;
    data['routeAcent'] = this.routeAcent;
    data['routeKmlFile'] = this.routeKmlFile;
    data['routeDescriptionFile'] = this.routeDescriptionFile;
    data['routeDescription'] = this.routeDescription;
    data['routeLastUpdate'] = this.routeLastUpdate;
    return data;
  }
}

class UserRoutesResponse {
  List<UserRoute> routes;

  UserRoutesResponse({this.routes});

  UserRoutesResponse.fromJson(Map<String, dynamic> json) {
    if (json['routes'] != null) {
      routes = new List<UserRoute>();
      json['routes'].forEach((v) {
        routes.add(new UserRoute.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.routes != null) {
      data['routes'] = this.routes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserRoute {
  int routeId;

  UserRoute({this.routeId});

  UserRoute.fromJson(Map<String, dynamic> json) {
    routeId = json['routeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['routeId'] = this.routeId;
    return data;
  }
}
