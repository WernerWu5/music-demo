import 'package:auto_route/auto_route.dart';
import 'package:distribution_mall_flutter/assets.dart';
import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/router/router.gr.dart';
import 'package:distribution_mall_flutter/utils/common_third.dart';
import 'package:distribution_mall_flutter/utils/common_widget.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

final _formKey = GlobalKey<FormBuilderState>();

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _Login();
}

class _Login extends ConsumerState<LoginPage> {
  final FocusNode _focusNode = FocusNode();
  bool isLoading = false;
  bool showError = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      KeyboardVisibilityTesting.setVisibilityForTesting(true);
      _focusNode.requestFocus();
    });
  }

  SliverWoltModalSheetPage page1(BuildContext modalSheetContext,
      TextTheme textTheme, BuildContext context) {
    return WoltModalSheetPage(
      hasSabGradient: false,
      isTopBarLayerAlwaysVisible: true,
      backgroundColor: Colors.white,
      sabGradientColor: Colors.white,
      surfaceTintColor: Colors.white,
      navBarHeight: 50,
      pageTitle: const Text("免责声明"),
      trailingNavBarWidget: IconButton(
        padding: const EdgeInsets.only(right: 5),
        icon: const Icon(Icons.close),
        onPressed: Navigator.of(modalSheetContext).pop,
      ),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
        child: SingleChildScrollView(
          child: Html(
            data: """
<div>
  1. **应用用途**  
   本应用（以下简称“应用”）由[开发者名称或公司名称]开发，仅供个人学习、研究及非商业用途使用。任何用户不得将本应用用于商业目的，包括但不限于销售、租赁、广告、盈利性活动等。
</div>

<div>
  2. **禁止商用**  
   本应用明确禁止任何形式的商业使用。任何个人或组织未经开发者书面许可，不得将本应用用于商业用途。若用户违反本条款，开发者不承担任何责任。
</div>

<div>
  3. **开发者免责**  
   开发者不对因用户使用本应用而产生的任何直接或间接损失负责，包括但不限于数据丢失、财产损失、利润损失等。用户应自行承担使用本应用的风险。
</div>

<div>
  4. **第三方责任**  
   若用户将本应用用于商业用途或违反相关法律法规，由此产生的任何法律责任均由用户自行承担，与开发者无关。
</div>

<div>
  5. **法律适用**  
   本声明的解释与适用均依据中华人民共和国法律。若用户因使用本应用与开发者产生争议，双方应友好协商解决；协商不成的，任何一方均可向开发者所在地有管辖权的人民法院提起诉讼。
</div>


<div>
  6. **声明修改**  
   开发者保留随时修改本免责声明的权利。用户应定期查看本声明，以确保了解最新内容。
</div>
""",
          ),
        ),
      ),
    );
  }

  openModal(BuildContext context) {
    WoltModalSheet.show<void>(
      context: context,
      pageListBuilder: (modalSheetContext) {
        final textTheme = Theme.of(context).textTheme;
        return [
          page1(modalSheetContext, textTheme, context),
        ];
      },
      modalTypeBuilder: (context) {
        return WoltModalType.dialog;
      },
      onModalDismissedWithBarrierTap: () {
        Navigator.of(context).pop();
      },
      maxDialogWidth: 302.2,
      minDialogWidth: 302.2,
      minPageHeight: 0.8,
      maxPageHeight: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final arModal = ref.watch(articleProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(''),
        titleSpacing: 0,
        flexibleSpace: Container(
          color: const Color.fromRGBO(245, 246, 248, 0.9),
        ),
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: EdgeConstant.edge218),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(245, 246, 248, 0.9),
              Colors.white
              // Colors.black
              // Colors.black,
              // Colors.black,
            ],
                stops: [
              0,
              0.2
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    Assets.assets_icons_logo_png,
                    width: 80,
                    height: 80,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FormBuilder(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FormBuilderTextField(
                        name: 'code',
                        // focusNode: _focusNode,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(errorText: '请输入验证码'),
                        ]),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: const InputDecoration(
                          hintText: '请输入验证码',
                          constraints:
                              BoxConstraints(minHeight: 43.4, maxHeight: 70),
                          contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        ),
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                          fontSize: FontConstant.f16, // 设置字体大小为20
                        ),
                        onChanged: (str) {
                          setState(() {
                            showError = str != '2025ssn';
                          });
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36.4,
                ),
                CommonBtnWidget.generalBtn(
                    isLoading: isLoading,
                    showError
                        ? () {
                            if (_formKey.currentState?.validate() != true) {
                              return;
                            }
                            _formKey.currentState?.save();
                            Map<String, dynamic>? map =
                                _formKey.currentState?.value;
                            if (map == null) {
                              EPToast.showToast("请输入验证码");
                              return;
                            }
                            EPstorage.userInfo.put(
                                UserInfoBoxKey.code, map['code'] as String);
                            appRouter.replace(const HomeRoute());
                          }
                        : null,
                    width: double.infinity,
                    height: 43.7,
                    radius: 7.3,
                    text: '验证',
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: FontConstant.f16_4,
                        fontWeight: FontWeight.bold,
                        letterSpacing: TextConstant.letterSpacing)),
              ],
            ),
            const Expanded(child: SizedBox.shrink()),
            DefaultTextStyle(
                style: const TextStyle(
                    fontSize: FontConstant.f127,
                    color: Color.fromRGBO(134, 141, 150, 1),
                    letterSpacing: TextConstant.letterSpacing),
                child: GestureDetector(
                  onTap: () => openModal(context),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('登录即代表您已同意 '),
                      Text('用户协议',
                          style:
                              TextStyle(decoration: TextDecoration.underline))
                    ],
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 41,
            )
          ],
        ),
      ),
    );
  }
}
