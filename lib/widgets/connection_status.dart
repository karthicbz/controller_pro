import 'package:fluent_ui/fluent_ui.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart'
    as microsoft_icons;
import 'package:win32_gamepad/win32_gamepad.dart';

class ConnectionStatus {
  Widget batteryIcon(GamepadBatteryLevel info) {
    if (info.name == 'empty') {
      return Icon(
        microsoft_icons.FluentIcons.battery_0_20_filled,
        color: Colors.red,
      );
    } else if (info.name == 'low') {
      return Icon(
        microsoft_icons.FluentIcons.battery_3_24_filled,
        color: Colors.orange,
      );
    } else if (info.name == 'medium') {
      return Icon(
        microsoft_icons.FluentIcons.battery_5_24_filled,
        color: Colors.purple,
      );
    } else if (info.name == 'full') {
      return Icon(
        microsoft_icons.FluentIcons.battery_7_24_filled,
        color: Colors.green,
      );
    } else {
      return const Icon(
        microsoft_icons.FluentIcons.battery_10_20_regular,
        color: Colors.grey,
      );
    }
  }

  Widget connectionStatusText(String status, Gamepad gamepad) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          status,
          style: TextStyle(color: Colors.green),
        ),
        const SizedBox(
          width: 10,
        ),
        batteryIcon(gamepad.gamepadBatteryInfo.batteryLevel)
      ],
    );
  }
}
