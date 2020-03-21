class EditionState {
  int currentYearId;
  int routesLastUpdate;
  int routesCount;
  int areasCount;
  int groupsCount;
  String countysCount;
  int currentMeditationsParentId;
  String currentMeditationsName;
  int meditationsLastUpdate;

  EditionState(
      {this.currentYearId,
      this.routesLastUpdate,
      this.routesCount,
      this.areasCount,
      this.groupsCount,
      this.countysCount,
      this.currentMeditationsParentId,
      this.currentMeditationsName,
      this.meditationsLastUpdate});

  EditionState.fromJson(Map<String, dynamic> json) {
    currentYearId = json['currentYearId'];
    routesLastUpdate = json['routesLastUpdate'];
    routesCount = json['routesCount'];
    areasCount = json['areasCount'];
    groupsCount = json['groupsCount'];
    countysCount = json['countysCount'];
    currentMeditationsParentId = json['currentMeditationsParentId'];
    currentMeditationsName = json['currentMeditationsName'];
    meditationsLastUpdate = json['meditationsLastUpdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currentYearId'] = this.currentYearId;
    data['routesLastUpdate'] = this.routesLastUpdate;
    data['routesCount'] = this.routesCount;
    data['areasCount'] = this.areasCount;
    data['groupsCount'] = this.groupsCount;
    data['countysCount'] = this.countysCount;
    data['currentMeditationsParentId'] = this.currentMeditationsParentId;
    data['currentMeditationsName'] = this.currentMeditationsName;
    data['meditationsLastUpdate'] = this.meditationsLastUpdate;
    return data;
  }
}
