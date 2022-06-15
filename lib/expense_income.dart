import 'package:flutter/material.dart';

class ExpenseIncomeData extends StatefulWidget {
  const ExpenseIncomeData({Key? key}) : super(key: key);

  @override
  State<ExpenseIncomeData> createState() => _ExpenseIncomeDataState();
}

class _ExpenseIncomeDataState extends State<ExpenseIncomeData> {
  final List itemList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String? selectedValue = "August";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 240,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  expenseIncomeContainer(
                    context,
                    Icons.arrow_upward,
                    "Expense",
                    4100.00,
                    Colors.pink,
                    Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  expenseIncomeContainer(
                    context,
                    Icons.arrow_downward,
                    "Income",
                    2100.00,
                    Colors.white,
                    Colors.pink,
                  ),
                ],
              ),
              SizedBox(
                width: 150,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Day",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Week",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Month",
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 28,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: selectedValue,
                          dropdownColor: Colors.black,
                          items: itemList.map<DropdownMenuItem<String>>((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget expenseIncomeContainer(BuildContext context, IconData icon,
      String text, double price, Color color, Color textColor) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: textColor,
            ),
          ),
          Column(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                ),
              ),
              Text(
                "\$${price}",
                style: TextStyle(
                  color: textColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
