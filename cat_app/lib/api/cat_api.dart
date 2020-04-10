

import 'network.dart';

const String apiKey = '81ee1886-e73d-4c3a-88ba-fa53b5c42e05';
const String catAPIURL = 'https://api.thecatapi.com/v1/breeds?';
const String catImageAPIURL = 'https://api.thecatapi.com/v1/images/search?';
const String breedString = 'breed_id=';
const String apiKeyString = 'x-api-key=$apiKey';

class CatAPI {
  Future<dynamic> getCatBreeds() async {
    Network network = Network('$catAPIURL$apiKeyString');
    var catData = await network.getData();
    return catData;
  }

  Future<dynamic> getCatBreed(String breedName) async {
    Network network =
        Network('$catImageAPIURL$breedString$breedName&$apiKeyString');
    var catData = await network.getData();
    return catData;
  }
}