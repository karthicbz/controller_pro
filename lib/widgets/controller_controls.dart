import 'package:controller_pro/widgets/connection_status.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:win32_gamepad/win32_gamepad.dart';

class ControllerControls {
  // Widget? controllerDetail;

  Widget controllerDetail(int value) {
    final gamepad = Gamepad(value - 1);
    if (gamepad.isConnected) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // batteryIcon(gamepad.gamepadBatteryInfo.batteryLevel)
              ConnectionStatus().connectionStatusText(
                "Gamepad is connected",
                gamepad,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Vibration Intensity'),
              ComboBox(items: [
                ComboBoxItem(child: Text('Low')),
                ComboBoxItem(child: Text('Medium')),
                ComboBoxItem(child: Text('High')),
              ])
            ],
          ),
        ],
      );
    } else {
      return Center(
        child: Text(
          "Gamepad not connected",
          style: TextStyle(color: Colors.red),
        ),
      );
    }
  }
}
