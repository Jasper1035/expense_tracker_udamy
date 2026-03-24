import 'package:flutter/material.dart';
import 'package:project3/widgets/expenses_list/expenses_list.dart';
import 'package:project3/model/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.66,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Rice',
      amount: 18.71,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Car',
      amount: 1000,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
