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
        'image': 'https://images.unsplash.com/photo-1517677208171-0bc6725a3e60?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'price': '24h • R\$ 59,90',
      },
      {
        'title': 'Peças Delicadas (Individual)',
        'description': 'Tratamento manual e higienização profunda que preserva as fibras e cores das suas roupas mais valiosas.',
        'image': 'https://images.unsplash.com/photo-1517677208171-0bc6725a3e60?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'price': '48h • A partir de R\$ 35,00/peça',
      },
      {
        'title': 'Itens de Casa (Cama e Banho)',
        'description': 'Higienização completa para todos os tamanhos (Solteiro a King) com secagem industrial que garante maciez e frescor.',
        'image': 'https://images.unsplash.com/photo-1517677208171-0bc6725a3e60?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'price': '3 dias úteis • R\$ 45,00',
      },
      {
        'title': 'Lavagem Self-Service',
        'description': 'Você no comando. Lave e seque suas roupas do dia a dia utilizando nossas máquinas profissionais e produtos de alta performance inclusos.',
        'image': 'https://images.unsplash.com/photo-1517677208171-0bc6725a3e60?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'price': 'Até 1h • R\$ 59,90',
      },
    ];
    list.execute();
    currentPage.execute();

  }
}