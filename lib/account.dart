import 'package:flutter/material.dart';
import 'LoginPageState.dart';
import 'mainmen.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black,Colors.grey]
            )),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children: [
                    IconButton(icon: const Icon(
                        Icons.arrow_back_ios,color:Colors.black38,),
                        onPressed: () =>
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const mainmen()),)),
                  ],
                ),
                Column(
                  children: const [Icon(Icons.account_circle_outlined,size: 50,color:Colors.white,)],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      child: Text("Metin Ağan",style: TextStyle(fontSize: 40,color: Colors.white),),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Text("_____________________________________________________________",style: TextStyle(color: Colors.white),),
            const SizedBox(height: 70),
            Row(
              children: [
                Column(
                  children:const
                  [Text("   Hesap Bilgilerim",style: TextStyle(fontSize: 20,color: Colors.white),)],
                )
              ],
            ),
            const SizedBox(height: 10),
            Text("_____________________________________________________________",style: TextStyle(color: Colors.white),),
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children:const
                  [Text("   İndirim Kuponlarım",style: TextStyle(fontSize: 20,color: Colors.white),)],
                )
              ],

            ),
            const SizedBox(height: 10),
            Text("_____________________________________________________________",style: TextStyle(color: Colors.white),),
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children:const
                  [Text("   Siparişlerim",style: TextStyle(fontSize: 20,color: Colors.white),)],
                )
              ],

            ),
            const SizedBox(height: 10),
            Text("_____________________________________________________________",style: TextStyle(color: Colors.white),),
            const SizedBox(height: 15),
            Row(
              children: [
                Column(
                  children:const
                  [Text("   Şifremi Değiştir",style: TextStyle(fontSize: 20,color: Colors.white),)],
                )
              ],
            ),
            const SizedBox(height: 10),
            Text("_____________________________________________________________",style: TextStyle(color: Colors.white),),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: const Text("Çıkış Yap",style: TextStyle(fontSize: 22),),
                  onPressed: () =>
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=>const LoginPage()),),
                ),
              ],
            ),
            const SizedBox(height: 140),

            //NavBar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(icon: const Icon(
                    Icons.home_outlined,color: Colors.white,),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const mainmen()),)
                ),
                IconButton(icon: const Icon(
                    Icons.search,color: Colors.white),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),)),
                IconButton(icon: const Icon(
                    Icons.shopping_cart_outlined,color: Colors.white),
                    onPressed: () =>
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),)),
                Container(decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey),
                  child: IconButton(icon: const Icon(
                      Icons.account_circle_outlined),
                      onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const account()),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
