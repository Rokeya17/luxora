class SignInModel {
    SignInModel({
        required this.status,
        required this.user,
        required this.accessToken,
        required this.refreshToken,
        required this.message,
    });

    final num? status;
    final User? user;
    final String? accessToken;
    final String? refreshToken;
    final String? message;

    factory SignInModel.fromJson(Map<String, dynamic> json){ 
        return SignInModel(
            status: json["status"],
            user: json["user"] == null ? null : User.fromJson(json["user"]),
            accessToken: json["accessToken"],
            refreshToken: json["refreshToken"],
            message: json["message"],
        );
    }

}

class User {
    User({
        required this.country,
        required this.websites,
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.username,
        required this.email,
        required this.phone,
        required this.profilePic,
        required this.coverPic,
        required this.userStatus,
        required this.gender,
        required this.religion,
        required this.dateOfBirth,
        required this.userBio,
        required this.language,
        required this.passport,
        required this.lastLogin,
        required this.user2FaStatus,
        required this.secondaryEmail,
        required this.recoveryEmail,
        required this.relationStatus,
        required this.homeTown,
        required this.birthPlace,
        required this.bloodGroup,
        required this.resetPasswordToken,
        required this.resetPasswordTokenExpires,
        required this.userRole,
        required this.status,
        required this.ipAddress,
        required this.createdBy,
        required this.updateBy,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.lockProfile,
        required this.emailList,
        required this.phoneList,
        required this.userAbout,
        required this.userNickname,
        required this.presentTown,
        required this.turnOnEarningDashboard,
        required this.dateOfBirthShowType,
        required this.emailPrivacy,
        required this.isProfileVerified,
        required this.inactivationNote,
        required this.otp,
        required this.trustedSeller,
    });

    final dynamic country;
    final dynamic websites;
    final String? id;
    final String? firstName;
    final String? lastName;
    final String? username;
    final String? email;
    final String? phone;
    final String? profilePic;
    final String? coverPic;
    final dynamic userStatus;
    final Gender? gender;
    final Gender? religion;
    final DateTime? dateOfBirth;
    final String? userBio;
    final dynamic language;
    final dynamic passport;
    final DateTime? lastLogin;
    final dynamic user2FaStatus;
    final dynamic secondaryEmail;
    final dynamic recoveryEmail;
    final String? relationStatus;
    final String? homeTown;
    final String? birthPlace;
    final dynamic bloodGroup;
    final String? resetPasswordToken;
    final String? resetPasswordTokenExpires;
    final dynamic userRole;
    final String? status;
    final String? ipAddress;
    final dynamic createdBy;
    final dynamic updateBy;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final num? v;
    final String? lockProfile;
    final List<String> emailList;
    final List<dynamic> phoneList;
    final String? userAbout;
    final String? userNickname;
    final String? presentTown;
    final bool? turnOnEarningDashboard;
    final String? dateOfBirthShowType;
    final String? emailPrivacy;
    final bool? isProfileVerified;
    final String? inactivationNote;
    final num? otp;
    final bool? trustedSeller;

    factory User.fromJson(Map<String, dynamic> json){ 
        return User(
            country: json["country"],
            websites: json["websites"],
            id: json["_id"],
            firstName: json["first_name"],
            lastName: json["last_name"],
            username: json["username"],
            email: json["email"],
            phone: json["phone"],
            profilePic: json["profile_pic"],
            coverPic: json["cover_pic"],
            userStatus: json["user_status"],
            gender: json["gender"] == null ? null : Gender.fromJson(json["gender"]),
            religion: json["religion"] == null ? null : Gender.fromJson(json["religion"]),
            dateOfBirth: DateTime.tryParse(json["date_of_birth"] ?? ""),
            userBio: json["user_bio"],
            language: json["language"],
            passport: json["passport"],
            lastLogin: DateTime.tryParse(json["last_login"] ?? ""),
            user2FaStatus: json["user_2fa_status"],
            secondaryEmail: json["secondary_email"],
            recoveryEmail: json["recovery_email"],
            relationStatus: json["relation_status"],
            homeTown: json["home_town"],
            birthPlace: json["birth_place"],
            bloodGroup: json["blood_group"],
            resetPasswordToken: json["reset_password_token"],
            resetPasswordTokenExpires: json["reset_password_token_expires"],
            userRole: json["user_role"],
            status: json["status"],
            ipAddress: json["ip_address"],
            createdBy: json["created_by"],
            updateBy: json["update_by"],
            createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
            updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
            v: json["__v"],
            lockProfile: json["lock_profile"],
            emailList: json["email_list"] == null ? [] : List<String>.from(json["email_list"]!.map((x) => x)),
            phoneList: json["phone_list"] == null ? [] : List<dynamic>.from(json["phone_list"]!.map((x) => x)),
            userAbout: json["user_about"],
            userNickname: json["user_nickname"],
            presentTown: json["present_town"],
            turnOnEarningDashboard: json["turn_on_earning_dashboard"],
            dateOfBirthShowType: json["date_of_birth_show_type"],
            emailPrivacy: json["email_privacy"],
            isProfileVerified: json["isProfileVerified"],
            inactivationNote: json["inactivation_note"],
            otp: json["otp"],
            trustedSeller: json["trusted_seller"],
        );
    }

}

class Gender {
    Gender({
        required this.id,
        required this.genderName,
        required this.dataStatus,
        required this.ipAddress,
        required this.createdBy,
        required this.updateBy,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.religionName,
    });

    final String? id;
    final String? genderName;
    final dynamic dataStatus;
    final dynamic ipAddress;
    final dynamic createdBy;
    final dynamic updateBy;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final num? v;
    final String? religionName;

    factory Gender.fromJson(Map<String, dynamic> json){ 
        return Gender(
            id: json["_id"],
            genderName: json["gender_name"],
            dataStatus: json["data_status"],
            ipAddress: json["ip_address"],
            createdBy: json["created_by"],
            updateBy: json["update_by"],
            createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
            updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
            v: json["__v"],
            religionName: json["religion_name"],
        );
    }

}
