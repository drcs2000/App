import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Registro'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTextField('Nome', Icons.person),
              _buildTextField('Sobrenome', Icons.person),
              _buildTextField('E-mail', Icons.email),
              _buildTextField('Confirmação de E-mail', Icons.email),
              _buildTextField('Senha', Icons.lock, isPassword: true),
              _buildTextField('Confirmação de Senha', Icons.lock, isPassword: true),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  bool allFieldsFilled = validateFields();

                  if (allFieldsFilled) {
                    _showSuccessDialog(context);
                  } else {
                    print('Preencha todos os campos.');
                  }
                },
                child: Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, IconData icon, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

 void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Usuário Criado com Sucesso'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

  bool validateFields() {
    return true;
  }
}
