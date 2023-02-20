import 'package:flutter/material.dart';
import 'package:plpdartbootcampproject/utilities/color.dart';
import 'package:plpdartbootcampproject/widgets/page_layout.dart';

class RepayLoan extends StatelessWidget {
  const RepayLoan({super.key});

  @override
  Widget build(BuildContext context) {
    final amountController = TextEditingController();
    return PageLayout(
      pageTitle: "Repay Loan",
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Enter amount',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: amountController,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: const InputDecoration(
                suffixText: 'KES',
                suffixStyle: TextStyle(
                  color: AppColors.primary,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
