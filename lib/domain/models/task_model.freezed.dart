// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskModel {
  int get id;
  DateTime get createdAt; // no video está String
  DateTime? get updatedAt;
  String get title;
  String? get description;
  DateTime? get dueDate;
  String? get dueHour;
  DateTime? get reminder;
  String get status;
  String? get prioridade;
  int? get categoryId;
  int? get projectId;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<TaskModel> get copyWith =>
      _$TaskModelCopyWithImpl<TaskModel>(this as TaskModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.dueHour, dueHour) || other.dueHour == dueHour) &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.prioridade, prioridade) ||
                other.prioridade == prioridade) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      title,
      description,
      dueDate,
      dueHour,
      reminder,
      status,
      prioridade,
      categoryId,
      projectId);

  @override
  String toString() {
    return 'TaskModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, description: $description, dueDate: $dueDate, dueHour: $dueHour, reminder: $reminder, status: $status, prioridade: $prioridade, categoryId: $categoryId, projectId: $projectId)';
  }
}

/// @nodoc
abstract mixin class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) _then) =
      _$TaskModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime? updatedAt,
      String title,
      String? description,
      DateTime? dueDate,
      String? dueHour,
      DateTime? reminder,
      String status,
      String? prioridade,
      int? categoryId,
      int? projectId});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res> implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._self, this._then);

  final TaskModel _self;
  final $Res Function(TaskModel) _then;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? dueDate = freezed,
    Object? dueHour = freezed,
    Object? reminder = freezed,
    Object? status = null,
    Object? prioridade = freezed,
    Object? categoryId = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _self.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueHour: freezed == dueHour
          ? _self.dueHour
          : dueHour // ignore: cast_nullable_to_non_nullable
              as String?,
      reminder: freezed == reminder
          ? _self.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      prioridade: freezed == prioridade
          ? _self.prioridade
          : prioridade // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      projectId: freezed == projectId
          ? _self.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TaskModel].
extension TaskModelPatterns on TaskModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TaskModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TaskModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TaskModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TaskModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            DateTime createdAt,
            DateTime? updatedAt,
            String title,
            String? description,
            DateTime? dueDate,
            String? dueHour,
            DateTime? reminder,
            String status,
            String? prioridade,
            int? categoryId,
            int? projectId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TaskModel() when $default != null:
        return $default(
            _that.id,
            _that.createdAt,
            _that.updatedAt,
            _that.title,
            _that.description,
            _that.dueDate,
            _that.dueHour,
            _that.reminder,
            _that.status,
            _that.prioridade,
            _that.categoryId,
            _that.projectId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            DateTime createdAt,
            DateTime? updatedAt,
            String title,
            String? description,
            DateTime? dueDate,
            String? dueHour,
            DateTime? reminder,
            String status,
            String? prioridade,
            int? categoryId,
            int? projectId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskModel():
        return $default(
            _that.id,
            _that.createdAt,
            _that.updatedAt,
            _that.title,
            _that.description,
            _that.dueDate,
            _that.dueHour,
            _that.reminder,
            _that.status,
            _that.prioridade,
            _that.categoryId,
            _that.projectId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            DateTime createdAt,
            DateTime? updatedAt,
            String title,
            String? description,
            DateTime? dueDate,
            String? dueHour,
            DateTime? reminder,
            String status,
            String? prioridade,
            int? categoryId,
            int? projectId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TaskModel() when $default != null:
        return $default(
            _that.id,
            _that.createdAt,
            _that.updatedAt,
            _that.title,
            _that.description,
            _that.dueDate,
            _that.dueHour,
            _that.reminder,
            _that.status,
            _that.prioridade,
            _that.categoryId,
            _that.projectId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TaskModel implements TaskModel {
  _TaskModel(
      {this.id = 0,
      required this.createdAt,
      this.updatedAt,
      required this.title,
      this.description,
      this.dueDate,
      this.dueHour,
      this.reminder,
      required this.status,
      this.prioridade,
      this.categoryId,
      this.projectId});

  @override
  @JsonKey()
  final int id;
  @override
  final DateTime createdAt;
// no video está String
  @override
  final DateTime? updatedAt;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime? dueDate;
  @override
  final String? dueHour;
  @override
  final DateTime? reminder;
  @override
  final String status;
  @override
  final String? prioridade;
  @override
  final int? categoryId;
  @override
  final int? projectId;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TaskModelCopyWith<_TaskModel> get copyWith =>
      __$TaskModelCopyWithImpl<_TaskModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.dueHour, dueHour) || other.dueHour == dueHour) &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.prioridade, prioridade) ||
                other.prioridade == prioridade) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      title,
      description,
      dueDate,
      dueHour,
      reminder,
      status,
      prioridade,
      categoryId,
      projectId);

  @override
  String toString() {
    return 'TaskModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, description: $description, dueDate: $dueDate, dueHour: $dueHour, reminder: $reminder, status: $status, prioridade: $prioridade, categoryId: $categoryId, projectId: $projectId)';
  }
}

/// @nodoc
abstract mixin class _$TaskModelCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$TaskModelCopyWith(
          _TaskModel value, $Res Function(_TaskModel) _then) =
      __$TaskModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime? updatedAt,
      String title,
      String? description,
      DateTime? dueDate,
      String? dueHour,
      DateTime? reminder,
      String status,
      String? prioridade,
      int? categoryId,
      int? projectId});
}

/// @nodoc
class __$TaskModelCopyWithImpl<$Res> implements _$TaskModelCopyWith<$Res> {
  __$TaskModelCopyWithImpl(this._self, this._then);

  final _TaskModel _self;
  final $Res Function(_TaskModel) _then;

  /// Create a copy of TaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? dueDate = freezed,
    Object? dueHour = freezed,
    Object? reminder = freezed,
    Object? status = null,
    Object? prioridade = freezed,
    Object? categoryId = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_TaskModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _self.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueHour: freezed == dueHour
          ? _self.dueHour
          : dueHour // ignore: cast_nullable_to_non_nullable
              as String?,
      reminder: freezed == reminder
          ? _self.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      prioridade: freezed == prioridade
          ? _self.prioridade
          : prioridade // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      projectId: freezed == projectId
          ? _self.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
