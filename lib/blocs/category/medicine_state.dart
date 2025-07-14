
abstract class MedicinesState {}

class MedicinesInitial extends MedicinesState {}

class MedicinesLoading extends MedicinesState {}

class MedicinesLoaded extends MedicinesState {
  final List<dynamic> medicines;
  MedicinesLoaded(this.medicines);
}

class MedicinesError extends MedicinesState {
  final String message;
  MedicinesError(this.message);
}
