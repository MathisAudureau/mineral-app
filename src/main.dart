import 'package:mineral/api.dart';
import 'package:mineral/console.dart';
import 'package:mineral/core.dart';

import 'commands/menu_command.dart';
import 'commands/reply_command.dart';

void main () async {
  Kernel kernel = Kernel()
    ..commands.add(ReplyCommand())
    ..commands.add(MenuCommand())
    ..intents = [Intent.all];

  await kernel.init();
  Console.info(prefix: "start", message: "Application is ready");
}

