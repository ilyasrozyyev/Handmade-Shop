import 'package:flutter/material.dart';
import 'colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bk,
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: ab,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: const TextStyle(
          color: te,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        actions: const [
          Icon(Icons.notifications_none, color:ab),
          SizedBox(width: 16),
          Icon(Icons.settings, color:ab),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/images (1).jpg"),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Jason Statham",
                      style:
                          TextStyle( color: te, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "stathem_jason@gmail.com",
                      style: TextStyle(color: te),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _ProfileActionButton(
                    icon: Icons.shopping_bag, label: "My Orders"),
                _ProfileActionButton(
                    icon: Icons.local_offer, label: "Promo Code"),
                _ProfileActionButton(icon: Icons.favorite, label: "Following"),
              ],
            ),
            const SizedBox(height: 32),
            const Text("General Settings",
                style: TextStyle( color: te, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const _ProfileListTile(title: "My Account", icon: Icons.person),
            const _ProfileListTile(
                title: "Payment Methods", icon: Icons.credit_card),
            const _ProfileListTile(
                title: "My Address", icon: Icons.location_on),
            const _ProfileListTile(
                title: "Notifications", icon: Icons.notifications),
            const SizedBox(height: 24),
            const Text("Other",
                style: TextStyle( color: te, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const _ProfileListTile(
                title: "Contact Preferences", icon: Icons.chat),
            const _ProfileListTile(
                title: "Terms & Conditions", icon: Icons.description),
            const _ProfileListTile(title: "Privacy Policy", icon: Icons.lock),
            const SizedBox(height: 32),
          ],
        ),
      ),
      
    );
  }
}

class _ProfileActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ProfileActionButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: bk,
          child: Icon(icon, color: ab),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle( color: te, fontSize: 12)),
      ],
    );
  }
}

class _ProfileListTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const _ProfileListTile({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: ab),
      title: Text( style: TextStyle(color: te), title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}
