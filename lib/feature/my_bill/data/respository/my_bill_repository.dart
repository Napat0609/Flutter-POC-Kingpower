import 'dart:io';

import 'package:poc_kingpower/core/remote/supabase_provider.dart';
import 'package:poc_kingpower/feature/authentication/data/dto/request/authentication_request.dart';
import 'package:poc_kingpower/feature/my_bill/data/dto/response/my_bill_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'my_bill_repository.g.dart';

@riverpod
MyBillRepository myBillRepository(
  MyBillRepositoryRef ref,
) {
  final supabaseClient = ref.watch(supabaseClientProvider);

  return MyBillRepository(supabaseClient);
}

class MyBillRepository {
  final SupabaseClient supabaseClient;

  MyBillRepository(
    this.supabaseClient,
  );

  SupabaseQueryBuilder get _myBillTable => supabaseClient.from(
        "my_bill",
      );

  Future<MyBillResponse?> getMyBill() async {
    final result = await _myBillTable.select();

    return null;
    // return MyBillResponse(
    //   id: int.parse("${result['id']}"),
    //   name: result["name"],
    //   lastName: result["last_name"],
    //   email: result["email"],
    // );
  }
}
