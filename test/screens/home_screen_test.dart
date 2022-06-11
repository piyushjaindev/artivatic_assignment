import 'package:artivatic_assignment/blocs/home_data_cubit.dart';
import 'package:artivatic_assignment/repositories/home_data_repository.dart';
import 'package:artivatic_assignment/screens/home_screen.dart';
import 'package:artivatic_assignment/widgets/data_row_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../data/home_screen_data.dart';

class MockHomeDataRepository extends Mock implements HomeDataRepository {}

void main() {
  late HomeDataRepository repository;

  setUp(() async {
    repository = MockHomeDataRepository();
  });

  Widget _buildTestableWidget() {
    return BlocProvider(
      create: (context) => HomeDataCubit(repository)..getHomeData(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }

  group('home screen ui state test', () {
    testWidgets(
        'home screen changes from loading to listview on successful load of data',
        (tester) async {
      when(() => repository.getHomeData())
          .thenAnswer((invocation) async => homeScreenData);

      await tester.pumpWidget(_buildTestableWidget());
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await tester.pumpAndSettle();
      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(
          find.byType(DataRowCard), findsNWidgets(homeScreenData.rows.length));
      expect(find.text(homeScreenData.title), findsOneWidget);
    });

    testWidgets(
        'home screen changes from loading to error on unsuccessful load of data',
        (tester) async {
      when(() => repository.getHomeData())
          .thenAnswer((invocation) async => throw Exception('error'));

      await tester.pumpWidget(_buildTestableWidget());
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await tester.pumpAndSettle();
      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(find.byType(DataRowCard), findsNothing);
      expect(find.text('Exception: error'), findsOneWidget);
    });
  });
}
