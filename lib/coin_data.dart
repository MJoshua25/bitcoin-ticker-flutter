import 'dart:ffi';
import 'services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinapiURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'C800CDE5-B198-4063-BC73-892D9449981D';

class CoinData {
  Future<double> getRate({String crypto, String currencie}) async{
    try{
      var data = await NetwookHelper('$coinapiURL/$crypto/$currencie?apikey=$apiKey').getData();
      return data['rate'];
    } catch (e){
      throw e;
    }

  }
}
