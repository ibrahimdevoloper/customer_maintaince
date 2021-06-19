import 'package:customer_maintaince/Services/PostsGetConnect.dart';
import 'package:get/get.dart';

class PreviousDevicesGetController extends GetxController {
  bool _isLoading = false;
  bool _isError = false;
  List _posts = [];
  PostGetConnect _postGetConnect = PostGetConnect();

  PreviousDevicesGetController() {
    getPosts();
  }

  getPosts() async {
    try {
      _isLoading = true;
      update();
      var postsMap = await _postGetConnect.getPosts();
      List posts = postsMap.body;
      print(posts);
      _isLoading = false;
      update();
    } catch (e) {
      _isLoading = false;
      _isError = true;
      update();
      print(e);
    }
  }

  bool get isError => _isError;

  set isError(bool value) {
    _isError = value;
  }

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
  }

  List get posts => _posts;
}
