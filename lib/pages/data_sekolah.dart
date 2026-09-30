// import 'package:flutter/material.dart';

// class Data_sekolah extends StatelessWidget {
//   const Data_sekolah({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("DATA SEKOLAH"),
//         centerTitle: true,
//         backgroundColor: Colors.orange,
//         titleTextStyle: const TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           shadows: [
//             Shadow(color: Colors.black),
//           ],
//         ),
//         elevation: 10,
//       ),

//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 30),

//             const Center(
//               child: Text(
//                 "Lengkapi Data Sekolah",
//                 style: TextStyle(
//                   color: Colors.orange,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),

//             Container(
//               padding: const EdgeInsets.all(40),
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "NPSN",
//                       hintText: "Masukkan NPSN",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "Nama Sekolah",
//                       hintText: "Masukkan Nama Sekolah",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     maxLines: 3,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "Alamat",
//                       hintText: "Masukkan Alamat Sekolah",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "No Telp",
//                       hintText: "Masukkan Nomor Telepon",
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.orange,
//                           fixedSize: const Size(150, 40),
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(
//                             context,
//                             "/beranda",
//                           );
//                         },
//                         child: const Text(
//                           "Simpan",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),

//                       const SizedBox(width: 10),

//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.grey,
//                           fixedSize: const Size(150, 40),
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(
//                             context,
//                             "/beranda",
//                           );
//                         },
//                         child: const Text(
//                           "Selesai",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
                          
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class Data_sekolah extends StatelessWidget {
//   const Data_sekolah({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("DATA SEKOLAH"),
//         centerTitle: true,
//         backgroundColor: Colors.orange,
//         titleTextStyle: const TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           shadows: [
//             Shadow(color: Colors.black),
//           ],
//         ),
//         elevation: 10,
//       ),

//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 30),

//             const Center(
//               child: Text(
//                 "Lengkapi Data Sekolah",
//                 style: TextStyle(
//                   color: Colors.orange,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),

//             Container(
//               padding: const EdgeInsets.all(40),
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "NPSN",
//                       hintText: "Masukkan NPSN",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "Nama Sekolah",
//                       hintText: "Masukkan Nama Sekolah",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     maxLines: 3,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "Alamat",
//                       hintText: "Masukkan Alamat Sekolah",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: "No Telp",
//                       hintText: "Masukkan Nomor Telepon",
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.orange,
//                           fixedSize: const Size(150, 40),
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(
//                             context,
//                             "/beranda",
//                           );
//                         },
//                         child: const Text(
//                           "Simpan",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),

//                       const SizedBox(width: 10),

//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.grey,
//                           fixedSize: const Size(150, 40),
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(
//                             context,
//                             "/beranda",
//                           );
//                         },
//                         child: const Text(
//                           "Selesai",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),

//       // NAVBAR BAWAH
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         currentIndex: 0,
//         onTap: (index) {
//           if (index == 0) {
//             // Home
//             Navigator.pushNamed(context, "/beranda");
//           } else if (index == 1) {
//             // Kontak
//             Navigator.pushNamed(context, "/kontak");
//           } else if (index == 2) {
//             // Browser
//             Navigator.pushNamed(context, "/browser");
//           } else if (index == 3) {
//             // Kembali
//             Navigator.pop(context);
//           }
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.contact_page),
//             label: "Kontak",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.language),
//             label: "Browser",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.arrow_back),
//             label: "Kembali",
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Data_sekolah extends StatelessWidget {
  const Data_sekolah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        title: const Text(
          "DATA SEKOLAH",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text(
                "Lengkapi Data Sekolah",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),

              const SizedBox(height: 20),

              field("NPSN", "Masukkan NPSN"),
              field("Nama Sekolah", "Masukkan Nama Sekolah"),
              field(
                "Alamat",
                "Masukkan Alamat Sekolah",
                maxLines: 3,
              ),
              field("No Telp", "Masukkan Nomor Telepon"),

              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/beranda");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Simpan"),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/beranda");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Selesai"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.orange,
        currentIndex: 0,

        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, "/beranda");
          } else if (index == 1) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Menu Kontak belum tersedia"),
              ),
            );
          } else if (index == 2) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Menu Browser belum tersedia"),
              ),
            );
          } else if (index == 3) {
            Navigator.pop(context);
          }
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            label: "Kontak",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: "Browser",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: "Kembali",
          ),
        ],
      ),
    );
  }

  Widget field(
    String label,
    String hint, {
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}