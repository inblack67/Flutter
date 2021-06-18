import 'package:flutter/material.dart';
import 'package:forms/models.user.dart';

class HomeMaterial extends StatefulWidget{
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {

  final _user = User();
  final _formKey = GlobalKey<FormState>(); // unique identifier

  @override
  Widget build(BuildContext ctx){
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(builder: (ctx) => Form(key: _formKey, child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'What is your first name?';
                  }
                    return null;
                },
                onSaved: (val) => setState(() => _user.firstName = val!),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'What is your last name?';
                  }
                    return null;
                },
                onSaved: (val) => setState(() => _user.lastName = val!),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text('Subscribe',),
            ),
            SwitchListTile(value: _user.newsLetter, title: const Text('Monthly Newsletter'), onChanged: (value) => setState(() => _user.newsLetter = value),),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text('Passions',),
            ),
            CheckboxListTile(title: Text('Coding'), value: _user.passions[User.PassionCoding], onChanged: (val) => {
              setState(() => _user.passions[User.PassionCoding] = val!)
            }),
            CheckboxListTile(title: Text('Music'), value: _user.passions[User.PassionMusic], onChanged: (val) => {
              setState(() => _user.passions[User.PassionMusic] = val!)
            }),
            CheckboxListTile(title: Text('Animes'), value: _user.passions[User.PassionAnimes], onChanged: (val) => {
              setState(() => _user.passions[User.PassionAnimes] = val!)
            }),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: ElevatedButton(onPressed: (){
                final form = _formKey.currentState;
                if(form!.validate()){
                  form.save();
                  _user.save();
                }
              }, child: Text('Submit'),),
            ),
          ],
        ),),),
      ),
    );
  }
}
