import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_app/domain/entities/user.dart' as model;
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthMethods {
  //instacian de la clase auth de firebase
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,

    //Una lista de longitud fija de enteros sin signo de 8 bits.
  }) async {
    String res = "Un error ha ocurrido";
    try {
      print('ma');
      //verifica que ningun campo este vacio
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        //registro el usuario
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        //user.uid es el identificador del usuario.
        //ponemos ! en user porque este puede ser nulo
        print(cred.user!.uid);

        model.User user = model.User(
          username: username,
          uid: cred.user!.uid,
          email: email,
          password: password,
        );

        //añadir usuario a la base de datos
        await _firestore.collection('usuarios').doc(cred.user!.uid).set(
              user.toJson(),
            );
        res = 'Exito';
      }
    } on FirebaseAuthException catch (err) {
      //res = err.toString();
      if (err.code == 'invalid-email') {
        res = 'Correo no valido';
      } else if (err.code == 'weak-password') {
        res = 'La contraseña debe tener al menos 6 caracteres';
      }
    }
    return res;
  }
}
