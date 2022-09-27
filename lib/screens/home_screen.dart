import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/Styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding:
            const EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Gap(40),
                Text(
                  'Good Morning',
                  style: Styles.headLineStyle4,
                ),
                const Gap(5),
                Text('Book Tickets', style: Styles.headLineStyle1)
              ]),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade100),
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/tickets.jpg'),
                    )),
              )
            ],
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
                color: const Color(0xFFF4F6FD),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                Text('Search', style: Styles.headLineStyle4,)
              ],
            ),
          ),
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Flights',
                style: Styles.headLineStyle2,
              ),
              InkWell(
                  onTap: () => print('View All'),
                  child: Text('View all',
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
            ],
          ),
          const Gap(15),
          const TicketView(),
        ],
      ),
    );
  }
}
