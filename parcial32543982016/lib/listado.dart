import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class listado extends StatelessWidget {
  const listado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Listado"),
      ),
      body: Stack
      (
          children: 
          [
            Container
            (
              child: Image.asset("assets/img/food.jpg",height: 900.0,
          width: 1950.0,
          fit: BoxFit.cover,),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("ejercicio3").snapshots(),
              builder: (context, AsyncSnapshot snapshot)
              {
                if(!snapshot.hasData)
                {
                  return LinearProgressIndicator();
                };
                return Expanded
                (
                  child: _buildList(snapshot.data)
                );
              }
            )
          ],
        
      ),
      
    );
  }

  Widget _buildList(QuerySnapshot snapshot)
  {
    return ListView.builder
    (
      shrinkWrap: true,
      itemCount: snapshot.docs.length,
      itemBuilder: (context, index)
      {
        final doc = snapshot.docs[index];
        return Column
        (
            children: 
            [
              Text("Factura", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.redAccent),),
              Row
              (
                children: 
                [
                  Text("Cliente: " ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["nombre_cliente"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
              Row
              (
                children: 
                [
                  Text("Apellido: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["apellido_cliente"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
              Row
              (
                children: 
                [
                  Text("Observaciones: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["obeservacion_cliente"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
              Text("Pedido", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.redAccent),),
              SizedBox(height: 10,),
              Row
              (
                children: 
                [
                  Text("Plato: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["nombre_platillo"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
              Row
              (
                children: 
                [
                  Text("Importe: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["importe_plato"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
               Row
              (
                children: 
                [
                  Text("Bebida: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["nombre_bebida"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
               Row
              (
                children: 
                [
                  Text("Importe: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["importe_bebida"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 10,),
              Text("Mesero", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.redAccent),),
               Row
              (
                children: 
                [
                  Text("Nombre: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["nombre_mesero"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
               Row
              (
                children: 
                [
                  Text("Apellido 1: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["apellido1_mesero"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
               Row
              (
                children: 
                [
                  Text("Apellido 2: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["apellido1_mesero"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 10,),
               Row
              (
                children: 
                [
                  Text("Mesa: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["mesa_ubicacion"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
               Row
              (
                children: 
                [
                  Text("Numero de comensales: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["numero_comensales"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
               Row
              (
                children: 
                [
                  Text("Apellido 2: ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(doc["fecha_factura"],style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 40,),
            ],
          
        );
      }
    );
  }

  
}