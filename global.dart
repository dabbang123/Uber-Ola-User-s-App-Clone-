import 'package:firebase_auth/firebase_auth.dart';
import 'package:users_app/models/direction_details_info.dart';
import 'package:users_app/models/user_model.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;
UserModel? userModelCurrentInfo;
List dList = []; //online-active drivers Information List
DirectionDetailsInfo? tripDirectionDetailsInfo;
String? chosenDriverId="";
//String cloudMessagingServerToken = "key=AAAAqo4oJOg:APA91bHuVtVtkuF6JeHkiwt7J5LY6m2yRPDIwX1fyD_RtNcUcyRkWbnzEr1D0Oo06pG-ekgS29aJ-wVUefdV1jqn5itSXm-OM29WznvZwZCEGZpXTZRaZxXVMKQMx7VXiYBANHoaoTjQ";
String userDropOffAddress = "";
String driverCarDetails="";
String driverName="";
String driverPhone="";
double countRatingStars=0.0;
String titleStarsRating="";
String cloudMessagingServerToken = "key=AAAAK5GdU1U:APA91bE-3m8HHO92OCSO5X6hoT4LthbNiNHvjCstRcm_wuHcK6YcPqdrPEMGiJieebaEdDLseG9BaOt9OYDIh_4KD6KFKVEVhjhp0fkpzpoQHwc5jQvj7YMlmuu_yRF4WfexxT61xOTb";