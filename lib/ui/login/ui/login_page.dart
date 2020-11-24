import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_example/ui/cart/auth_cubit.dart';
import 'package:navigator_example/ui/common/paltform_scaffold.dart';
import 'package:navigator_example/ui/common/platform_page.dart';

class LoginPage extends PlatformPage {
  LoginPage() : super(LoginWidget(ValueKey("/login")), "/login");
}

class LoginWidget extends StatelessWidget {
  LoginWidget(Key key) : super(key: key);
  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      cupertinoNavigationBar: CupertinoNavigationBar(
        middle: Text("Login"),
      ),
      materialAppBar: AppBar(
        title: Text("Login"),
      ),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Card(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Login Now"),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(labelText: "Name"),
                      validator: (value) =>
                          value == null ? "Please enter your name" : null,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.blueGrey,
                        shape: StadiumBorder(),
                        child: Text("Submit"),
                        onPressed: () {
                          var authCubit = BlocProvider.of<AuthCubit>(context);
                          authCubit.login(_nameController.text);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
