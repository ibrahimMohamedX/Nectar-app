import 'package:flutter/material.dart';
import 'package:nectar_app/core/consts.dart';

class CustomField extends StatefulWidget {
  const CustomField({
    super.key,
    this.onChange,
    required this.label,
    required this.hintText,
    this.afterIcon,
    this.beforIcon,
    this.ispass = false,
  });
  final Function(String value)? onChange;
  final String label;
  final String hintText;
  final Widget? afterIcon;
  final Widget? beforIcon;
  final bool ispass;

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  bool ispass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: StyleData.fieldtxt,
      onChanged: widget.onChange,
      obscureText: widget.ispass == true ? ispass : false,
      decoration: InputDecoration(
        suffix: SizedBox(
          height: 20,
          width: 20,
          child: InkWell(
            onTap: () {
              if (widget.ispass == true) {
                ispass == true ? ispass = false : ispass = true;
                setState(() {});
              }
            },
            child: widget.afterIcon,
          ),
        ),
        suffixStyle: TextStyle(height: 20),
        prefix: widget.beforIcon,
        label: Text(widget.label, style: StyleData.labeltxt),
        hintText: widget.hintText,
        border: UnderlineInputBorder(),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorData.basicColor),
        ),
      ),
    );
  }
}
