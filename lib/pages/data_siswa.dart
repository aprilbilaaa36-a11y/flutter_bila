// import 'package:flutter/material.dart';

// class DataSiswa extends StatelessWidget {
//   const DataSiswa({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text("DATA SISWA "),
//           centerTitle: true,
//           backgroundColor: Colors.orange,
//           titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           shadowColor: Colors.black,
//           elevation: 10),
//       body: Column(
//         children: [
//           const SizedBox(height: 30),
//           Container(
//             padding: const EdgeInsets.all(40),
//             child: Column(
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
//                     labelText: "Nis",
//                     hintText: "Masukan Nis",
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
//                     labelText: "Nama",
//                     hintText: "Masukan Nama",
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
//                     labelText: "Tempat Lahir",
//                     hintText: "Isikan Tempat Lahir ",
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
//                     labelText: "Jenis Kelamin",
//                     hintText: "Masukan Jenis Kelamin",
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
//                     labelText: "No Telp",
//                     hintText: "Masukan No Telp",
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
//                     labelText: "Konsentrasi Keahlian",
//                     hintText: "Masukan Konsentrasi Keahlian",
//                   ),
//                 ),
//                                const SizedBox(height: 10),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
//                     labelText: "Kelas",
//                     hintText: "Masukan Kelas",
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
//                     labelText: "Alamat",
//                     hintText: "Masukan Alamat Lengkap",
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue, fixedSize: const Size(150, 40)),
//                 onPressed: () {
//                   Navigator.pushNamed(context, "/home");
//                 },
//                 child: const Text(
//                   "Registerasi",
//                   style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue, fixedSize: const Size(150, 40)),
//                 onPressed: () {
//                   Navigator.pushNamed(context, "/home");
//                 },
//                 child: const Text(
//                   "Selesai",
//                   style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class DataSiswa extends StatelessWidget {
//   const DataSiswa({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("DATA SISWA"),
//         centerTitle: true,
//         backgroundColor: Colors.orange,
//         titleTextStyle: const TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//         ),
//         shadowColor: Colors.black,
//         elevation: 10,
//       ),

//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 30),

//             Container(
//               padding: const EdgeInsets.all(40),
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(),
//                       ),
//                       labelText: "Nis",
//                       hintText: "Masukan Nis",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(),
//                       ),
//                       labelText: "Nama",
//                       hintText: "Masukan Nama",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(),
//                       ),
//                       labelText: "Tempat Lahir",
//                       hintText: "Isikan Tempat Lahir",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(),
//                       ),
//                       labelText: "Jenis Kelamin",
//                       hintText: "Masukan Jenis Kelamin",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(),
//                       ),
//                       labelText: "No Telp",
//                       hintText: "Masukan No Telp",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(),
//                       ),
//                       labelText: "Konsentrasi Keahlian",
//                       hintText: "Masukan Konsentrasi Keahlian",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(),
//                       ),
//                       labelText: "Kelas",
//                       hintText: "Masukan Kelas",
//                     ),
//                   ),

//                   const SizedBox(height: 10),

//                   TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(),
//                       ),
//                       labelText: "Alamat",
//                       hintText: "Masukan Alamat Lengkap",
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blue,
//                           fixedSize: const Size(150, 40),
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(context, "/home");
//                         },
//                         child: const Text(
//                           "Registerasi",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),

//                       const SizedBox(width: 10),

//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blue,
//                           fixedSize: const Size(150, 40),
//                         ),
//                         onPressed: () {
//                           Navigator.pushNamed(context, "/home");
//                         },
//                         child: const Text(
//                           "Selesai",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
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

class DataSiswa extends StatelessWidget {
  const DataSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        title: const Text(
          "DATA SISWA",
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
                "Lengkapi Data Siswa",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),

              const SizedBox(height: 20),

              field("NIS", "Masukkan NIS"),
              field("Nama", "Masukkan Nama"),
              field("Tempat Lahir", "Masukkan Tempat Lahir"),
              field("Jenis Kelamin", "Masukkan Jenis Kelamin"),
              field("No Telp", "Masukkan Nomor Telepon"),
              field(
                "Konsentrasi Keahlian",
                "Masukkan Konsentrasi Keahlian",
              ),
              field("Kelas", "Masukkan Kelas"),
              field("Alamat", "Masukkan Alamat"),

              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Registrasi"),
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

  Widget field(String label, String hint) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
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