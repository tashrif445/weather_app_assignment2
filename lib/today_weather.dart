import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/custom_background.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const baseW = 428.0;
    const baseH = 926.0;

    Widget dayCard(String temp, String day, String assetPath) {
      return Container(
        width: 82,
        height: 172,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7B45B1), Color(0xFF8C50B6)],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.18),
              blurRadius: 18,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              temp,
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Image.asset(
              assetPath,
              key: ValueKey(assetPath),
              width: 66,
              height: 66,
              fit: BoxFit.contain,
              opacity: const AlwaysStoppedAnimation(1), // opacity: 1
              errorBuilder: (_, __, ___) => const Icon(
                CupertinoIcons.cloud_fill,
                color: Colors.white,
                size: 34,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              day,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    Widget strokedCard({required double w, required double h, required Widget child}) {
      return Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF5C3A9C), Color(0xFF8B4FB4)],
          ),
          border: Border.all(color: Colors.white.withOpacity(0.9), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.18),
              blurRadius: 26,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: child,
      );
    }

    final design = SizedBox(
      width: baseW,
      height: baseH,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 1,
            width: 427,
            height: 48,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text('1:41',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  const Spacer(),
                  const Icon(Icons.signal_cellular_4_bar,
                      color: Colors.white, size: 18),
                  const SizedBox(width: 8),
                  const Icon(Icons.wifi, color: Colors.white, size: 18),
                  const SizedBox(width: 8),
                  const Icon(Icons.battery_full,
                      color: Colors.white, size: 20),
                ],
              ),
            ),
          ),
          Positioned(
            top: 94,
            left: 1,
            width: 428,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'North America',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    height: 29.71 / 24,
                    letterSpacing: 0.47,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Max: 24°   Min:18°',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 197,
            left: 104,
            width: 260,
            height: 32,
            child: Center(
              child: Text(
                '7-Days Forecasts',
                style: GoogleFonts.openSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 29.71 / 24,
                  letterSpacing: 0.47,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Positioned(
              top: 322,
              left: 17,
              child: Icon(CupertinoIcons.chevron_left,
                  size: 24, color: Colors.white)),
          const Positioned(
              top: 322,
              right: 17,
              child: Icon(CupertinoIcons.chevron_right,
                  size: 24, color: Colors.white)),
          Positioned(
              top: 244,
              left: 42,
              width: 82,
              height: 172,
              child: dayCard('19°C', 'Mon', 'assets/images/first.png')),
          Positioned(
              width: 82,
              height: 172,
              top: 244,
              left: 131,
              child: dayCard('18°C', 'Tue', 'assets/images/second.png')),
          Positioned(
              top: 244,
              left: 219,
              width: 82,
              height: 172,
              child: dayCard('18°C', 'Wed', 'assets/images/second.png')),
          Positioned(
              top: 244,
              left: 306,
              width: 82,
              height: 172,
              child: dayCard('19°C', 'Thu', 'assets/images/third.png')),
          Positioned(
            top: 448,
            left: 34,
            width: 352,
            height: 174,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF6B3FA4), Color(0xFF8E4FB3)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.22),
                    blurRadius: 30,
                    offset: const Offset(0, 16),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Positioned(
                      top: 24,
                      left: 26,
                      child: Row(
                        children: [
                          const Icon(CupertinoIcons.scope,
                              color: Colors.white, size: 24),
                          const SizedBox(width: 10),
                          Text('AIR QUALITY',
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white70)),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 20,
                      child: Text('3-Low Health Risk',
                          style: GoogleFonts.openSans(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ),
                    Positioned(
                      top: 124,
                      left: 26,
                      child: Container(
                          width: 308,
                          height: 5,
                          color: Colors.white.withOpacity(0.25)),
                    ),
                    Positioned(
                      top: 138,
                      left: 26,
                      right: 20,
                      child: Row(
                        children: [
                          Text('See more',
                              style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          const Spacer(),
                          Transform.rotate(
                              angle: 3.14159,
                              child: const Icon(CupertinoIcons.chevron_left,
                                  color: Colors.white, size: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 668,
            left: 49,
            child: strokedCard(
              w: 168,
              h: 150,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(CupertinoIcons.sun_max_fill,
                            color: Colors.white, size: 22),
                        const SizedBox(width: 8),
                        Text('SUNRISE',
                            style: GoogleFonts.openSans(
                                color: Colors.white70,
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text('5:28 AM',
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    Text('Sunset: 7.25PM',
                        style: GoogleFonts.openSans(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 668,
            left: 222,
            child: strokedCard(
              w: 161,
              h: 150,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(CupertinoIcons.sun_max_fill,
                            color: Colors.white, size: 22),
                        const SizedBox(width: 8),
                        Text('UV INDEX',
                            style: GoogleFonts.openSans(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(height: 18),
                    Text('4',
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 6),
                    Text('Moderate',
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return CustomBackground(
      mainChild: Center(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36)),
          child: FittedBox(fit: BoxFit.contain, child: design),
        ),
      ),
    );
  }
}
