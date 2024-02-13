import 'package:flutter/material.dart';
/// Flutter code sample for [DataTable].


class DataTableExampleApp extends StatelessWidget {
  const DataTableExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DataTable Sample')),
        body: const DataTableExample(),
      ),
    );
  }
}

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return DataTable(
  //     columns: const <DataColumn>[
  //       DataColumn(
  //         label: Expanded(
  //           child: Text(
  //             'Name',
  //             style: TextStyle(fontStyle: FontStyle.italic),
  //           ),
  //         ),
  //       ),
  //       DataColumn(
  //         label: Expanded(
  //           child: Text(
  //             'Phone',
  //             style: TextStyle(fontStyle: FontStyle.italic),
  //           ),
  //         ),
  //       ),
  //       DataColumn(
  //         label: Expanded(
  //           child: Text(
  //             'Check mark',
  //             style: TextStyle(fontStyle: FontStyle.italic),
  //           ),
  //         ),
  //       ),
  //     ],
  //     rows: const <DataRow>[
  //       DataRow(
  //         cells: <DataCell>[
  //           DataCell(Text('Danyar')),
  //           DataCell(Text('0224-15-78-78')),
  //           DataCell(Text('Student')),
  //         ],
  //       ),
  //       DataRow(
  //         cells: <DataCell>[
  //           DataCell(Text('Danyar')),
  //           DataCell(Text('0224-15-78-78')),
  //           DataCell(Text('Professor')),
  //         ],
  //       ),
  //       DataRow(
  //         cells: <DataCell>[
  //           DataCell(Text('Danyar')),
  //           DataCell(Text('0224-15-78-78')),
  //           DataCell(Text('Associate Professor')),
  //         ],
  //       ),
  //     ],
  //   );
  // }

    @override
  Widget build(BuildContext context) {
    return Column(children: []);
  }
}
