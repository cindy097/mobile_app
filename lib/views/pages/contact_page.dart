import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:pkl_cyberlabs/data/constants.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final LatLng _officeLocation = LatLng(-6.914744, 107.609810); // Lokasi kantor di Bandung

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contact Us', style: AppTextStyles.heading1),
            const SizedBox(height: 10),
            Column(
              children: [
                _buildContactRow('assets/images/phone.png', '(022) 8888 1 999'),
                _buildContactRow('assets/images/phone_alt.png', '0857 2303 6868'),
                _buildContactRow('assets/images/whatsapp.png', '0857 2303 6868'),
                _buildContactRow('assets/images/email.png', 'marketing@cyberlabs.co.id'),
              ],
            ),

            const SizedBox(height: 32),

            Text('Address', style: AppTextStyles.heading1),
            const SizedBox(height: 10),
            Column(
              children: [
                _buildAddressRow(
                  'assets/images/home.png',
                  'Main office',
                  'Jl Terusan Mars Utara III No. 8D Kota Bandung, 40292',
                ),
                _buildAddressRow(
                  'assets/images/national.png',
                  'National Branch Office',
                  'Ariobimo Sentral level 8, Jalan H. R. Rasuna Said Kav X-2 No. 5, Kuningan Timur, Setiabudi, Jakarta Selatan 12950',
                ),
                _buildAddressRow(
                  'assets/images/international.png',
                  'International Branch Office',
                  'Fragrance Empire, 456 Alexandra Road, #04-02, Singapore',
                ),
              ],
            ),

            const SizedBox(height: 32),

            // OpenStreetMap Section
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.radius),
                child: FlutterMap(
                  options: MapOptions(
                    center: _officeLocation,
                    zoom: 15.0,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: const ['a', 'b', 'c'],
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: _officeLocation,
                          width: 40,
                          height: 40,
                          child: const Icon(Icons.location_pin, color: Colors.red, size: 40),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow(String iconPath, String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // juga di sini
        children: [
          Image.asset(
            iconPath,
            width: 75,
            height: 75,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildAddressRow(String iconPath, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // ubah dari start jadi center
        children: [
          Image.asset(
            iconPath,
            width: 75,
            height: 75,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: AppTextStyles.body.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
