import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/widgets.dart';

class IntrinsicHeightWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "IntrinsicHeight" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      WidgetParserCompanion companion) {
    return IntrinsicHeight(
      child: DynamicWidgetBuilder.buildFromMap(
          map["child"], buildContext, companion),
    );
  }
}
