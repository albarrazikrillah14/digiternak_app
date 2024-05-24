import 'package:flutter/material.dart';

class PrimaryTextField extends StatefulWidget {
  final String placeHolder;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Icon? icon;
  final Function()? iconTapped;

  const PrimaryTextField({
    super.key,
    required this.placeHolder,
    this.controller,
    this.validator,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.icon,
    this.iconTapped,
  });

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          controller: widget.controller,
          obscureText: isClicked && widget.isPassword,
          decoration: InputDecoration(
            labelText: widget.placeHolder,
            hintStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.bold),
            labelStyle: Theme.of(context).textTheme.bodySmall,
            suffixIcon: widget.isPassword
                ? InkWell(
                    onTap: () {
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: isClicked
                        ? const Icon(Icons.remove_red_eye)
                        : const Icon(Icons.close),
                  )
                : widget.icon != null
                    ? InkWell(
                        onTap: widget.iconTapped,
                        child: widget.icon,
                      )
                    : null,
          ),
          validator: widget.validator,
          keyboardType: widget.keyboardType,
        ),
      ],
    );
  }
}
