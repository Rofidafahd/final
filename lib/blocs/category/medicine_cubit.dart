import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'medicine_state.dart';

class MedicinesCubit extends Cubit<MedicinesState> {
  MedicinesCubit() : super(MedicinesInitial());

  Future<void> fetchMedicines() async {
    emit(MedicinesLoading());
    final url = Uri.parse('https://api.fda.gov/drug/label.json?search=active_ingredient:paracetamol&limit=10');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final medicines = jsonData['results'];
        emit(MedicinesLoaded(medicines));
      } else {
        emit(MedicinesError('Failed to load medicines'));
      }
    } catch (e) {
      emit(MedicinesError('Error: ${e.toString()}'));
    }
  }
}
