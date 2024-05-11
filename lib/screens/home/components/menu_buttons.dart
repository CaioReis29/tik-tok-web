import 'package:flutter/material.dart';

class MenuButtons extends StatelessWidget {

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? iconColor;
  final Color? labelColor;

  const MenuButtons({ super.key, required this.icon, required this.label, required this.onTap, this.iconColor, this.labelColor });

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.only(left: 5),
         child: SizedBox(
          height: 40,
          width: MediaQuery.sizeOf(context).width * 0.9,
           child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.transparent)),
            ),
            onPressed: onTap,
            child: Row(
              children: [
                Icon(icon, color: iconColor ?? Colors.black, size: 30),
                const SizedBox(width: 10),
                Text(label, style: TextStyle(color: iconColor ?? Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            ),
         ),
       );
  }
}