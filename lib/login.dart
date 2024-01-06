import 'package:flutter/material.dart';
import 'package:form_validation/widgets/firstpage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final regemail = RegExp(r"^[a-zA-Z0-9_\-\.\S]{4,}[@][a-z]+[\.][a-z]{2,3}$");
  final reg2 = RegExp(r"^[6789]\d{9}$");
  final paswd =RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  final name = RegExp(r'^[A-Za-z]+$');
  final age = RegExp(r"^[0-9]{1,2}$");
  bool _password = true;
  bool _password2 = true;
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 195, 133),
      appBar: AppBar(
        title: const Center(
            child: Text(
          "OCTOPUS",
          style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "third_font"),
        )),
        actions: const [
          Icon(
            Icons.heart_broken,
            color: Colors.amber,
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .15,
                  child: const Center(
                      child: Text(
                    "EXPLORE IT",
                    style: TextStyle(
                        fontFamily: "second_font",
                        color: Color.fromARGB(95, 244, 11, 11),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                TextFormField(
                  controller: myController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter name";
                    } else if (value.length < 3) {
                      return "enter a valid name";
                    } else if (!name.hasMatch(myController.text)) {
                      return "enter a valid name";
                    }
                  },
                  onChanged: (value) {
                    print('output:$value');
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "first name",
                    hintText: "eg:krishna",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 203, 229, 242)),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 8, color: Colors.black87),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 1, 106, 159)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Height20(),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter name";
                    } else if (!name.hasMatch(value)) {
                      return "enter a valid name";
                    }
                  },
                  onChanged: (value) {
                    print('output:$value');
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "last name",
                    hintText: "eg:priya",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 203, 229, 242)),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black87),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 1, 106, 159)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Height20(),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter a valid email";
                    } else if (!regemail.hasMatch(value)) {
                      return "please enter a valid email";
                    }
                  },
                  onChanged: (value) {
                    print('output:$value');
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black87),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 1, 106, 159)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Height20(),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter phone number";
                    } else if (value.length > 10) {
                      return "number must be 10";
                    } else if (!reg2.hasMatch(value)) {
                      return "please enter a valid number";
                    }
                  },
                  onChanged: (value) {
                    print('output:$value');
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "phone number",
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black87),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 1, 106, 159)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Height20(),
                TextFormField(
                  controller: myController3,
                  obscureText: _password,
                  validator: (value) {

                    if (value == null || value.isEmpty) {
                      return "please enter a password";
                    } else if (!paswd.hasMatch(value)) {
                      return 'Password should contain at least one upper case, \n one lower case, one digit, one special character and \n must be 8 characters in length';
                    }
                  },
                  onChanged: (value) {
                    print('output:$value');
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _password = !_password;
                        });
                      },
                      icon: Icon(
                        _password ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    labelText: "password",
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black87),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 1, 106, 159)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Height20(),
                TextFormField(
                  controller: myController2,
                  obscureText: _password2,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter a password";
                    } else if (value != myController3.text) {
                      return "password does't match";
                    } else if (!paswd.hasMatch(value)) {
                      return 'Password should contain at least one upper case, \n one lower case, one digit, one special character and \n must be 8 characters in length';
                    }
                  },
                  onChanged: (value) {
                    print('output:$value');
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _password2 = !_password2;
                        });
                      },
                      icon: Icon(
                          _password2 ? Icons.visibility_off : Icons.visibility),
                    ),
                    labelText: "Re-enter",
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black87),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 1, 106, 159)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Height20(),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter the age ";
                    } else if(int.parse(value)<18){
                      return "age is must be above 18";
                    }
                    
                    else if (!age.hasMatch(value)) {
                      return "please enter a valid age";
                    }
                  },
                  onChanged: (value) {
                    print('output:$value');
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Age",
                    border:OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black87),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 1, 106, 159)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const Height20(),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('successfully submitted'),
                            content: const Text('do you want continue'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              OutlinedButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Firstpage(),
                                    )),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                        print("success");
                      }
                    },
                    child: const Text("Login")),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Height20 extends StatelessWidget {
  const Height20({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}
