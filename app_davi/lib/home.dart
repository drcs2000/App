// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final List<Photo> photos = [
    Photo(url: 'https://img.freepik.com/fotos-gratis/bela-foto-aerea-de-uma-praia-com-colinas-ao-fundo-ao-por-do-sol_181624-24143.jpg?w=740&t=st=1696872372~exp=1696872972~hmac=f5f090e9f8f8ec176b54b3abc73a98d2fe17efdf9f146a1955b1f6ddf08a0f35', tag: 'photo1'),
    Photo(url: 'https://img.freepik.com/fotos-gratis/3d-rendem-de-uma-arvore-assustador-de-encontro-a-uma-lua_1048-2912.jpg?w=826&t=st=1696872408~exp=1696873008~hmac=d5959c55183b4f69f48a7c559b1990ff2354c01e5e93f7336d90235c6d6d2a51', tag: 'photo2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(photo: photos[index]),
                ),
              );
            },
            child: Hero(
              tag: photos[index].tag,
              child: Image.network(
                photos[index].url,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Photo photo;

  DetailPage({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: Center(
        child: Hero(
          tag: photo.tag,
          child: Image.network(
            photo.url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Photo {
  final String url;
  final String tag;

  Photo({required this.url, required this.tag});
}
