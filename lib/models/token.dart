// To parse this JSON data, do
//
//     final token = tokenFromJson(jsonString);

import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    this.error,
    this.data,
  });

  bool error;
  Data data;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        error: json["error"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.token,
  });

  TokenClass token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: TokenClass.fromJson(json["token"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token.toJson(),
      };
}

class TokenClass {
  TokenClass({
    this.token,
  });

  String token;

  factory TokenClass.fromJson(Map<String, dynamic> json) => TokenClass(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
