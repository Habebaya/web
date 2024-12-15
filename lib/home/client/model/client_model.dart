import 'client_domian_model.dart';
import 'client_item_model.dart';

class ClientModel {
  int? count;
  int? id;
  String? title;
  String? subtitle;
  String? description;
  String? image;
  List<ClientItemModel>? clients;
  List<ClientDomainItemModel>? clientDomains;

  ClientModel(
      {this.count,
      this.id,
      this.title,
      this.subtitle,
      this.description,
      this.image,
      this.clients});

  ClientModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    id = json['id'];

    title = json['data']['title'];
    subtitle = json['data']['subtitle'];
    description = json['data']['description'];
    image = json['image'];
    clients = List<ClientItemModel>.from(
        json['data']['clients'].map((x) => ClientItemModel.fromJson(x)));
    clientDomains = List<ClientDomainItemModel>.from(json['data']
            ['clientDomains']
        .map((x) => ClientDomainItemModel.fromJson(x)));
  }
}
