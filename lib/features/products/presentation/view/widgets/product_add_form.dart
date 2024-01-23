import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/core/app_colors.dart';
import 'package:flutter_web_example/core/app_strings.dart';
import 'package:flutter_web_example/core/app_text_styles.dart';
import 'package:flutter_web_example/core/widgets/app_button.dart';
import 'package:flutter_web_example/core/widgets/app_text_field.dart';
import 'package:flutter_web_example/features/products/domain/domain/product_entity/product_entity.dart';
import 'package:flutter_web_example/features/products/presentation/product_view_model/product_view_model_bloc.dart';

class ProductAddForm extends StatefulWidget {
  const ProductAddForm({super.key});

  @override
  State<ProductAddForm> createState() => _ProductAddFormState();
}

class _ProductAddFormState extends State<ProductAddForm> {
  late final TextEditingController txtNameController;
  late final TextEditingController txtDescriptionController;
  late final TextEditingController txtPriceController;
  late final TextEditingController txtDiscountPercentageController;
  late final TextEditingController txtRatingController;
  late final TextEditingController txtStockController;
  late final TextEditingController txtBrandController;
  late final TextEditingController txtCategoryController;

  @override
  void initState() {
    super.initState();
    txtNameController = TextEditingController();
    txtDescriptionController = TextEditingController();
    txtPriceController = TextEditingController();
    txtDiscountPercentageController = TextEditingController();
    txtRatingController = TextEditingController();
    txtStockController = TextEditingController();
    txtBrandController = TextEditingController();
    txtCategoryController = TextEditingController();
  }

  Uint8List? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.c475BE8withOpacity,
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                final picker = FilePickerWeb.platform;
                final data = await picker.pickFiles(type: FileType.image);
                if (data != null) {
                  image = data.files[0].bytes;
                }
                setState(() {});
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(border: Border.all(color: AppColors.cF3F3F3), borderRadius: BorderRadius.circular(8)),
                height: 200,
                width: 200,
                child: image == null
                    ? Center(
                        child: Text(
                          'Add Image',
                          style: AppTextStyles.latoW500(),
                        ),
                      )
                    : Image.memory(
                        image!,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            AppTextField(controller: txtNameController, hintText: AppStrings.name),
            AppTextField(controller: txtDescriptionController, hintText: AppStrings.description),
            AppTextField(controller: txtPriceController, hintText: AppStrings.price),
            AppTextField(controller: txtDiscountPercentageController, hintText: AppStrings.discountPercentage),
            AppTextField(controller: txtRatingController, hintText: AppStrings.rating),
            AppTextField(controller: txtStockController, hintText: AppStrings.stock),
            AppTextField(controller: txtBrandController, hintText: AppStrings.brand),
            AppTextField(controller: txtCategoryController, hintText: AppStrings.category),
            AppButton(
                text: AppStrings.addProduct,
                onTap: () {
                  context.read<ProductViewModelBloc>().add(ProductViewModelCreateNewProductTap(
                        context: context,
                        productEntity: ProductEntity(
                          title: txtNameController.text.trim(),
                          description: txtDescriptionController.text.trim(),
                          price: int.tryParse(txtPriceController.text),
                          discountPercentage: double.tryParse(txtDiscountPercentageController.text),
                          rating: double.tryParse(txtRatingController.text),
                          stock: int.tryParse(txtStockController.text),
                          brand: txtBrandController.text,
                          category: txtCategoryController.text,
                          thumbnail: image,
                        ),
                      ));

                  image = null;
                })
          ],
        ),
      ),
    );
  }
}
