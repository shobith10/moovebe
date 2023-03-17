// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

AuthResponse welcomeFromJson(String str) => AuthResponse.fromJson(json.decode(str));

String welcomeToJson(AuthResponse data) => json.encode(data.toJson());

class AuthResponse {
    AuthResponse({
        this.status,
        this.name,
        this.refresh,
        this.access,
        this.message,
        this.urlId,
    });

    bool? status;
    String? name;
    String? refresh;
    String ?access;
    String? message;
    String ?urlId;

    factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        status: json["status"],
        name: json["name"],
        refresh: json["refresh"],
        access: json["access"],
        message: json["message"],
        urlId: json["url_id"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "name": name,
        "refresh": refresh,
        "access": access,
        "message": message,
        "url_id": urlId,
    };
}
