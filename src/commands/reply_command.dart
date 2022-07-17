import 'package:mineral/core.dart';
import 'package:mineral/api.dart';

@Command(name: 'reply_command', description: 'Commande permettant de renvoyer du contenu', scope: 'GUILD')
class ReplyCommand extends MineralCommand {
  Future<void> handle (CommandInteraction interaction) async {
    await interaction.reply(
      content: 'Hello World ! 💪',
      private: true,
    );
  }
}
