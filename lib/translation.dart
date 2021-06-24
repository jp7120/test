import 'package:get/route_manager.dart';

class JpTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'appBar': 'Language',
      'button': 'Get Started',
      'languageChange':'change the language'
    },
    'tm_IN':{
      'appBar': 'மொழி',
      'button': 'தொடங்கவும்',
      'languageChange':'உங்கள் மொழியை மாற்றவும்'
    },
    'hi_IN':{
      'appBar': 'हिन्दी',
      'button': 'शुरू हो जाओ',
      'languageChange':'अपनी भाषा बदलें'

    }
  };
}
