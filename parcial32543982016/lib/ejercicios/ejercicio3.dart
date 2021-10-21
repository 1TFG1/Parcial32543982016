import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:parcial32543982016/listado.dart';

class ejercicio3 extends StatelessWidget {

  final _nombrec = TextEditingController();
  final _apellidoc = TextEditingController();
  final _obserc = TextEditingController();
  final _nombreplat = TextEditingController();
  final _importeplat = TextEditingController();
  final _nombrebebida = TextEditingController();
  final _importebebida = TextEditingController();
  final _nombremesero = TextEditingController();
  final _apellido1mesero = TextEditingController();
  final _apellido2mesero = TextEditingController();
  final _comensales = TextEditingController();
  final _ubicacionmesa = TextEditingController();
  final _fecha = TextEditingController();
  
  void _saveTask() 
  {
    final inombrec = _nombrec.text;
    final iapellidoc = _apellidoc.text;
    final iobserc = _obserc.text;
    final inombreplat = _nombreplat.text;
    final iimporteplat = _importeplat.text;
    final inombrebebida = _nombrebebida.text;
    final iimportebebida = _importebebida.text;
    final inombremesero = _nombremesero.text;
    final iapellido1mesero = _apellido1mesero.text;
    final iapellido2mesero = _apellido2mesero.text;
    final icomensales = _comensales.text;
    final iubicacionmesa = _ubicacionmesa.text;
    final ifecha = _fecha.text;
    



    FirebaseFirestore.instance.collection("ejercicio3")
    .add(
      {
        "nombre_cliente": inombrec,
        "apellido_cliente": iapellidoc,
        "obeservacion_cliente": iobserc,
        "nombre_platillo": inombreplat,
        "importe_plato": iimporteplat,
        "nombre_bebida": inombrebebida,
        "importe_bebida": iimportebebida,
        "nombre_mesero": inombremesero,
        "apellido1_mesero": iapellido1mesero,
        "apellido2_mesero": iapellido2mesero,
        "numero_comensales": icomensales,
        "mesa_ubicacion": iubicacionmesa,
        "fecha_factura": ifecha  
      });
    _nombrec.clear();
    _apellidoc.clear();
    _obserc.clear();
    _nombreplat.clear();
    _importeplat.clear();
    _nombrebebida.clear();
    _importebebida.clear();
    _nombremesero.clear();
    _apellido1mesero.clear();
    _apellido2mesero.clear();
    _comensales.clear();
    _ubicacionmesa.clear();
    _fecha.clear();
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Ejercicio 3"),
      ),
      body: Padding
      (
        padding: const EdgeInsets.all(8.0),
        child: Column
        (
          children: 
          [
            
            Center
            (
              child: Text("Factura", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Center
            (
              child: Text("informacion del cliente", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _nombrec,
                    decoration: InputDecoration
                    (
                      hintText: "Nombre"
                    ),
                  )
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _apellidoc,
                    decoration: InputDecoration
                    (
                      hintText: "Apellido"
                    ),
                  )
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _obserc,
                    decoration: InputDecoration
                    (
                      hintText: "Observaciones"
                    ),
                  )
            ),
            Center
            (
              child: Text("Informacion de comida", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Center
            (
              child: Text("Platillo", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _nombreplat,
                    decoration: InputDecoration
                    (
                      hintText: "Nombre"
                    ),
                  )
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _importeplat,
                    decoration: InputDecoration
                    (
                      hintText: "Importe"
                    ),
                  )
            ),
            SizedBox(height: 10,),
            Center
            (
              child: Text("Bebida", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _nombrebebida,
                    decoration: InputDecoration
                    (
                      hintText: "Nombre"
                    ),
                  )
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _importebebida,
                    decoration: InputDecoration
                    (
                      hintText: "Importe"
                    ),
                  )
            ),
            SizedBox(height: 10,),
            Center
            (
              child: Text("Mesero", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _nombremesero,
                    decoration: InputDecoration
                    (
                      hintText: "Nombre"
                    ),
                  )
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _apellido1mesero,
                    decoration: InputDecoration
                    (
                      hintText: "Apellido 1"
                    ),
                  )
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _apellido2mesero,
                    decoration: InputDecoration
                    (
                      hintText: "Apellido 2"
                    ),
                  )
            ),
            SizedBox(height: 10,),
            Center
            (
              child: Text("Mesa", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _comensales,
                    decoration: InputDecoration
                    (
                      hintText: "Numero de comensales"
                    ),
                  )
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _ubicacionmesa,
                    decoration: InputDecoration
                    (
                      hintText: "Ubicacion"
                    ),
                  )
            ),
            Expanded
            (
              child: TextField
                  (
                    controller: _fecha,
                    decoration: InputDecoration
                    (
                      hintText: "Fecha"
                    ),
                  )
            ),
            SizedBox(height: 10,),
                FlatButton
                (
                  onPressed: ()
                  {
                    _saveTask();
                  }, 
                  child: Text("Ingresar", style: TextStyle(color: Colors.white ),),
                  color: Colors.blue,
                ),
                FlatButton
                (
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {return listado();}));
                  }, 
                  child: Text("Listado", style: TextStyle(color: Colors.white ),),
                  color: Colors.blue,
                ),
                SizedBox(width: 10,),
            /*StreamBuilder<QuerySnapshot>(
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
            )*/
            
          ],
          
        ),
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
        return Padding
        (
          padding: const EdgeInsets.all(8.0),
          child: Column
          (
            children: 
            [
              Text(doc["nombre_cliente"])
            ],
          ),
        );  
      }
    );
  }
}