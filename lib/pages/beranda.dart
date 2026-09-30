// import 'package:flutter/material.dart';

// class Beranda extends StatelessWidget {
//   const Beranda({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // return HalRow();
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("halaman Biodata"),
//           centerTitle: true,
//           backgroundColor: Colors.orange,
//           titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           shadowColor: Colors.black,
//           elevation: 10,
//         ),
//         body: 
//         Container(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.popAndPushNamed(context, "/biodata");
//             },
//             child: const Text("Biodata"),
            
//           ),
          
//         )
        
//         );
//   }
// }


// import 'package:flutter/material.dart';

// class Beranda extends StatelessWidget {
//   const Beranda({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],

//       // ISI HALAMAN
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(25),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "MENU UTAMA",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.orange,
//                   ),
//                 ),

//                 const SizedBox(height: 8),

//                 const Text(
//                   "Silakan pilih menu yang ingin dibuka",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey,
//                   ),
//                 ),

//                 const SizedBox(height: 35),

//                 // BARIS MENU 1
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     MenuCard(
//                       icon: Icons.person,
//                       title: "Biodata",
//                       onTap: () {
//                         Navigator.pushNamed(
//                           context,
//                           "/biodata",
//                         );
//                       },
//                     ),

//                     const SizedBox(width: 15),

//                     MenuCard(
//                       icon: Icons.people,
//                       title: "Data Siswa",
//                       onTap: () {
//                         Navigator.pushNamed(
//                           context,
//                           "/datasiswa",
//                         );
//                       },
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 15),

//                 // BARIS MENU 2
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     MenuCard(
//                       icon: Icons.school,
//                       title: "Data Sekolah",
//                       onTap: () {
//                         Navigator.pushNamed(
//                           context,
//                           "/datasekolah",
//                         );
//                       },
//                     ),

//                     const SizedBox(width: 15),

//                     MenuCard(
//                       icon: Icons.computer,
//                       title: "Konsentrasi",
//                       onTap: () {
//                         Navigator.pushNamed(
//                           context,
//                           "/konsentrasi",
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),

//       // NAVBAR BAGIAN BAWAH
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         currentIndex: 0,

//         onTap: (index) {
//           if (index == 0) {
//             // Home
//           } else if (index == 1) {
//             Navigator.pushNamed(
//               context,
//               "/kontak",
//             );
//           } else if (index == 2) {
//             Navigator.pushNamed(
//               context,
//               "/browser",
//             );
//           } else if (index == 3) {
//             Navigator.pushNamedAndRemoveUntil(
//               context,
//               "/home",
//               (route) => false,
//             );
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
//             icon: Icon(Icons.exit_to_app),
//             label: "Keluar",
//           ),
//         ],
//       ),
//     );
//   }
// }


// // ===============================
// // MENU CARD
// // ===============================

// class MenuCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback onTap;

//   const MenuCard({
//     super.key,
//     required this.icon,
//     required this.title,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(18),

//       child: Container(
//         width: 145,
//         height: 135,

//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(18),

//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 8,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),

//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 55,
//               height: 55,

//               decoration: BoxDecoration(
//                 color: Colors.orange.shade50,
//                 shape: BoxShape.circle,
//               ),

//               child: Icon(
//                 icon,
//                 color: Colors.orange,
//                 size: 30,
//               ),
//             ),

//             const SizedBox(height: 12),

//             Text(
//               title,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // =========================
      // APP BAR
      // =========================
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        title: const Text(
          "Halaman Beranda",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      // =========================
      // BODY
      // =========================
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const SizedBox(height: 30),

                // JUDUL
                const Text(
                  "MENU UTAMA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Silakan pilih menu yang ingin dibuka",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 35),

                // =========================
                // BARIS 1
                // =========================
                Row(
                  children: [
                    Expanded(
                      child: MenuCard(
                        icon: Icons.person,
                        title: "Biodata",
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "/biodata",
                          );
                        },
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: MenuCard(
                        icon: Icons.people,
                        title: "Data Siswa",
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "/datasiswa",
                          );
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // =========================
                // BARIS 2
                // =========================
                Row(
                  children: [
                    Expanded(
                      child: MenuCard(
                        icon: Icons.school,
                        title: "Data Sekolah",
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "/datasekolah",
                          );
                        },
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: MenuCard(
                        icon: Icons.computer,
                        title: "Konsentrasi Keahlian",
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "/konsentrasi",
                          );
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),

      // =========================
      // NAVBAR
      // =========================
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.orange,
        currentIndex: 0,

        onTap: (index) {
          if (index == 0) {
            // Home
          } else if (index == 1) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Menu Kontak belum tersedia",
                ),
              ),
            );
          } else if (index == 2) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Menu Browser belum tersedia",
                ),
              ),
            );
          } else if (index == 3) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              "/home",
              (route) => false,
            );
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
}

// =====================================================
// CARD PERSEGI
// =====================================================

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const MenuCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),

      child: Container(
        height: 150,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ICON
            Container(
              width: 60,
              height: 60,

              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.15),
                borderRadius: BorderRadius.circular(15),
              ),

              child: Icon(
                icon,
                color: Colors.orange,
                size: 32,
              ),
            ),

            const SizedBox(height: 15),

            // NAMA MENU
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
