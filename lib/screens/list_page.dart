import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'detail_page.dart';
import 'package:flutter_examen/routes.dart';

 const List<String> _items = [
    'Tarea A',
    'Tarea B',
    'Tarea C',
  ];

class ListPage extends StatelessWidget {
  const ListPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listado de Tareas')),
      body: _items.isEmpty
          ? const Center(
              child: Text(
                'No hay tareas disponibles',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.separated(
              itemCount: _items.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text('$index')),
                  title: Text('Elemento $index: ${_items[index]}'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    context.push(Routes.detailPath(index));
                  },
                );
              },
            ),
    );
  }
  
}
