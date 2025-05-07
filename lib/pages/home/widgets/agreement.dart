import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/router/route_utils.dart';
import 'package:distribution_mall_flutter/utils/common_widget.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 左右选择的dialog
class Agreement extends ConsumerWidget {
  final String? leftText;
  final String? rightText;

  const Agreement({super.key, this.leftText, this.rightText});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    EPstorage.deviceInfo.get(DeviceInfoBoxKey.patchNumber);
    return Dialog(
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints(minHeight: 500),
            padding: const EdgeInsets.symmetric(
                horizontal: EdgeConstant.edge218,
                vertical: EdgeConstant.edge146),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '免责声明',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(29, 27, 32, 1)),
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: EdgeConstant.edge146, bottom: EdgeConstant.edge17),
                  constraints: const BoxConstraints(maxHeight: 500),
                  child: SingleChildScrollView(
                    child: Html(
                      data: """
<div>
  1. **应用用途**  
   本应用（以下简称“应用”），仅供个人学习、研究及非商业用途使用。任何用户不得将本应用用于商业目的，包括但不限于销售、租赁、广告、盈利性活动等。
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
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  height: 40,
                  child: Row(
                    children: [
                      CommonBtnWidget.generalBtn(
                        () {
                          // ref.read(homeServiceProvider).cancel();
                          // RouteUtils.back();
                          SystemNavigator.pop();
                        },
                        border: Border.all(color: Colors.black12, width: 0.9),
                        color: Colors.white,
                        height: 42.8,
                        width: 120,
                        backgroundColor:
                            const Color.fromARGB(255, 117, 117, 117),
                        text: '退出应用',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: CommonBtnWidget.generalBtn(() {
                        EPstorage.userInfo.put(UserInfoBoxKey.isGreen, true);
                        RouteUtils.back();
                        // ref.read(homeServiceProvider).confirm();
                      },
                              text: '同意并使用',
                              color: const Color.fromRGBO(30, 135, 250, 1),
                              height: 43.7,
                              fullWidthButton: true,
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: FontConstant.f16_4))),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
