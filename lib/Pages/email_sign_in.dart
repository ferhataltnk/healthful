import 'package:healthful/KullaniciIslem/Auth.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/provider.dart';

enum FormStatus { SignIn, Register, reset } // class içinde enum tanımlanmaz

class EmailSignInPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<EmailSignInPage> {
  FormStatus _formStatus = FormStatus.SignIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _formStatus == FormStatus.SignIn
            ? buildSignInForm()
            : _formStatus == FormStatus.Register
            ? buildRegisterForm()
            : buildResetForm(),
      ),
    );
  }

  Widget buildSignInForm() {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    final _SignInFormKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _SignInFormKey, //Formlarda validation işlemi yapacak nesne
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Giriş Yapınız.'),
            TextFormField(
              controller: _emailController,
              validator: (val) {
                if (!EmailValidator.validate(val)) {
                  return 'Geçerli adres giriniz';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'E-mail giriniz',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: _passwordController,
              validator: (val) {
                if (val.length < 6) {
                  return 'Şifre 6dan uzun olmalı';
                } else {
                  return null;
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Şifre Giriniz',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_SignInFormKey.currentState.validate()) {
                    final user = await Provider.of<Auth>(context, listen: false)
                        .signInWithEmailAndPassword(
                        _emailController.text, _passwordController.text);
                    if (!user.emailVerified) {
                      await _showMyDialog();
                      Provider.of<Auth>(context, listen: false).signOut();
                    }
                    Navigator.pop(context);
                  }
                },
                child: Text('Giriş')),
            TextButton(
                onPressed: () {
                  setState(() {
                    _formStatus = FormStatus.Register;
                  });
                },
                child: Text('Yeni Kayıt')),
            TextButton(
                onPressed: () {
                  setState(() {
                    _formStatus = FormStatus.reset;
                  });
                },
                child: Text('Şifrenizi mi Unuttunuz?')),
          ],
        ),
      ),
    );
  }

  Widget buildResetForm() {
    TextEditingController _emailController = TextEditingController();
    final _ResetFormKey = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _ResetFormKey, //Formlarda validation işlemi yapacak nesne
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Şifre Sıfırlama.'),
            TextFormField(
              controller: _emailController,
              validator: (val) {
                if (!EmailValidator.validate(val)) {
                  return 'Geçerli adres giriniz';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'E-mail giriniz',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_ResetFormKey.currentState.validate()) {
                    await Provider.of<Auth>(context,listen:false).sendPasswordResetEmail(_emailController.text);
                    await _showMyDialog();
                    Navigator.pop(context);
                  }
                },
                child: Text('Gönder')),
          ],
        ),
      ),
    );
  }

  Widget buildRegisterForm() {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _passwordConfirmController = TextEditingController();
    final _registerFormKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _registerFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Kayıt olunuz.'),
            TextFormField(
              controller: _emailController,
              validator: (val) {
                if (!EmailValidator.validate(val)) {
                  return 'Geçerli adres giriniz';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'E-mail giriniz',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            TextFormField(
              controller: _passwordController,
              validator: (val) {
                if (val.length < 6) {
                  return 'Şifre 6dan uzun olmalı';
                } else {
                  return null;
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Şifre Giriniz',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            TextFormField(
              validator: (val) {
                if (val != _passwordController.text) {
                  return 'Şifre eşleşmiyor';
                } else {
                  return null;
                }
              },
              controller: _passwordConfirmController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Onay',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_registerFormKey.currentState.validate()) {
                    final user = await Provider.of<Auth>(context, listen: false)
                        .createUserWithEmailAndPassword(
                        _emailController.text, _passwordController.text);
                    print(user.uid);

                    if (!user.emailVerified) {
                      await user.sendEmailVerification();
                    }
                    await _showMyDialog();
                   await Provider.of<Auth>(context, listen: false).signOut();
                    setState(() {
                      _formStatus = FormStatus.SignIn;
                    });
                  }
                },
                child: Text('Kayıt')),
            TextButton(
                onPressed: () {
                  setState(() {
                    _formStatus = FormStatus.SignIn;
                  });
                },
                child: Text('Zaten kayıtlı mısınız?')),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('ONAY GEREKİYOR'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('E mail onaylayınız'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
