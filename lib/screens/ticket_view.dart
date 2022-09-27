import 'package:booktickets/utils/Styles.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            color: Color(0xff526799),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        child: Column(
          children: [
            Row(
              children: [
                Text('JKT',
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                ),
                const Spacer(),
                const ThickContainer(),
                Expanded(
                    child: Stack(children: [
                  SizedBox(
                    height: 24,
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 6).floor(),
                              (index) => const Text('-')),
                        );
                      },
                    ),
                  ),
                  Center(
                    child: Transform.rotate(
                        angle: 1.5,
                        child: const Icon(
                          Icons.local_airport_rounded,
                          color: Colors.white,
                        )),
                  ),
                ])),
                const ThickContainer(),
                const Spacer(),
                Text('LDN',
                    style: Styles.headLineStyle3.copyWith(color: Colors.white))
              ],
            ),
            Row(children: [
              SizedBox(
                width: 100,
                child: Text('Jakarta', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
              ), 
              Text('8h 30m', style: Styles.headLineStyle4.copyWith(color: Colors.white),)
            ],)
          ],
        ),
      ),
    );
  }
}
