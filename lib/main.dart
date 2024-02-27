import 'package:flutter/material.dart';
import 'package:harry_potter_houses_starting/helper.dart';

//15 - Execute o app novamente para ver as alterações sendo exibidas da tela.

void main() => runApp(HarryPotterHouses());

class HarryPotterHouses extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HarryPoterPage(),
    );
  }
}

//9 - Crie um novo objeto chamado helper utilizando a classe Helper.
Helper helper = Helper();
String? getQuestion = helper.getQuestion();
String? getChoice1 = helper.getChoice1();
String? getChoice2 = helper.getChoice2();

void atualizarTela() {
  getQuestion = helper.getQuestion();
  getChoice1 = helper.getChoice1();
  getChoice2 = helper.getChoice2();
}


class HarryPoterPage extends StatefulWidget {
  _HarryPoterPageState createState() => _HarryPoterPageState();
}

class _HarryPoterPageState extends State<HarryPoterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('imagens/harrypotter.jpg')),
        ),
        //1 - Adicione uma imagem de fundo (background) para esse Container. Dica: utilize a imagem harrypotter.jpg que está dentro da pasta imagens.
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
                      //10 - Use o helper para obter a primeira questão e mostrá-la dentro do Widget Text.
                      '$getQuestion',
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
                child: ElevatedButton(
                  onPressed: () {
                    //Escolha (choice) 1 feita pelo usuário.
                    //18 - Chame o método nextQuestion() do helper passando como parâmetro o número 1 que representa a escolha do usuário.
                    setState(() {
                      helper.nextQuestion(1);
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  //color: Colors.green,
                  child: Text(
                    //13 - Use o helper para obter o conteúdo textual de choice1 (escolha 1).
                    '$getChoice1',
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
                //26 - Use o Widget Visibility deixando o FlatButton como seu filho.
                //28 - Altere a propriedade visible do Widget Visibility para uma chamada do método buttonShouldBeVisible do helper.
                child: Visibility(
                  visible: helper.buttonShouldBeVisible(),
                  child: ElevatedButton(
                    onPressed: () {
                      //Escolha (choice) 2 feita pelo usuário.
                      //19 - Chame o método nextQuestion do helper e passe como parâmetro o número 2 que representa a escolha do usuário.
                      setState(() {
                        helper.nextQuestion(2);
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurpleAccent)),
                    //color: Colors.deepPurpleAccent,
                    child: Text(
                      //14 - Use o helper para obter o conteúdo textual de choice2 (escolha 2).
                      '$getChoice2',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
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

//24 - Execute o app e tente descobrir o que você precisa adicionar ao seu código para fazer com que a questão altere quando você pressionar em um dos botões de resposta.

//29 - Execute o app e teste para ver se tudo ficou funcionando perfeitamente.
