import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rose/pages/listitem.dart';
import 'package:rose/pages/policy.dart';
import 'package:rose/utils/constants.dart';
import 'package:rose/utils/helper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final GlobalKey _scaffoldKey = new GlobalKey();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.7,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment(0, 1),
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/h2.png"),
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                width: size.width,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Rose",
                                style: spanBoldHead,
                              ),
                              TextSpan(
                                text: " Discovery ",
                                style: spanNormalHead,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      // LoginForm(),
                      TextButton.icon(
                        icon: SvgPicture.asset('assets/svg/vn.svg',
                            height: 20, width: 20, fit: BoxFit.scaleDown),
                        label: Text('Việt Nam'),
                        onPressed: () {
                          setlang(1);

                          Helper.nextPage(
                              context,
                              Listitem(
                                key: _scaffoldKey,
                              ));
                        },
                        style: styleNormalTextbutton,
                      ),
                      TextButton.icon(
                        icon: SvgPicture.asset('assets/svg/gb.svg',
                            height: 20, width: 20, fit: BoxFit.scaleDown),
                        label: Text('English   '),
                        style: styleNormalTextbutton,
                        onPressed: () {
                          setlang(2);
                          Helper.nextPage(
                              context,
                              Listitem(
                                key: _scaffoldKey,
                              ));
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Helper.nextPage(
                                  context,
                                  Policy(
                                    key: _scaffoldKey,
                                  ));
                            },
                            child: Text('Policy'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
