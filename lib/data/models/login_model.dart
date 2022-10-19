class LoginModel {
  bool? smsResponse;
  String? message;
  Data? data;
  Errors? errors;

  LoginModel({this.smsResponse, this.message, this.data, this.errors});

  LoginModel.fromJson(Map<String, dynamic> json) {
    smsResponse = json['sms_response'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    errors =
    json['errors'] != null ? Errors.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sms_response'] = this.smsResponse;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.errors != null) {
      data['errors'] = this.errors!.toJson();
    }
    return data;
  }
}

class Data {
  String? result;
  String? code;

  Data({this.result, this.code});

  Data.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['code'] = this.code;
    return data;
  }
}

class Errors {
  String? global;

  Errors({this.global});

  Errors.fromJson(Map<String, dynamic> json) {
    global = json['global'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['global'] = this.global;
    return data;
  }
}
