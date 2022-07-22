import 'package:aulas4e5/modules/home/widgets/coffee_shop_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //AnimationController controller = AnimationController(duration: const Duration(seconds: 1), vsync: 1);] //responsavel por controlar a animação
    //bool isPlaying 
    List<String> listString = ['Cappuccino', 'Café', 'Chocolate quente'];
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      drawer: Drawer(child: 
      ListView(
        children: const [
          DrawerHeader(decoration: BoxDecoration(
            color: Colors.yellowAccent,
          ), child: Text('data'),
          ),
          Icon(Icons.abc),
          Icon(Icons.abc),
          Icon(Icons.abc),
        ],
      ),
      ),
      appBar: AppBar(
        //title: const Text('Meu primeiro app'), //vai ser sempre constante
        //backgroundColor: Colors.black,
        elevation: 0,
        actions: const [
          Icon(Icons.search, color: Colors.black,),
        ],
        /*leading: GestureDetector(onTap: () {
          setState
        } , child: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: ,),*/
        leading: IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu, color: Colors.black),)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          //coluna como no excel por exemplo. Vai empilhando as informações
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Hoje é um ótimo dia para tomar café!',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              //Listview é scrolavel, sized box é travada limitada
              height: 500,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CoffeShopWidget(title: listString[index]),
                  );
                },
                itemCount: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: () {}, child: const Text('Reportar erro')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.add_reaction_rounded, size: 20,),),
            )
          ], //children em formato de lista
        ),
      ),
    );
  }
}

            //Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 16),
            //child:

            /*
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.coffee, size: 48,),
              Text('Capuccino', style: TextStyle(fontSize: 24),),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
          */