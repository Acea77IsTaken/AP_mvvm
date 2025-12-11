import 'package:ap_mvvm/viewmodels/pelicuas.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PeliculaView extends StatelessWidget
{
  const PeliculaView({super.key});
  @override
  Widget build(BuildContext context) {
    final peliculaViewmodel = Provider.of<PelicuasViewmodel>(context);
    return Scaffold(
        appBar: AppBar(title:Text("mis peliculas MVVM"),),
        body: peliculaViewmodel.cargando? Center(child: CircularProgressIndicator(),):
        ListView.builder(
          itemBuilder: (context, index){
            final pelicula = peliculaViewmodel.peliculas[index];
            return ListTile(title: Text("${pelicula.titulo} (${pelicula.anio})"),
              subtitle: Text("${pelicula.director} - ${pelicula.genero}"),
            );
          },
          itemCount: peliculaViewmodel.peliculas.length,
        )
        ,
        floatingActionButton: FloatingActionButton(onPressed: (){
          peliculaViewmodel.fetchPeliculas();
        },
            child: Icon(Icons.refresh),
        ),
    );
  }
}