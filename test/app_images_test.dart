import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tipa_ps_app/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.blueHall).existsSync(), isTrue);
    expect(File(AppImages.daysGoneCover).existsSync(), isTrue);
    expect(File(AppImages.deadIslandCover).existsSync(), isTrue);
    expect(File(AppImages.deathStrandingCover).existsSync(), isTrue);
    expect(File(AppImages.farmer).existsSync(), isTrue);
    expect(File(AppImages.goliath).existsSync(), isTrue);
    expect(File(AppImages.outlast2Cover).existsSync(), isTrue);
    expect(File(AppImages.rainWorldCover).existsSync(), isTrue);
    expect(File(AppImages.re2Cover).existsSync(), isTrue);
    expect(File(AppImages.re3Cover).existsSync(), isTrue);
    expect(File(AppImages.snowRunnerCover).existsSync(), isTrue);
    expect(File(AppImages.witcherCover).existsSync(), isTrue);
    expect(File(AppImages.youCanDrive).existsSync(), isTrue);
  });
}
