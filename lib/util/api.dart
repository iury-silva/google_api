import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;

Future main() async {
  final json = await fetch();
  print(json);
}

Future<Map> fetch() async {
  var url = 'https://ip-api.com/#186.215.141.202';
  var response = await http.get(Uri.parse(url));
  var json = jsonDecode(response.body);
  return json;
}

class ipApi {
  String? query;
  String? status;
  String? continent;
  String? continentCode;
  String? country;
  String? countryCode;
  String? region;
  String? regionName;
  String? city;
  String? district;
  String? zip;
  double? lat;
  double? lon;
  String? timezone;
  int? offset;
  String? currency;
  String? isp;
  String? org;
  String? as;
  String? asname;
  bool? mobile;
  bool? proxy;
  bool? hosting;

  ipApi(
      {this.query,
      this.status,
      this.continent,
      this.continentCode,
      this.country,
      this.countryCode,
      this.region,
      this.regionName,
      this.city,
      this.district,
      this.zip,
      this.lat,
      this.lon,
      this.timezone,
      this.offset,
      this.currency,
      this.isp,
      this.org,
      this.as,
      this.asname,
      this.mobile,
      this.proxy,
      this.hosting});

  ipApi.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    status = json['status'];
    continent = json['continent'];
    continentCode = json['continentCode'];
    country = json['country'];
    countryCode = json['countryCode'];
    region = json['region'];
    regionName = json['regionName'];
    city = json['city'];
    district = json['district'];
    zip = json['zip'];
    lat = json['lat'];
    lon = json['lon'];
    timezone = json['timezone'];
    offset = json['offset'];
    currency = json['currency'];
    isp = json['isp'];
    org = json['org'];
    as = json['as'];
    asname = json['asname'];
    mobile = json['mobile'];
    proxy = json['proxy'];
    hosting = json['hosting'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query'] = this.query;
    data['status'] = this.status;
    data['continent'] = this.continent;
    data['continentCode'] = this.continentCode;
    data['country'] = this.country;
    data['countryCode'] = this.countryCode;
    data['region'] = this.region;
    data['regionName'] = this.regionName;
    data['city'] = this.city;
    data['district'] = this.district;
    data['zip'] = this.zip;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['timezone'] = this.timezone;
    data['offset'] = this.offset;
    data['currency'] = this.currency;
    data['isp'] = this.isp;
    data['org'] = this.org;
    data['as'] = this.as;
    data['asname'] = this.asname;
    data['mobile'] = this.mobile;
    data['proxy'] = this.proxy;
    data['hosting'] = this.hosting;
    return data;
  }
}
