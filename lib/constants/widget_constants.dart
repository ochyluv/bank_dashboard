import 'package:bank_dashboard/ui/widgets/wallet_card.dart';
import 'package:flutter/material.dart';

const List<Widget> demoTransactions = [
  WalletCard(
    icon: Icons.attach_money,
    text: 'Dollar wallet',
    amount: '\$ 490.00',
  ),
  WalletCard(
    icon: Icons.circle,
    text: 'Targets',
    amount: '\$ 100000.00',
  ),
  WalletCard(
    icon: Icons.star_border,
    text: 'Utilities',
    amount: '\$ 234.11',
  ),
  WalletCard(
    icon: Icons.lock,
    text: 'Safe lock',
    amount: '\$ 250.66',
  ),
];
