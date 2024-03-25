// ignore_for_file: constant_identifier_names

///Contain all the failure in the app
///There is a extension add on this class
///to extract message or code.
enum ExceptionCode {
  CASH,
  HTTP,
  UNKNOWN,
  NO_INTERNET,
  MISSING_MEDIA,
  LOCATION_ACCESS,
  NO_PERMISSION,
  MAPPING,
  OTPNOTCOMPLETED,
  FIREBASE,
  USER_NOT_FOUND,
  WRONG_DATA,
  CANCELED_BY_USER,
  WRONG_EMAIL_PASSWORD,
  DOWNLOADING,
  SAVING_IMAGE_TO_GALLERY,
  MISIING_DATA
}

///Http request type using dio package.
enum RequestType { GET, PUT, POST, DELETE }

///Work with permission manager to
///request , check or delete permissions.
enum PermissionType {
  LOCATION,
}

///Work with user entity.
enum Gender { male, female, other }

///When pick a video or image
///the return type will be media
///and the type will be [MediaFileType]
enum MediaFileType { video, image, other }

///When navigation to another page
///the type of animation can be declared
/// or the default animation will be used.
enum AnimationType { slideFromDown, slideToLeft }

///When open story there is the type of this story
enum StoryType { business, myProfile, otherStories }

///The user type of user.
///Mainly used when navigation to user profile
enum UserType {
  Business,
  User,
}
///The type of reports in app.
enum ReportType{
  activity,
  business,
  reward,
  story,
  user,
}
