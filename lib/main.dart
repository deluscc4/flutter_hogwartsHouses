import 'package:flutter/material.dart';

//TODO: Passo 15 - Execute o app novamente para ver as alterações sendo exibidas da tela.

void main() => runApp(HarryPotterHouses());

class HarryPotterHouses extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HarryPoterPage(),
    );
  }
}

//TODO: Passo 9 - Crie um novo objeto chamado helper utilizando a classe Helper.


class HarryPoterPage extends StatefulWidget {
  _HarryPoterPageState createState() => _HarryPoterPageState();
}

class _HarryPoterPageState extends State<HarryPoterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    //TODO: Passo 1 - Adicione uma imagem de fundo (background) para esse Container. Dica: utilize a imagem harrypotter.jpg que está dentro da pasta imagens.
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 120),
                    child: Text(
                      //TODO: Passo 10 - Use o helper para obter a primeira questão e mostrá-la dentro do Widget Text.
                      'Aqui serão exibidas questões, que para nossa situação podem ser perguntas ou definições de que casas são indicadas para os usuários.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Escolha (choice) 1 feita pelo usuário.
                    //TODO: Passo 18 - Chame o método nextQuestion() do helper passando como parâmetro o número 1 que representa a escolha do usuário.
                  },
                  color: Colors.green,
                  child: Text(
                    //TODO: Passo 13 - Use o helper para obter o conteúdo textual de choice1 (escolha 1).
                    'Escolha (choice) 1',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Passo 26 - Use o Widget Visibility deixando o FlatButton como seu filho.
                //TODO: Passo 28 - Altere a propriedade visible do Widget Visibility para uma chamada do método buttonShouldBeVisible do helper.
                child: FlatButton(
                  onPressed: () {
                    //Escolha (choice) 2 feita pelo usuário.
                    //TODO: Passo 19 - Chame o método nextQuestion do helper e passe como parâmetro o número 2 que representa a escolha do usuário.
                  },
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    //TODO: Passo 14 - Use o helper para obter o conteúdo textual de choice2 (escolha 2).
                    'Escolha (choice) 2',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Passo 24 - Execute o app e tente descobrir o que você precisa adicionar ao seu código para fazer com que a questão altere quando você pressionar em um dos botões de resposta.

//TODO: Passo 29 - Execute o app e teste para ver se tudo ficou funcionando perfeitamente.
