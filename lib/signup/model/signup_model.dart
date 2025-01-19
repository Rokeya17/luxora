class SignUpModel {
    SignUpModel({
        required this.status,
        required this.data,
    });

    final String? status;
    final Data? data;

    factory SignUpModel.fromJson(Map<String, dynamic> json){ 
        return SignUpModel(
            status: json["status"],
            data: json["data"] == null ? null : Data.fromJson(json["data"]),
        );
    }

}

class Data {
    Data({
        required this.email,
        required this.firstName,
        required this.lastName,
        required this.mobile,
        required this.password,
        required this.photo,
        required this.createdDate,
        required this.id,
    });

    final String? email;
    final String? firstName;
    final String? lastName;
    final String? mobile;
    final String? password;
    final String? photo;
    final DateTime? createdDate;
    final String? id;

    factory Data.fromJson(Map<String, dynamic> json){ 
        return Data(
            email: json["email"],
            firstName: json["firstName"],
            lastName: json["lastName"],
            mobile: json["mobile"],
            password: json["password"],
            photo: json["photo"],
            createdDate: DateTime.tryParse(json["createdDate"] ?? ""),
            id: json["_id"],
        );
    }

}
