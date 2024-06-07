import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poc_kingpower/core/remote/dio/network_service.dart';
import 'package:retrofit/retrofit.dart';
part 'stream_service_api.g.dart';

final streamServiceApiProvider = Provider<StreamServiceApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return StreamServiceApi(dio);
});

@RestApi()
abstract class StreamServiceApi {
  factory StreamServiceApi(Dio dio) => _StreamServiceApi(dio);

  @GET(
      '/itextpdf2/en/generatePdf?requestType=result&pid=6670324581152844276&blocks=mapDetail,detail,pois&callback=alp.jsonp[-5011688851]&ids=1373510&language=en&layout=tour&maptype=summer&qmap=&reload_cnt=0_0.19425908885866861717753654870&scale=s25k&workplace=api-dev-oa&filename=en-around-immenstadt.pdf')
  @DioResponseType(ResponseType.bytes)
  Future<dynamic> getPdf();
}
