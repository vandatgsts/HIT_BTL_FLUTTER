import 'package:btl_flutter/UI/Main/Screen/map_screen.dart';
import 'package:flutter/material.dart';

class BtnShip extends StatelessWidget {
  const BtnShip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (context)=> CurrentLocationScreen()) );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const ListTile(
          leading: Icon(
            Icons.local_shipping,
            color: Colors.red,
          ),
          title: Text(
            'Giao hàng tân nơi',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),

          subtitle:Text('Hãy cho chúng tôi biết vi trí của ban') ,
          trailing: Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}
