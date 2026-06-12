import '../../../app/utils/command.dart';

class HomeController {
  Command<int> currentPage = Command<int>(data: 0);
  Command<List<Map<String, dynamic>>> list = Command<List<Map<String, dynamic>>>(data: []);

  void changePage(int page) {
    currentPage.data = page;
    currentPage.execute();
  }

  void onInit() {
    currentPage.data = 0;
    list.data = [
      {
        'title': 'Lavagem por Cesto (Até 10kg)',
        'description': 'Ideal para roupas do cotidiano. Lavamos, secamos e dobramos suas peças com produtos de alta performance.',
        'image': 'https://unsplash.com/pt-br/fotografias/pessoa-segurando-tecidos-de-malha-aJN-jjFLyCU',
        'price': '24h • R\$ 59,90',
      },
      {
        'title': 'Peças Delicadas (Individual)',
        'description': 'Tratamento manual e higienização profunda que preserva as fibras e cores das suas roupas mais valiosas.',
        'image': 'https://unsplash.com/pt-br/fotografias/pessoa-segurando-tecidos-de-malha-aJN-jjFLyCU',
        'price': '48h • A partir de R\$ 35,00/peça',
      },
      {
        'title': 'Itens de Casa (Cama e Banho)',
        'description': 'Higienização completa para todos os tamanhos (Solteiro a King) com secagem industrial que garante maciez e frescor.',
        'image': 'https://unsplash.com/pt-br/fotografias/pessoa-segurando-tecidos-de-malha-aJN-jjFLyCU',
        'price': '3 dias úteis • R\$ 45,00',
      },
      {
        'title': 'Lavagem Self-Service',
        'description': 'Você no comando. Lave e seque suas roupas do dia a dia utilizando nossas máquinas profissionais e produtos de alta performance inclusos.',
        'image': 'https://unsplash.com/pt-br/fotografias/pessoa-segurando-tecidos-de-malha-aJN-jjFLyCU',
        'price': 'Até 1h • R\$ 59,90',
      },
    ];
    list.execute();
    currentPage.execute();

  }
}