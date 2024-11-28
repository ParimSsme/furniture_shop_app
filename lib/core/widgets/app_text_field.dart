import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shop_app/core/theme/app_colors.dart';
import '../theme/app_text_theme.dart';

class AppTextField extends StatefulWidget {
  final String title;
  final String hint;
  final Function(String val) onChanged;
  final String? value;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  const AppTextField({
    super.key,
    required this.title,
    required this.hint,
    required this.onChanged,
    this.value,
    this.maxLength,
    this.inputFormatters,
    this.obscureText = false,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode _focusNode;
  late TextEditingController _textEditingController;
  bool isFilled = false;
  @override
  void initState() {
    _textEditingController = TextEditingController(text: widget.value);
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          isFilled = true;
        });
      } else if (_textEditingController.text == "") {
        setState(() {
          isFilled = false;
        });
      }
    });
    if (_textEditingController.text != "") {
      isFilled = true;
    }
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: (isFilled)
            ? AppColors.textFiledEnabledFilledColor
            : AppColors.textFiledDisabledFilledColor,
        border: (isFilled)
            ? Border.all(
          color: AppColors.textFiledEnabledBorderColor,
        )
            : const Border(),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: kGreyNunitoSmallTitleStyle.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 6),
          TextFormField(
            controller: _textEditingController,
            focusNode: _focusNode,
            onChanged: widget.onChanged,
            onFieldSubmitted: (val) {
              if (val == '') {
                setState(() {
                  isFilled = false;
                });
              }
            },
            obscureText: widget.obscureText,
            maxLength: widget.maxLength,
            inputFormatters: widget.inputFormatters,
            style: kBlackNunitoSmallTitleStyle.copyWith(
              fontSize: 18,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              isCollapsed: true,
              hintText: widget.hint,
              hintStyle: kGreyNunitoSmallTitleStyle.copyWith(
                fontSize: 18,
              ),
              counterText: "",
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
