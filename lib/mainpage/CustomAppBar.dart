import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SizedBox( 
          width: 100,    
          height: 100,   
          child: IconButton(
            padding: EdgeInsets.zero,  
            icon: ImageIcon(
              AssetImage("assets/apps.png"),
              color: const Color.fromARGB(255, 218, 87, 61),
              size: 40,  
            ),
            onPressed: () {},
          ),
        ),
      ),
      actions: [
        SizedBox(
          height: 50,
          width: 50,
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/%28Aleksandar_Vu%C4%8Di%C4%87%29_Secretary_Pompeo_Hosts_a_Working_Lunch_With_Serbian_President_Vucic_%2848586279546%29_%28cropped%29.jpg/583px-%28Aleksandar_Vu%C4%8Di%C4%87%29_Secretary_Pompeo_Hosts_a_Working_Lunch_With_Serbian_President_Vucic_%2848586279546%29_%28cropped%29.jpg"),
            backgroundColor: Colors.transparent,
          ),
          
    
        ),
        SizedBox(width: 25),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}