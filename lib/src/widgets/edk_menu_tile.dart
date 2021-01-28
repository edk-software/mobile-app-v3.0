import 'package:edk_mobile_v3/src/utils/edk_colors.dart';
import 'package:edk_mobile_v3/src/utils/edk_constants.dart';
import 'package:flutter/material.dart';

class EDKMenuTile extends StatelessWidget {
  final bool selected;
  final String label;
  final Function onTap;

  const EDKMenuTile({
    Key key,
    @required this.selected,
    @required this.label,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontFamily: kFontFamilyOpenSans,
                  color: selected ? EDKColor.whisper : EDKColor.slateGray,
                  fontSize: 15,
                ),
              ),
              if (selected) ...[
                SizedBox(height: 5),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      height: 2,
                      width: 40,
                      color: EDKColor.red,
                    );
                  },
                ),
              ]
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
