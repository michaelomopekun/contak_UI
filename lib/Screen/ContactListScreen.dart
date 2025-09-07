import 'package:contak/Model/contactModel.dart';
import 'package:contak/widgets/contact_appbar.dart';
import 'package:flutter/material.dart';

class Contactlistscreen extends StatefulWidget
{
  final Contact contact;

  Contactlistscreen(this.contact);

  @override
  _contactlistscreenstate createState() => _contactlistscreenstate();

}

class _contactlistscreenstate extends State<Contactlistscreen> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: const PreferredSize
      (
        preferredSize: Size.fromHeight(kToolbarHeight), 
        child: ContactAppBar()
      ),

      body: const Center
      (
        // child: Te,
      ),
    );
  }
  
}