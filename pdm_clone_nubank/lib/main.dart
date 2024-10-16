import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF8A05BE),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        leading: IconButton(
          icon: const Icon(Icons.person_outline, color: Color(0xFFF5F5F5)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon:
                const Icon(Icons.mark_email_read_outlined, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Saldo da Conta
              const Text(
                'Conta',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'R\$1000,00',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.pix, size: 40, color: Colors.purple),
                      SizedBox(height: 5),
                      Text('Área Pix',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money, size: 40, color: Colors.purple),
                      SizedBox(height: 5),
                      Text('Pagamentos',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.qr_code, size: 40, color: Colors.purple),
                      SizedBox(height: 5),
                      Text('QRCode',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.attach_money, size: 40, color: Colors.purple),
                      SizedBox(height: 5),
                      Text('Transferir',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Cartão de Crédito
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.credit_card),
                        SizedBox(width: 10),
                        Text('Meus Cartões',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Guarde seu dinheiro em caixinhas',
                      style: TextStyle(
                          color: Color(0xFF8A05BE),
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Acessando a área de planejamento'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Cartão de Crédito e Empréstimo
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Cartão de Crédito', style: TextStyle(fontSize: 24)),
                  const SizedBox(height: 10),
                  const Text('Fatura Fechada',
                      style: TextStyle(fontSize: 18, color: Colors.black54)),
                  const SizedBox(height: 10),
                  const Text('R\$2.123,39', style: TextStyle(fontSize: 24)),
                  const SizedBox(height: 15),
                  const Text('Vencimento dia 15',
                      style: TextStyle(fontSize: 18, color: Colors.black54)),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[50], // Cor do botão
                    ),
                    child: Text('Renegociar', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text('Empréstimo', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 10),
              const Text('Tudo certo! Você está em dia',
                  style: TextStyle(fontSize: 18)),
              const SizedBox(height: 30),
              // Descubra Mais
              const Text('Descubra Mais', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 10),
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/seguroVida.png', // Adicione sua imagem no pubspec.yaml
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Seguro de Vida',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Cuide bem de quem você ama de um jeito simples',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFF8A05BE), // Cor do botão corrigida
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                            ),
                            child: Text('Conhecer'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
