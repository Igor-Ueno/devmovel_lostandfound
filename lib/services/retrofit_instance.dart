import 'package:dio/dio.dart';
import '../models/lost_item.dart';

class RetrofitInstance {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://backend-devmovel.onrender.com'));

  Future<List<LostItem>> getLostItems() async {
    try {
      Response response = await _dio.get('/api/posts');
      List<dynamic> data = response.data;
      return data.map((item) => LostItem.fromJson(item)).toList();
    } on DioError catch (e) {
      print('Erro ao carregar itens perdidos: ${e.message}');
      throw e;
    }
  }
}
