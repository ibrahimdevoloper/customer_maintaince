import 'package:customer_maintaince/Assets/AppConstants.dart';
import 'package:get/get.dart';

class PostGetConnect extends GetConnect {
  Future<Response> getPosts() => get('${AppConstants.mainURL}/posts');
  Future<Response> getPost(int id) => get('${AppConstants.mainURL}/posts/id');
}
