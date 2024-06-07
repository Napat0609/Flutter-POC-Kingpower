import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_bill_response.freezed.dart';
part 'my_bill_response.g.dart';

@freezed
class MyBillResponse with _$MyBillResponse {
  const factory MyBillResponse({
    double? price,
    double? kg,
    DateTime? createdAt,
    double? totalPrice,
  }) = _MyBillResponse;

  factory MyBillResponse.fromJson(Map<String, dynamic> json) =>
      _$MyBillResponseFromJson(json);
}
