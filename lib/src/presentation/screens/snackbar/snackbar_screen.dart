import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnachbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola Mundo!'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estas seguro?'),
        content: const Text(
            'Commodo consectetur incididunt fugiat voluptate ex et proident et aute labore esse et fugiat in. Veniam consectetur officia mollit exercitation occaecat culpa eu ut enim cupidatat nulla ad excepteur sint. Eu exercitation mollit qui ullamco. Enim anim proident minim duis labore elit eiusmod ullamco fugiat commodo veniam nisi anim. In sint dolore cupidatat consectetur culpa ut laborum minim nostrud non esse do nostrud culpa. In et proident officia cupidatat laboris officia adipisicing. In eu sunt ut sint.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Ad cillum voluptate aliqua ad eu qui excepteur veniam mollit nisi. Ullamco occaecat magna nulla ipsum sint esse. Quis mollit nulla laboris ex amet ut dolor elit sit nisi esse cupidatat. Ad dolore sit culpa eu. Aute ad qui officia occaecat.')
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            const SizedBox(height: 10),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar Dialogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnachbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
