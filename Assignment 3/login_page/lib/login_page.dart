import 'package:flutter/material.dart';
import 'package:login_page/auth_functions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late GlobalKey _formKey;
  late TextEditingController _nameController,
      _passwordController,
      _emailController,
      _businessNameController,
      _phoneController;

  Validator _validator = Validator();
  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController();
    _businessNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    _businessNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Let's Register\nAccount",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Hello user, you have\na greatful journey',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Input(
                    validator: (value) =>
                        _validator.validateGenericFields(value, 'Name'),
                    controller: _nameController,
                    obscureText: false,
                    hintText: 'Name',
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Input(
                      validator: (value) => _validator.validateGenericFields(
                          value, 'Business Name'),
                      controller: _businessNameController,
                      obscureText: false,
                      hintText: 'Business Name',
                      keyboardType: TextInputType.name),
                  const SizedBox(
                    height: 8,
                  ),
                  Input(
                      validator: (value) => _validator.validateGenericFields(
                          value, 'Phone number'),
                      controller: _phoneController,
                      obscureText: false,
                      hintText: 'Phone',
                      keyboardType: TextInputType.phone),
                  const SizedBox(
                    height: 8,
                  ),
                  Input(
                    validator: (email) => _validator.validateEmail(email),
                    controller: _emailController,
                    obscureText: false,
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Input(
                    validator: (password) =>
                        _validator.validatePassword(password),
                    controller: _passwordController,
                    obscureText: true,
                    hintText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: double.infinity,
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Input extends StatefulWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String hintText;
  final TextInputType keyboardType;

  const Input({
    super.key,
    required this.controller,
    required this.obscureText,
    this.validator,
    required this.hintText,
    required this.keyboardType,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      validator: widget.validator,
      onChanged: (value) {
        setState(() {});
      },
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
