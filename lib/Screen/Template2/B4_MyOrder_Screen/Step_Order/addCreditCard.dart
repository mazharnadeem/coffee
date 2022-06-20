import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class addCreditCard extends StatefulWidget {
  addCreditCard({Key? key}) : super(key: key);

  @override
  _addCreditCardState createState() => _addCreditCardState();
}

class _addCreditCardState extends State<addCreditCard> {
  String _date = "06/23";

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 0.0, right: 0.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                    "Add Credit Card",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w800,
                        fontSize: 28.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                    "Enter your credit card details",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black26,
                        fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  height: 0.0,
                ),
                CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: isCvvFocused,
                  cardBgColor: Color(0xFFF48522),
                  onCreditCardWidgetChange: (CreditCardBrand) {},
                ),
                SingleChildScrollView(
                  child: CreditCardForm(
                    onCreditCardModelChange: onCreditCardModelChange,
                    cardHolderName: '',
                    cardNumber: '',
                    cvvCode: '',
                    expiryDate: '',
                    themeColor: Colors.white,
                    formKey: key,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, bottom: 20.0, top: 50.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50.0,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sofia",
                              fontSize: 19.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xFFF48522)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
