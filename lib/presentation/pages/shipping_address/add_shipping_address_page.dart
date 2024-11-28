import 'package:country_picker_plus/country_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/core/widgets/app_text_field.dart';
import 'package:furniture_shop_app/presentation/controllers/shipping_address/add_shipping_address_controller.dart';
import 'package:get/get.dart';
import '../../../core/theme/app_text_theme.dart';

class AddShippingAddressPage extends StatelessWidget {
  AddShippingAddressPage({super.key});

  final AddShippingAddressController _controller =
      AddShippingAddressController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Add shipping address",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppTextField(
            title: "Full name",
            hint: "Ex: Bruno Pham",
            value: _controller.fullName.value,
            onChanged: _controller.onChangFullName,
          ),
          AppTextField(
            title: "Address",
            hint: "Ex: 25 Robert Latouche Street",
            value: _controller.address.value,
            onChanged: _controller.onChangAddress,
          ),
          AppTextField(
            title: "Zipcode (Postal Code)",
            hint: "Ex: 233456",
            maxLength: 6,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            value: _controller.zipCode.value,
            onChanged: _controller.onChangZipCode,
          ),
          CountryPickerPlus(
            isRequired: true,
            countryLabel: "Country",
            countrySearchHintText: "Search Country",
            countryHintText: "Tap to Select Country",
            stateLabel: "City",
            stateHintText: "Tap to Select City",
            cityLabel: "District",
            cityHintText: "Tap to Select District",
            countryInitialValue: _controller.country.value,
            stateInitialValue: _controller.city.value,
            cityInitialValue: _controller.district.value,
            decoration: CPPFDecoration(
              textStyle: kBlackNunitoSmallTitleStyle.copyWith(
                fontSize: 18,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              suffixIcon: Icons.keyboard_arrow_down_sharp,
              innerColor: Colors.transparent,
              hintStyle: kGreyNunitoSmallTitleStyle.copyWith(
                fontSize: 18,
              ),
              labelStyle: kGreyNunitoSmallTitleStyle.copyWith(
                fontSize: 14,
              ),
            ),
            onCountrySelected: _controller.onChangCountry,
            onStateSelected: _controller.onChangCity,
            onCitySelected: _controller.onChangDistrict,
          ),
          const Spacer(),
          AppContainedTextButton(
            onPressed: () => _controller.onAddNewAddress(),
            text: "SAVE ADDRESS",
          ),
        ],
      ).defaultScreenPadding(),
    );
  }
}
