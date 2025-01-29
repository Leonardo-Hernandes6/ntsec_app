import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_title/portfolio_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PortfolioPartnes extends StatelessWidget {
  const PortfolioPartnes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          PortfolioTitle(
            label: "Nosso Portfólio | Parceiros",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/colaborators/checkpoint.svg',
                height: 24.0,
                width: 24.0,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade300,
                  BlendMode.srcIn,
                ),
              ),
              SvgPicture.asset(
                'assets/colaborators/nutanix.svg',
                height: 15.0,
                width: 15.0,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade300,
                  BlendMode.srcIn,
                ),
              ),
              SvgPicture.asset(
                'assets/colaborators/trend.svg',
                height: 25.0,
                width: 25.0,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade300,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/colaborators/purestorage.svg',
                height: 20.0,
                width: 20.0,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade300,
                  BlendMode.srcIn,
                ),
              ),
              SvgPicture.asset(
                'assets/colaborators/varonis.svg',
                height: 20.0,
                width: 20.0,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade300,
                  BlendMode.srcIn,
                ),
              ),
              SvgPicture.asset(
                'assets/colaborators/hpe.svg',
                height: 35.0,
                width: 35.0,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade300,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/colaborators/f5.svg',
                height: 30.0,
                width: 30.0,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade300,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
