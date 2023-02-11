import 'package:flutter/cupertino.dart';
import 'package:tenders/constants/error_handling.dart';
import 'package:tenders/constants/global_variables.dart';
import 'package:tenders/constants/utils.dart';
import 'package:tenders/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
    //signup  
    void signUpUser ({
        required BuildContext context,
        required String email,
        required String password,
        required String name,
    }) async {
        try {
          User user = User(id: '', 
          name: name, 
          email: email, 
          password: password, 
          address: '', 
          type: '', 
          token: '',
          );

          http.Response res = await http.post(
            Uri.parse('$uri/api/signup'), 
            body:user.toJson(),
            headers: <String, String> {
              'Content-type': 'application/json; charset=UTF-8',
            },
          );
          
          httpErrorHandle(response: res, context: context, onSuccess: (){
            showSnackBar(context, 'Account Created Successfully! Log in with same details.',
            );
          },
          );
        } catch(e){
          showSnackBar(context, e.toString(),
          );
        }
    }
}