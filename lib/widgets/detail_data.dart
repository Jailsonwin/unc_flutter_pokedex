import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/poke_model.dart';

class DetailData extends StatelessWidget {
  final Pokemon? pokemon;
  const DetailData({Key? key, this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.red.withOpacity(0.5),
                offset: Offset(0, -5),
                blurRadius: 8),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Descrição",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Clicou aqui!");
                    },
                    child: Image(
                      height: 20,
                      width: 20,
                      image: AssetImage('heart_1.png'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Você usa o Lorem Ipsum tradicional? Sabe de nada inocente!! Conheça meu lorem que é Tchan, Tchan, Tchannn!! Txu Txu Tu Paaaaa!!",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
