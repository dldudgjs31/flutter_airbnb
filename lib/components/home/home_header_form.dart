import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/size.dart';

class HomeHeaderForm extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: Alignment(-0.6,0), //-1.0~1.0까지 범위를 가짐
        child: Container(
          width: 420,

          decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(20)),
          child: Form(
              child: Padding(
                padding: const EdgeInsets.all(gap_l),
                child: Column(
                  children: [
                    _buildFormTitle(), // Form 위젯 제목 영역
                    _buildFormField(), // Form 위젯 Text input 입력 영역
                    _buildFormSubmit() // Form 위젯 전송 버튼 영역
                  ],
                ),
              )),
        ),
      ),
    );
  }
  Widget _buildFormTitle(){
    return SizedBox();
  }
  Widget _buildFormField(){
    return Column(
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소")
      ],
    );
  }
  Widget _buildFormSubmit(){
    return SizedBox();
  }
}
