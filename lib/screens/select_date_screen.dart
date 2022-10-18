import 'package:app_menstrual_cycles/widgets/item_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../const/color_palatte.dart';

class SelectDateScreen extends StatelessWidget {
  //SelectDateScreen({super.key, required this.rangeEndDate, required this.rangeStartDate});
  static const String routeName = '/select_date_screen';

  DateTime? rangeStartDate;
  DateTime? rangeEndDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 4,
          ),
          SfDateRangePicker(
            view: DateRangePickerView.month,
            selectionMode: DateRangePickerSelectionMode.range,
            monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
            selectionColor: Colors.yellow,
            startRangeSelectionColor: Colors.yellow,
            endRangeSelectionColor: Colors.yellowAccent,
            todayHighlightColor: Colors.yellow,
            toggleDaySelection: true,
            onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
              if (args.value is PickerDateRange) {
                rangeStartDate = args.value.startDate;
                rangeEndDate = args.value.endDate;
              }
            },
          ),
          ItemButtonWidget(
            data: 'Select',
            onTap: () {
              Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
            },
            color: ColorPalette.primaryColor.withOpacity(0.1),
          ),
          const SizedBox(
            height: 5,
          ),
          ItemButtonWidget(
            data: 'Cancel',
            onTap: () {
              Navigator.of(context).pop();
            },
            color: ColorPalette.primaryColor.withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
