import 'package:flutter/material.dart';
import 'package:test_001/WEEK-8/LAP/1%20-%20START%20CODE%201/1%20-%20START%20CODE/EXERCISE-3/data/profile_data.dart';
import 'ui/screens/profile.dart';
 
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profileData: ronanProfile,),
  ));
}
