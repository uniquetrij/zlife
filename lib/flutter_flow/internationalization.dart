import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? frText = '',
  }) =>
      [enText, hiText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // disposer_home
  {
    'e7smir6p': {
      'en': 'You helped reduced 58.4 kg of waste this month',
      'fr': 'Vous avez contribué à réduire 58,4 kg de déchets ce mois-ci',
      'hi': 'आपने इस महीने 58.4 किलो कचरा कम करने में मदद की',
    },
    'gv0t1vpu': {
      'en': 'Explore Campaigns',
      'fr': 'Explorer les campagnes',
      'hi': 'अभियानों का अन्वेषण करें',
    },
    'janfecci': {
      'en': 'In your area in August 2023',
      'fr': 'Dans votre région en août 2023',
      'hi': 'अगस्त 2023 में आपके क्षेत्र में',
    },
    'smlylvau': {
      'en': 'View Details',
      'fr': 'Voir les détails',
      'hi': 'विवरण देखें',
    },
    'cynn5re4': {
      'en': 'Happening in Sept 2023',
      'fr': 'Se passe en septembre 2023',
      'hi': 'सितंबर 2023 में हो रहा है',
    },
    'bwc7294j': {
      'en': 'View Details',
      'fr': 'Voir les détails',
      'hi': 'विवरण देखें',
    },
    '5n4m3hu5': {
      'en': 'Upcoming campaigns',
      'fr': 'Campagnes à venir',
      'hi': 'आगामी अभियान',
    },
    'jg7ojdus': {
      'en': 'View Details',
      'fr': 'Voir les détails',
      'hi': 'विवरण देखें',
    },
    '05ftvzvu': {
      'en': 'Read More',
      'fr': 'En savoir plus',
      'hi': 'और पढ़ें',
    },
    's85uaok7': {
      'en': 'For a better future for you and me, think sustainably',
      'fr': 'Pour un avenir meilleur pour vous et moi, pensez durablement',
      'hi': 'आपके और मेरे बेहतर भविष्य के लिए, निरंतर सोचें',
    },
    '3zqbk32n': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
    'j4xor9bm': {
      'en': 'Publish Post',
      'fr': 'Publier le message',
      'hi': 'पोस्ट प्रकाशित करें',
    },
    'bnxwtrrs': {
      'en': 'Posts',
      'fr': 'Des postes',
      'hi': 'पदों',
    },
    'vjovis41': {
      'en': 'Communities',
      'fr': 'Communautés',
      'hi': 'समुदाय',
    },
    'fp5dut9f': {
      'en': 'Messages',
      'fr': 'messages',
      'hi': 'संदेशों',
    },
    '4fr3blsc': {
      'en': 'Settings',
      'fr': 'Paramètres',
      'hi': 'समायोजन',
    },
    'zq85wu0a': {
      'en': 'Logout',
      'fr': 'Se déconnecter',
      'hi': 'लॉग आउट',
    },
    'g8hqb1hh': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // category_details_test
  {
    'xdmz07ft': {
      'en': 'Details',
      'fr': 'Détails',
      'hi': 'विवरण',
    },
    'zut4ylql': {
      'en': 'Post Details',
      'fr': 'Détails de la publication',
      'hi': 'पोस्ट विवरण',
    },
    'ny9bl1d7': {
      'en': 'Please fill the form below to proceed.',
      'fr': 'Veuillez remplir le formulaire ci-dessous pour continuer.',
      'hi': 'आगे बढ़ने के लिए कृपया नीचे दिया गया फॉर्म भरें।',
    },
    'jg1rf48f': {
      'en': 'Description*',
      'fr': 'Description*',
      'hi': 'विवरण*',
    },
    '7iiauwwi': {
      'en': 'Quantity*',
      'fr': 'Quantité*',
      'hi': 'मात्रा*',
    },
    'rmtrjxo4': {
      'en': 'piece(s)',
      'fr': 'pièces)',
      'hi': 'टुकड़े)',
    },
    '3dt2dr31': {
      'en': 'kg(s)',
      'fr': 'kg(s)',
      'hi': 'किलो (ओं)',
    },
    'c4vtcllj': {
      'en': 'piece(s)',
      'fr': 'pièces)',
      'hi': 'टुकड़े)',
    },
    'ti19rysg': {
      'en': 'gram(s)',
      'fr': 'gramme(s)',
      'hi': 'ग्राम',
    },
    'ggitgbcv': {
      'en': 'pound(s)',
      'fr': 'livres sterling)',
      'hi': 'पौंड',
    },
    '5i747r5e': {
      'en': 'ounce(s)',
      'fr': 'once(s)',
      'hi': 'औंस',
    },
    'ci2ywgtq': {
      'en': 'Please select...',
      'fr': 'Veuillez sélectionner...',
      'hi': 'कृपया चयन कीजिए...',
    },
    'gw5hzx4e': {
      'en': 'Search for an item...',
      'fr': 'Rechercher un article...',
      'hi': 'कोई आइटम खोजें...',
    },
    'w5rdrq36': {
      'en': 'proceed',
      'fr': 'procéder',
      'hi': 'आगे बढ़ना',
    },
    's1unhtnd': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // image
  {
    'aimvparl': {
      'en': 'Images',
      'fr': 'Images',
      'hi': 'इमेजिस',
    },
    'wbocmot6': {
      'en': 'Post Details',
      'fr': 'Détails de la publication',
      'hi': 'पोस्ट विवरण',
    },
    'xri1lwn2': {
      'en': 'Add Images for your posting',
      'fr': 'Ajouter des images pour votre publication',
      'hi': 'अपनी पोस्टिंग के लिए छवियां जोड़ें',
    },
    '3ak5nu20': {
      'en': 'Add Image',
      'fr': 'Ajouter une image',
      'hi': 'छवि जोड़ें',
    },
    'ivtutfm4': {
      'en': 'proceed',
      'fr': 'procéder',
      'hi': 'आगे बढ़ना',
    },
    'bh9quour': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // category_details
  {
    'lt2zllrj': {
      'en': 'Details',
      'fr': 'Détails',
      'hi': 'विवरण',
    },
    'g9e9gkxh': {
      'en': 'Post Details',
      'fr': 'Détails de la publication',
      'hi': 'पोस्ट विवरण',
    },
    '7rk4gpre': {
      'en': 'Please fill the form below to proceed.',
      'fr': 'Veuillez remplir le formulaire ci-dessous pour continuer.',
      'hi': 'आगे बढ़ने के लिए कृपया नीचे दिया गया फॉर्म भरें।',
    },
    'fpwdnt6q': {
      'en': 'Title*',
      'fr': 'Titre*',
      'hi': 'शीर्षक*',
    },
    '286e28uc': {
      'en': 'Description*',
      'fr': 'Description*',
      'hi': 'विवरण*',
    },
    'gnz9qzcs': {
      'en': 'Quantity*',
      'fr': 'Quantité*',
      'hi': 'मात्रा*',
    },
    'q3epj2om': {
      'en': 'piece(s)',
      'fr': 'pièces)',
      'hi': 'टुकड़े)',
    },
    'mwe84t3u': {
      'en': 'kg(s)',
      'fr': 'kg(s)',
      'hi': 'किलो (ओं)',
    },
    '80bjlo8i': {
      'en': 'piece(s)',
      'fr': 'pièces)',
      'hi': 'टुकड़े)',
    },
    '2jpxarcd': {
      'en': 'gram(s)',
      'fr': 'gramme(s)',
      'hi': 'ग्राम',
    },
    '5qwosa96': {
      'en': 'pound(s)',
      'fr': 'livres sterling)',
      'hi': 'पौंड',
    },
    '1ujkl1gq': {
      'en': 'ounce(s)',
      'fr': 'once(s)',
      'hi': 'औंस',
    },
    '3kouozon': {
      'en': 'Please select...',
      'fr': 'Veuillez sélectionner...',
      'hi': 'कृपया चयन कीजिए...',
    },
    'px7eda7w': {
      'en': 'Search for an item...',
      'fr': 'Rechercher un article...',
      'hi': 'कोई आइटम खोजें...',
    },
    '74lizvwi': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    'yp7nfr6y': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    'z3hvgo2l': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    'z4m7fh3e': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    'xydr9m0l': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    'mtrxsa7z': {
      'en': 'Enter a valid number',
      'fr': 'Entrez un numéro valide',
      'hi': 'एक मान्य संख्या दर्ज करें',
    },
    'c8z0hpsx': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    'y918u07u': {
      'en': 'proceed',
      'fr': 'procéder',
      'hi': 'आगे बढ़ना',
    },
    'snzlazsj': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // contribution_type
  {
    't7sfa7zs': {
      'en': 'Sell the item or donate them?',
      'fr': 'Vendre l\'objet ou en faire don ?',
      'hi': 'आइटम बेचें या उन्हें दान करें?',
    },
    '23exy8l5': {
      'en': 'Please select one of the options below to proceed.',
      'fr':
          'Veuillez sélectionner l\'une des options ci-dessous pour continuer.',
      'hi':
          'कृपया आगे बढ़ने के लिए नीचे दिए गए विकल्पों में से एक का चयन करें।',
    },
    'zhm8nby8': {
      'en': 'Sell',
      'fr': 'Vendre',
      'hi': 'बेचना',
    },
    'dot2bv38': {
      'en': 'You are willing to sell the item for ...',
      'fr': 'Vous êtes prêt à vendre l\'objet pour...',
      'hi': 'आप के लिए आइटम बेचने को तैयार हैं ...',
    },
    'd00znu6o': {
      'en': 'Donate',
      'fr': 'Donner',
      'hi': 'दान देना',
    },
    'imb4e6af': {
      'en': 'You are willing to donate the items',
      'fr': 'Vous êtes prêt à donner les articles',
      'hi': 'आप वस्तुओं का दान करने को तैयार हैं',
    },
    'xo6fbbu2': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    'lzpkel78': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    '1bhgx5hd': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    '06fo3iwc': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    'l2nnmoky': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    '34azm02v': {
      'en': 'Enter a valid number',
      'fr': 'Entrez un numéro valide',
      'hi': 'एक मान्य संख्या दर्ज करें',
    },
    'u0fm4tgi': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    'qsjustx6': {
      'en': 'Contribution Type',
      'fr': 'Type de contribution',
      'hi': 'योगदान का प्रकार',
    },
    '5x58f1nl': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // selling_price
  {
    'tz3kksw3': {
      'en': 'Selling Price',
      'fr': 'Prix de vente',
      'hi': 'विक्रय मूल्य',
    },
    'kqtjog7j': {
      'en': 'How much do you want for the items?',
      'fr': 'Combien voulez-vous pour les articles?',
      'hi': 'आप आइटम के लिए कितना चाहते हैं?',
    },
    'psmvhewu': {
      'en': 'Enter the amount to proceed',
      'fr': 'Entrez le montant pour continuer',
      'hi': 'आगे बढ़ने के लिए राशि दर्ज करें',
    },
    '3xid3npz': {
      'en': 'Amount*',
      'fr': 'Montant*',
      'hi': 'मात्रा*',
    },
    'btz3ookv': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    'kgsa0re2': {
      'en': 'Enter a valid Amount',
      'fr': 'Entrez un montant valide',
      'hi': 'एक वैध राशि दर्ज करें',
    },
    'iipl3qxd': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    '15xirspn': {
      'en': 'proceed',
      'fr': 'procéder',
      'hi': 'आगे बढ़ना',
    },
    '05k0t4ji': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // contribute_to
  {
    '8lrmcsxd': {
      'en': 'Contribute To',
      'fr': 'Contribuer à',
      'hi': 'में योगदान',
    },
    '6wcuwn3c': {
      'en': 'Sell the item or donate them?',
      'fr': 'Vendre l\'objet ou en faire don ?',
      'hi': 'आइटम बेचें या उन्हें दान करें?',
    },
    'lnb0fxqk': {
      'en': 'Please select one of the options below to proceed.',
      'fr':
          'Veuillez sélectionner l\'une des options ci-dessous pour continuer.',
      'hi':
          'कृपया आगे बढ़ने के लिए नीचे दिए गए विकल्पों में से एक का चयन करें।',
    },
    '63ztshjl': {
      'en': 'Search an Organization',
      'fr': 'Rechercher une organisation',
      'hi': 'एक संगठन खोजें',
    },
    'ivm6k26q': {
      'en': 'Select a registered Orgainzation',
      'fr': 'Sélectionnez une organisation enregistrée',
      'hi': 'एक पंजीकृत संगठन का चयन करें',
    },
    'e1fvzv3b': {
      'en': 'Post to all',
      'fr': 'Publier à tous',
      'hi': 'सभी को पोस्ट करें',
    },
    '2x15b3op': {
      'en': 'Broadcast your listing',
      'fr': 'Diffusez votre annonce',
      'hi': 'अपनी लिस्टिंग प्रसारित करें',
    },
    '3khk75b5': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    '5j9h1fn8': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    'nmgxd0m7': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    'uo8mg4kf': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    'f6f795ar': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    '8t2gfhb5': {
      'en': 'Enter a valid number',
      'fr': 'Entrez un numéro valide',
      'hi': 'एक मान्य संख्या दर्ज करें',
    },
    '3x90fzrf': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से एक विकल्प चुनें',
    },
    'b9rkqzvx': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // sign_up
  {
    'r3atuwfl': {
      'en': 'Sign up',
      'fr': 'S\'inscrire',
      'hi': 'साइन अप करें',
    },
    '4jujnmcr': {
      'en':
          'Create your account by filling in the information below to access the app.',
      'fr':
          'Créez votre compte en remplissant les informations ci-dessous pour accéder à l\'application.',
      'hi':
          'ऐप को एक्सेस करने के लिए नीचे दी गई जानकारी भरकर अपना अकाउंट बनाएं।',
    },
    '731i1nzf': {
      'en': 'DISPOSER',
      'fr': 'ÉLIMINATEUR',
      'hi': 'इस निर्देशिका',
    },
    '6ac23pjp': {
      'en': 'WASTE COLLECTOR',
      'fr': 'COLLECTEUR DE DÉCHETS',
      'hi': 'अपशिष्ट संग्राहक',
    },
    'r0mlk5zd': {
      'en': 'Individual',
      'fr': 'Individuel',
      'hi': 'व्यक्ति',
    },
    '6nqmfidh': {
      'en': 'Organization',
      'fr': 'Organisation',
      'hi': 'संगठन',
    },
    '9ndy6tlo': {
      'en': 'Personal Information',
      'fr': 'Informations personnelles',
      'hi': 'व्यक्तिगत जानकारी',
    },
    '9gt7qkhd': {
      'en': 'First name*',
      'fr': 'Prénom*',
      'hi': 'पहला नाम*',
    },
    'd1pg67yu': {
      'en': 'Last name*',
      'fr': 'Nom de famille*',
      'hi': 'उपनाम*',
    },
    'pz8kpxex': {
      'en': 'Account Information',
      'fr': 'Information sur le compte',
      'hi': 'खाता संबंधी जानकारी',
    },
    '254933yi': {
      'en': 'Email Address*',
      'fr': 'Adresse e-mail*',
      'hi': 'मेल पता*',
    },
    'wtn36l5q': {
      'en': 'Password*',
      'fr': 'Mot de passe*',
      'hi': 'पासवर्ड*',
    },
    '7g402hwz': {
      'en': 'Confirm Password*',
      'fr': 'Confirmez le mot de passe*',
      'hi': 'पासवर्ड की पुष्टि कीजिये*',
    },
    'mvhc9qj0': {
      'en': 'Company Information',
      'fr': 'Informations sur la société',
      'hi': 'कारखाना की जानकारी',
    },
    '77vf0gzu': {
      'en': 'Company name*',
      'fr': 'Nom de l\'entreprise*',
      'hi': 'कंपनी का नाम*',
    },
    '6r72y46a': {
      'en': 'Company Address*',
      'fr': 'Adresse de la société*',
      'hi': 'कम्पनी का पता*',
    },
    'fpl7g7vy': {
      'en': 'Phone Number*',
      'fr': 'Numéro de téléphone*',
      'hi': 'फ़ोन नंबर*',
    },
    '73dy4up3': {
      'en': 'Registration Number*',
      'fr': 'Numéro d\'enregistrement*',
      'hi': 'पंजीकरण संख्या*',
    },
    '9qdi853k': {
      'en': 'Referral',
      'fr': 'Référence',
      'hi': 'रेफ़रल',
    },
    'i8y43smf': {
      'en': 'Referral code',
      'fr': 'Code de Parrainage',
      'hi': 'रेफरल कोड',
    },
    '0rk7sbws': {
      'en': 'Create Account',
      'fr': 'Créer un compte',
      'hi': 'खाता बनाएं',
    },
    '6x556606': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // login
  {
    'hbr8pfsx': {
      'en': 'Login',
      'fr': 'Connexion',
      'hi': 'लॉग इन करें',
    },
    'uxcdxb7f': {
      'en': 'Access your account by logging in below.',
      'fr': 'Accédez à votre compte en vous connectant ci-dessous.',
      'hi': 'नीचे लॉग इन करके अपने खाते तक पहुंचें।',
    },
    'z32kc4f6': {
      'en': 'Enter your email...',
      'fr': 'Entrer votre Email...',
      'hi': 'अपना ईमेल दर्ज करें...',
    },
    '8wag0i22': {
      'en': 'Please enter your password...',
      'fr': 'S\'il vous plait entrez votre mot de passe...',
      'hi': 'अपना पासवर्ड दर्ज करें...',
    },
    '43p2w7jz': {
      'en': 'Forgot Password?',
      'fr': 'Mot de passe oublié?',
      'hi': 'पासवर्ड भूल गए?',
    },
    'i4hn1i1y': {
      'en': 'Login',
      'fr': 'Connexion',
      'hi': 'लॉग इन करें',
    },
    'cy1273fg': {
      'en': 'OR',
      'fr': 'OU',
      'hi': 'या',
    },
    '5tev3zb7': {
      'en': 'Create Account',
      'fr': 'Créer un compte',
      'hi': 'खाता बनाएं',
    },
    'jmlmjwve': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // location
  {
    'vsapz5i0': {
      'en': 'proceed',
      'fr': 'procéder',
      'hi': 'आगे बढ़ना',
    },
    'k4baibbs': {
      'en': 'Choose Location',
      'fr': 'Choisissez l\'emplacement',
      'hi': 'स्थान का चयन',
    },
    '0te84fx9': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // acccount_profile
  {
    'en7k8v2j': {
      'en':
          'Congratulation on earning the prestigious Waste Warrior badge this month !!',
      'fr':
          'Félicitations pour avoir gagné le prestigieux badge Waste Warrior ce mois-ci !!',
      'hi': 'इस महीने प्रतिष्ठित वेस्ट वारियर बैज अर्जित करने पर बधाई !!',
    },
    '3zskqh4g': {
      'en': 'Level',
      'fr': 'Niveau',
      'hi': 'स्तर',
    },
    'pd0ium1i': {
      'en': '4',
      'fr': '4',
      'hi': '4',
    },
    'j6t9wmp1': {
      'en': 'Points',
      'fr': 'Points',
      'hi': 'अंक',
    },
    '6wq1m84w': {
      'en': '198',
      'fr': '198',
      'hi': '198',
    },
    'ucpqmbw0': {
      'en': 'Rank',
      'fr': 'Rang',
      'hi': 'पद',
    },
    'vc9cz9gj': {
      'en': '140',
      'fr': '140',
      'hi': '140',
    },
    '20k67ak7': {
      'en': 'Plastic Wizard',
      'fr': 'Assistant en plastique',
      'hi': 'प्लास्टिक जादूगर',
    },
    '7w3assua': {
      'en': 'Metal Ninja',
      'fr': 'Ninja de métal',
      'hi': 'धातु निंजा',
    },
    'x7qnrbsy': {
      'en': 'Wood Viking',
      'fr': 'Viking du bois',
      'hi': 'लकड़ी वाइकिंग',
    },
    'fadkrdbz': {
      'en': 'Glass Knight',
      'fr': 'Chevalier de verre',
      'hi': 'ग्लास नाइट',
    },
    'tpipvc8l': {
      'en': 'Paper Samurai',
      'fr': 'Papier Samouraï',
      'hi': 'पेपर समुराई',
    },
    'u1nzka18': {
      'en': 'Electronic Guardian',
      'fr': 'Gardien électronique',
      'hi': 'इलेक्ट्रॉनिक गार्जियन',
    },
    'a1001lpj': {
      'en': 'Fabric Gladiator',
      'fr': 'Gladiateur en tissu',
      'hi': 'फैब्रिक ग्लेडिएटर',
    },
    'qwagc0j3': {
      'en': 'Plant Watcher',
      'fr': 'Observateur des plantes',
      'hi': 'प्लांट वॉचर',
    },
    'wox80bs4': {
      'en': 'Profile',
      'fr': 'Profil',
      'hi': 'प्रोफ़ाइल',
    },
    'rfb2ipys': {
      'en': 'Profile',
      'fr': 'Profil',
      'hi': 'प्रोफ़ाइल',
    },
  },
  // create_post
  {
    'yc8o7q6p': {
      'en': 'What would you like to dispose?',
      'fr': 'Que souhaitez-vous disposer ?',
      'hi': 'आप क्या निपटाना चाहेंगे?',
    },
    'gs44n4v6': {
      'en': 'Select one of the categories below to procced',
      'fr': 'Sélectionnez l\'une des catégories ci-dessous pour continuer',
      'hi': 'आगे बढ़ने के लिए नीचे दी गई श्रेणियों में से एक का चयन करें',
    },
    'dw2l8wgz': {
      'en': 'Plants & Flowers',
      'fr': 'Plantes & Fleurs',
      'hi': 'पौधे और फूल',
    },
    'bqifyla7': {
      'en': 'Electronics & Harware',
      'fr': 'Électronique et matériel',
      'hi': 'इलेक्ट्रॉनिक्स और Harware',
    },
    'd4tb96zh': {
      'en': 'Paper & Books',
      'fr': 'Livres en papier',
      'hi': 'कागज और किताबें',
    },
    'bhee3dih': {
      'en': 'Fabric & Clothes',
      'fr': 'Tissu & Vêtements',
      'hi': 'कपड़ा और कपड़े',
    },
    'exe2n585': {
      'en': 'Wood & Furnitures',
      'fr': 'Bois & Meubles',
      'hi': 'लकड़ी और फर्नीचर',
    },
    '6s00tj70': {
      'en': 'Plastic & Bottles',
      'fr': 'Bouteilles en plastique',
      'hi': 'प्लास्टिक की बोतलें',
    },
    '0jmeiiiw': {
      'en': 'Machine & Machinery',
      'fr': 'Machines et machines',
      'hi': 'मशीन और मशीनरी',
    },
    '0rcqeqo4': {
      'en': 'Mirror & Glasses',
      'fr': 'Miroir et Lunettes',
      'hi': 'आईना और चश्मा',
    },
    'v49m2qvl': {
      'en': 'Biomedical',
      'fr': 'Biomédical',
      'hi': 'जैव चिकित्सा',
    },
    'fmdi7jss': {
      'en': 'Others',
      'fr': 'Autres',
      'hi': 'अन्य',
    },
    'hd1z5k1o': {
      'en': 'Select Category',
      'fr': 'Choisir une catégorie',
      'hi': 'श्रेणी चुनना',
    },
  },
  // communities
  {
    'cel7u2t6': {
      'en': 'Search members, communities ...',
      'fr': 'Rechercher des membres, des communautés...',
      'hi': 'सदस्यों, समुदायों को खोजें ...',
    },
    'rgu03cnu': {
      'en': 'Communtites',
      'fr': 'Communautés',
      'hi': 'समुदाय',
    },
    '3ou6gigu': {
      'en': 'Eco Empower',
      'fr': 'Autonomisation écologique',
      'hi': 'इको एम्पॉवर',
    },
    '5h4w6isc': {
      'en': 'Remove',
      'fr': 'Retirer',
      'hi': 'निकालना',
    },
    'hyys5udm': {
      'en': 'GreenSolutions ',
      'fr': 'Solutions vertes',
      'hi': 'ग्रीन समाधान',
    },
    '87m52r36': {
      'en': 'Remove',
      'fr': 'Retirer',
      'hi': 'निकालना',
    },
    'n52kq480': {
      'en': 'WasteWise',
      'fr': 'WasteWise',
      'hi': 'व्यर्थ',
    },
    '7rcwkad5': {
      'en': 'Remove',
      'fr': 'Retirer',
      'hi': 'निकालना',
    },
    'yw2qhzb5': {
      'en': 'New members from your contacts has joined',
      'fr': 'De nouveaux membres de vos contacts ont rejoint',
      'hi': 'आपके संपर्कों में से नए सदस्य शामिल हो गए हैं',
    },
    '1rsmafno': {
      'en': 'Bob Jones',
      'fr': 'Bob Jones',
      'hi': 'बॉब जोन्स',
    },
    'lk3r5c1t': {
      'en': 'bob.jones@yahoo.com',
      'fr': 'bob.jones@yahoo.com',
      'hi': 'bob.jones@yahoo.com',
    },
    'a123vq5e': {
      'en': 'View',
      'fr': 'Voir',
      'hi': 'देखना',
    },
    'xmrze4s8': {
      'en': 'Alice Smith',
      'fr': 'Alice Smith',
      'hi': 'ऐलिस स्मिथ',
    },
    'fu66vlvu': {
      'en': 'alice.smith@gmail.com',
      'fr': 'alice.smith@gmail.com',
      'hi': 'alice.smith@gmail.com',
    },
    'l4o7n1dx': {
      'en': 'View',
      'fr': 'Voir',
      'hi': 'देखना',
    },
    '0sxqenel': {
      'en': 'Charlie Lee',
      'fr': 'Charlie Lee',
      'hi': 'चार्ली ली',
    },
    '747tp1j5': {
      'en': 'charlie.lee@outlook.com',
      'fr': 'charlie.lee@outlook.com',
      'hi': 'charlie.lee@outlook.com',
    },
    'mpt0iwke': {
      'en': 'View',
      'fr': 'Voir',
      'hi': 'देखना',
    },
    'kdcl0tz5': {
      'en': 'David Chen',
      'fr': 'David Chen',
      'hi': 'डेविड चेन',
    },
    'apbhxmle': {
      'en': 'david.chen@hotmail.com',
      'fr': 'david.chen@hotmail.com',
      'hi': 'david.chen@hotmail.com',
    },
    'jxxkhxx7': {
      'en': 'View',
      'fr': 'Voir',
      'hi': 'देखना',
    },
    'tr9jq03k': {
      'en': 'Emma Brown',
      'fr': 'Emma Brun',
      'hi': 'एम्मा ब्राउन',
    },
    '00uoa48y': {
      'en': 'emma.brown@protonmail.com',
      'fr': 'emma.brown@protonmail.com',
      'hi': 'emma.brown@protonmail.com',
    },
    'fcqnkgwa': {
      'en': 'View',
      'fr': 'Voir',
      'hi': 'देखना',
    },
    'ys6ltjoe': {
      'en': 'Community',
      'fr': 'Communauté',
      'hi': 'समुदाय',
    },
    'p3ye3kn9': {
      'en': 'Social',
      'fr': 'Social',
      'hi': 'सामाजिक',
    },
  },
  // product_details
  {
    'nv3vbek7': {
      'en': '3054 East North Street Greenville, South Carolina 29601',
      'fr': '3054 East North Street Greenville, Caroline du Sud 29601',
      'hi': '3054 ईस्ट नॉर्थ स्ट्रीट ग्रीनविले, साउथ कैरोलिना 29601',
    },
    'dpu6uxtg': {
      'en': 'Product Tags',
      'fr': 'Étiquettes de produit',
      'hi': 'उत्पाद टैग',
    },
    '3wkqdw00': {
      'en': 'Newspaper',
      'fr': 'Journal',
      'hi': 'अखबार',
    },
    'jqrn3tkr': {
      'en': 'Magazines',
      'fr': 'Les magazines',
      'hi': 'पत्रिका',
    },
    '7epua68j': {
      'en': 'WasteDisposal',
      'fr': 'Traitement des déchets',
      'hi': 'अपशिष्ट निपटान',
    },
    '0xreykgo': {
      'en': 'Paper',
      'fr': 'Papier',
      'hi': 'कागज़',
    },
    'u9hxu814': {
      'en': 'Books',
      'fr': 'Livres',
      'hi': 'पुस्तकें',
    },
    '1rtoako4': {
      'en': 'Householditems',
      'fr': 'Articles ménagers',
      'hi': 'घरेलू सामान',
    },
    'pa0gbm8x': {
      'en': 'Others',
      'fr': 'Autres',
      'hi': 'अन्य',
    },
    'vhezy30c': {
      'en': 'Price',
      'fr': 'Prix',
      'hi': 'कीमत',
    },
    '9ntamu10': {
      'en': 'Tax + Service fee',
      'fr': 'Taxe + Frais de service',
      'hi': 'कर + सेवा शुल्क',
    },
    'zyudawhf': {
      'en': '\$ 0.0',
      'fr': '\$ 0.0',
      'hi': '\$ 0.0',
    },
    'fx907l4z': {
      'en': 'Total',
      'fr': 'Total',
      'hi': 'कुल',
    },
    'k58vsp6i': {
      'en': 'Publish Now',
      'fr': 'Publier maintenant',
      'hi': 'अब प्रकाशित करें',
    },
    'whdk5o45': {
      'en': 'Post Details',
      'fr': 'Détails de la publication',
      'hi': 'पोस्ट विवरण',
    },
    'tel2qza4': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // search_organisation
  {
    'pwgmhne5': {
      'en': 'Search for organizations ..',
      'fr': 'Rechercher des organisations ..',
      'hi': 'संगठनों के लिए खोजें ..',
    },
    'r8d7vexe': {
      'en': 'Proceed',
      'fr': 'Procéder',
      'hi': 'आगे बढ़ना',
    },
    'q29mcqae': {
      'en': 'Search Organisation',
      'fr': 'Rechercher une organisation',
      'hi': 'खोज संगठन',
    },
    'shqbmkdl': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // my_posts
  {
    's020ty54': {
      'en': 'Verified',
      'fr': 'Vérifié',
      'hi': 'सत्यापित',
    },
    '5m4o06ri': {
      'en': 'My Posts',
      'fr': 'Mes publications',
      'hi': 'मेरी पोस्ट',
    },
    'hidoyc6v': {
      'en': 'Posts',
      'fr': 'Des postes',
      'hi': 'पदों',
    },
  },
  // settings
  {
    'cptm2711': {
      'en': 'Help center, contact us, privacy policy',
      'fr': 'Centre d\'aide, contactez-nous, politique de confidentialité',
      'hi': 'सहायता केंद्र, हमसे संपर्क करें, गोपनीयता नीति',
    },
    'sr8gogax': {
      'en': 'Language',
      'fr': 'Langue',
      'hi': 'भाषा',
    },
    'plic4vfg': {
      'en': 'Notification Settings',
      'fr': 'Paramètres de notification',
      'hi': 'अधिसूचना सेटिंग्स',
    },
    'de5ytbbx': {
      'en': 'Orders',
      'fr': 'Ordres',
      'hi': 'आदेश',
    },
    'u5bjkc6z': {
      'en': 'Invite a friend',
      'fr': 'Invite un ami',
      'hi': 'किसी मित्र को आमंत्रित करें',
    },
    '8mh4a13i': {
      'en': 'Settings',
      'fr': 'Paramètres',
      'hi': 'समायोजन',
    },
    'exotvpsw': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // imageCopy
  {
    '5895i59x': {
      'en': 'Images',
      'fr': 'Images',
      'hi': 'इमेजिस',
    },
    'xsx9g2xc': {
      'en': 'Post Details',
      'fr': 'Détails de la publication',
      'hi': 'पोस्ट विवरण',
    },
    'lcqqbwc3': {
      'en': 'Add Images for your posting',
      'fr': 'Ajouter des images pour votre publication',
      'hi': 'अपनी पोस्टिंग के लिए छवियां जोड़ें',
    },
    'a2p1zbjk': {
      'en': 'Add Images',
      'fr': 'Ajouter des images',
      'hi': 'छवियां जोड़ें',
    },
    'nf8fd08h': {
      'en': 'proceed',
      'fr': 'procéder',
      'hi': 'आगे बढ़ना',
    },
    'oumvi3qv': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // recycler_home
  {
    '2bzwi072': {
      'en': 'You helped reduced 192.6 kg of waste this month',
      'fr': 'Vous avez contribué à réduire 192,6 kg de déchets ce mois-ci',
      'hi': 'आपने इस महीने 192.6 किलो कचरा कम करने में मदद की',
    },
    'kauouxch': {
      'en': 'Recommendations',
      'fr': 'Recommandations',
      'hi': 'सिफारिशों',
    },
    'm9co2h7v': {
      'en': 'Our Expert Recommendations fot You',
      'fr': 'Nos recommandations d\'experts pour vous',
      'hi': 'हमारे विशेषज्ञ सुझाव आपके लिए हैं',
    },
    '9rg5owu9': {
      'en': 'Exclusive Deals',
      'fr': 'Offres exclusives',
      'hi': 'विशेष सौदे',
    },
    'uifjy1mp': {
      'en': 'Exclusive offer only for you',
      'fr': 'Offre exclusive rien que pour vous',
      'hi': 'खास ऑफर सिर्फ आपके लिए',
    },
    'izvmrfnd': {
      'en': 'View All',
      'fr': 'Voir tout',
      'hi': 'सभी को देखें',
    },
    'rbmq0eua': {
      'en': 'Explore Campaigns',
      'fr': 'Explorer les campagnes',
      'hi': 'अभियानों का अन्वेषण करें',
    },
    'eyn63bbi': {
      'en': 'In your area in August 2023',
      'fr': 'Dans votre région en août 2023',
      'hi': 'अगस्त 2023 में आपके क्षेत्र में',
    },
    '739f0jd9': {
      'en': 'View Details',
      'fr': 'Voir les détails',
      'hi': 'विवरण देखें',
    },
    '332kwse3': {
      'en': 'Happening in Sept 2023',
      'fr': 'Se passe en septembre 2023',
      'hi': 'सितंबर 2023 में हो रहा है',
    },
    'y7hlu5s3': {
      'en': 'View Details',
      'fr': 'Voir les détails',
      'hi': 'विवरण देखें',
    },
    'lnooan17': {
      'en': 'Upcoming campaigns',
      'fr': 'Campagnes à venir',
      'hi': 'आगामी अभियान',
    },
    'my0kb696': {
      'en': 'View Details',
      'fr': 'Voir les détails',
      'hi': 'विवरण देखें',
    },
    'ge59skm1': {
      'en': 'Read More',
      'fr': 'En savoir plus',
      'hi': 'और पढ़ें',
    },
    'pwzycxls': {
      'en': 'For a better future for you and me, think sustainably',
      'fr': 'Pour un avenir meilleur pour vous et moi, pensez durablement',
      'hi': 'आपके और मेरे बेहतर भविष्य के लिए, निरंतर सोचें',
    },
    '3z5dnqny': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
    'aut980z2': {
      'en': 'Shop',
      'fr': 'Boutique',
      'hi': 'दुकान',
    },
    'm11w1e3o': {
      'en': 'Orders',
      'fr': 'Ordres',
      'hi': 'आदेश',
    },
    'txadrswa': {
      'en': 'Communities',
      'fr': 'Communautés',
      'hi': 'समुदाय',
    },
    'bq2dunj1': {
      'en': 'Messages',
      'fr': 'messages',
      'hi': 'संदेशों',
    },
    'dxfmwg6q': {
      'en': 'Settings',
      'fr': 'Paramètres',
      'hi': 'समायोजन',
    },
    'el4gmwn6': {
      'en': 'Logout',
      'fr': 'Se déconnecter',
      'hi': 'लॉग आउट',
    },
    'mnryw1ix': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // shop
  {
    'k2fexgmh': {
      'en': 'Verfiied',
      'fr': 'Vérifié',
      'hi': 'सत्यापित',
    },
    'csjdqeut': {
      'en': 'Shop',
      'fr': 'Boutique',
      'hi': 'दुकान',
    },
    'fwsa0bhh': {
      'en': 'Shop',
      'fr': 'Boutique',
      'hi': 'दुकान',
    },
  },
  // success_payment
  {
    'y4z87ufh': {
      'en': 'Congrats!',
      'fr': 'Bravo!',
      'hi': 'बधाई!',
    },
    'opm8x04r': {
      'en': 'Your payment is successfully',
      'fr': 'Votre paiement est réussi',
      'hi': 'आपका भुगतान सफलतापूर्वक हो गया है',
    },
    'uurxlyjw': {
      'en': 'Go Home',
      'fr': 'Rentrer chez soi',
      'hi': 'घर जाओ',
    },
    'fw4ausfm': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // track_order
  {
    '0hwqb341': {
      'en': 'Paper & Cardboard',
      'fr': 'Papier & Carton',
      'hi': 'कागज और गत्ता',
    },
    't07eivz7': {
      'en': 'Ordered Tue, May 16',
      'fr': 'Commandé mar. 16 mai',
      'hi': 'मंगलवार, 16 मई को आदेश दिया गया',
    },
    '59p5udn7': {
      'en': 'Departed ',
      'fr': 'Défunt',
      'hi': 'स्वर्गवासी',
    },
    '4gxmf94e': {
      'en': 'Eco Empower has left for Package from Dallas, TX ',
      'fr': 'Eco Empower est parti pour Package de Dallas, TX',
      'hi': 'इको एम्पॉवर डलास, TX से पैकेज के लिए रवाना हो गया है',
    },
    'mbif1f2q': {
      'en': 'Thursday, May 17',
      'fr': 'jeudi 17 mai',
      'hi': 'गुरुवार, मई 17',
    },
    'nnz3h2en': {
      'en': '||',
      'fr': '||',
      'hi': '||',
    },
    'x3dtbys6': {
      'en': '6:30am',
      'fr': '6h30 du matin',
      'hi': 'सुबह के 06:30',
    },
    'v58w3xd1': {
      'en': 'Arrived',
      'fr': 'Arrivé',
      'hi': 'पहुँचा',
    },
    'kd5xgx8o': {
      'en': 'Eco Empower has arrived Greenville, South Carolina.',
      'fr': 'Eco Empower est arrivé à Greenville, en Caroline du Sud.',
      'hi': 'इको एम्पॉवर ग्रीनविल, साउथ कैरोलिना पहुंच चुका है।',
    },
    '5nar8jcn': {
      'en': 'Friday, May 18',
      'fr': 'vendredi 18 mai',
      'hi': 'शुक्रवार, मई 18',
    },
    '2oqotelm': {
      'en': '||',
      'fr': '||',
      'hi': '||',
    },
    'mo9g1se4': {
      'en': '10:11am',
      'fr': '10h11',
      'hi': '10:11 पूर्वाह्न',
    },
    'tnpve2ma': {
      'en': 'Collection Complete',
      'fr': 'Collecte terminée',
      'hi': 'संग्रह पूर्ण',
    },
    '8aknokkp': {
      'en':
          'Eco Empoyer has completed collection from Greenville, South Carolina',
      'fr':
          'Eco employeur a terminé la collecte de Greenville, Caroline du Sud',
      'hi':
          'Eco Empoyer ने Greenville, South Carolina से संग्रह पूरा कर लिया है',
    },
    'iwcwxtwq': {
      'en': 'Friday, May 18 || 01:05pm',
      'fr': 'Vendredi 18 mai || 13h05',
      'hi': 'शुक्रवार, 18 मई || 01:05 अपराह्न',
    },
    'yp8p5ag4': {
      'en': 'Track',
      'fr': 'Piste',
      'hi': 'रास्ता',
    },
    'rpbmsu9g': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // orders
  {
    'rse4gk7c': {
      'en': 'Orders',
      'fr': 'Ordres',
      'hi': 'आदेश',
    },
    'vi0ddehu': {
      'en': 'Shop',
      'fr': 'Boutique',
      'hi': 'दुकान',
    },
  },
  // chats
  {
    'nyr9yrua': {
      'en': 'Emily Foster',
      'fr': 'Emilie Foster',
      'hi': 'एमिली फोस्टर',
    },
    'i7gurxvw': {
      'en': 'The pleasure is mine. See you tomorrow!',
      'fr': 'Le plaisir est pour moi. À demain!',
      'hi': 'खुशी मेरी है। कल मिलते हैं!',
    },
    't98rqv07': {
      'en': 'Sarah Johnson',
      'fr': 'Sarah Johnson',
      'hi': 'सारा जॉनसन',
    },
    '9c4wogvh': {
      'en': 'Can we discuss the price ?',
      'fr': 'Peut-on discuter du prix ?',
      'hi': 'क्या हम कीमत पर चर्चा कर सकते हैं?',
    },
    'd6qfxmoi': {
      'en': 'Michael Thompson',
      'fr': 'Michel Thompson',
      'hi': 'माइकल थॉम्पसन',
    },
    '3s8cdl38': {
      'en': 'How about we find a middle ground that works for both of us ?',
      'fr':
          'Que diriez-vous de trouver un terrain d\'entente qui fonctionne pour nous deux ?',
      'hi':
          'कैसे के बारे में हम एक मध्य मैदान पाते हैं जो हम दोनों के लिए काम करता है?',
    },
    '65wgh4mb': {
      'en': 'Chats',
      'fr': 'Chats',
      'hi': 'चैट',
    },
    '52yni1tp': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // chat_message
  {
    'ks6ut2mr': {
      'en':
          'Hello Emily! This is EcoEmpower, an NGO dedicated to empowering underprivileged families. We came across your disposal order on the ZLife portal, showcasing your substantial paper waste. We\'re thrilled and would love to collect it. Are you available to chat?',
      'fr':
          'Bonjour Émilie ! Il s\'agit d\'EcoEmpower, une ONG dédiée à l\'autonomisation des familles défavorisées. Nous sommes tombés sur votre commande d\'élimination sur le portail ZLife, mettant en valeur votre important gaspillage de papier. Nous sommes ravis et aimerions le collectionner. Êtes-vous disponible pour discuter?',
      'hi':
          'हैलो एमिली! यह है EcoEmpower, एक एनजीओ जो वंचित परिवारों को सशक्त बनाने के लिए समर्पित है। हमें ZLife पोर्टल पर आपका डिस्पोजल ऑर्डर मिला, जिसमें आपके पर्याप्त पेपर वेस्ट को प्रदर्शित किया गया था। हम रोमांचित हैं और इसे इकट्ठा करना पसंद करेंगे। क्या आप चैट के लिए उपलब्ध हैं?',
    },
    '7eubql2m': {
      'en':
          'Hi EcoEmpower! I\'m glad you found my disposal order. I\'d be more than happy to contribute. I appreciate your mission of creating employment opportunities for underprivileged families. Let\'s discuss the details.',
      'fr':
          'Salut EcoEmpower ! Je suis content que vous ayez trouvé ma commande d\'élimination. Je serais plus qu\'heureux de contribuer. J\'apprécie votre mission de créer des opportunités d\'emploi pour les familles défavorisées. Discutons des détails.',
      'hi':
          'हाय इकोएम्पावर! मुझे खुशी है कि आपको मेरा निपटान आदेश मिल गया। मुझे योगदान देने में खुशी होगी। मैं वंचित परिवारों के लिए रोजगार के अवसर सृजित करने के आपके मिशन की सराहना करता हूं। आइए विवरण पर चर्चा करें।',
    },
    'q45l2anr': {
      'en':
          'That\'s wonderful, Emily! Your generosity will make a significant impact. We have a team of dedicated individuals ready to collect the paper waste at your convenience. When would be a suitable time for us to come by?',
      'fr':
          'C\'est merveilleux, Émilie ! Votre générosité aura un impact significatif. Nous avons une équipe de personnes dévouées prêtes à collecter les déchets de papier à votre convenance. Quand serait-il opportun pour nous de passer ?',
      'hi':
          'यह अद्भुत है, एमिली! आपकी उदारता का विशेष प्रभाव पड़ेगा। हमारे पास समर्पित व्यक्तियों की एक टीम है जो आपकी सुविधानुसार कागज के कचरे को इकट्ठा करने के लिए तैयार है। हमारे आने का उपयुक्त समय कब होगा?',
    },
    '6s1m4ygq': {
      'en': ' I\'m available tomorrow afternoon. Will that work for your team?',
      'fr':
          'Je suis disponible demain après-midi. Cela fonctionnera-t-il pour votre équipe ?',
      'hi': 'मैं कल दोपहर को उपलब्ध हूं। क्या वह आपकी टीम के लिए काम करेगा?',
    },
    'w8d3bxa0': {
      'en':
          'Tomorrow afternoon works perfectly for us. We\'ll arrange for our team to visit your location and collect the paper waste. Thank you for accommodating us. By donating your paper waste, you\'re helping us create employment opportunities and promote sustainability.',
      'fr':
          'Demain après-midi fonctionne parfaitement pour nous. Nous ferons en sorte que notre équipe se rende sur place et collecte les déchets de papier. Merci de nous accueillir. En faisant don de vos déchets de papier, vous nous aidez à créer des opportunités d\'emploi et à promouvoir la durabilité.',
      'hi':
          'कल दोपहर हमारे लिए पूरी तरह से काम करती है। हम अपनी टीम को आपके स्थान पर जाने और कागज़ के कचरे को एकत्र करने की व्यवस्था करेंगे। हमें जगह देने के लिए धन्यवाद। अपना पेपर वेस्ट दान करके, आप रोजगार के अवसर पैदा करने और स्थिरता को बढ़ावा देने में हमारी मदद कर रहे हैं।',
    },
    'dgi4ml7a': {
      'en':
          'I\'m excited to contribute and be a part of this positive change. How should I prepare the paper waste for collection?',
      'fr':
          'Je suis ravi de contribuer et de faire partie de ce changement positif. Comment dois-je préparer les déchets de papier pour la collecte ?',
      'hi':
          'मैं योगदान देने और इस सकारात्मक बदलाव का हिस्सा बनने के लिए उत्साहित हूं। मुझे संग्रह के लिए कागज़ के कचरे को कैसे तैयार करना चाहिए?',
    },
    'h65sf2xt': {
      'en':
          'To make the process smoother, please gather the paper waste in a separate bag or container, ensuring it\'s dry and free from any contaminants. This will help with efficient handling and sorting at our facility. Our team will arrive with proper equipment for transportation.',
      'fr':
          'Pour rendre le processus plus fluide, veuillez rassembler les déchets de papier dans un sac ou un conteneur séparé, en vous assurant qu\'ils sont secs et exempts de tout contaminant. Cela contribuera à une manipulation et un tri efficaces dans nos installations. Notre équipe arrivera avec le matériel adéquat pour le transport.',
      'hi':
          'प्रक्रिया को सुचारू बनाने के लिए, कृपया कागज के कचरे को एक अलग बैग या कंटेनर में इकट्ठा करें, यह सुनिश्चित करें कि यह सूखा और किसी भी दूषित पदार्थों से मुक्त हो। यह हमारी सुविधा में कुशल हैंडलिंग और सॉर्टिंग में मदद करेगा। हमारी टीम परिवहन के लिए उचित उपकरणों के साथ पहुंचेगी।',
    },
    '9ioflfej': {
      'en':
          'Got it! I\'ll make sure the paper waste is well-prepared for collection. I\'m looking forward to meeting your team.',
      'fr':
          'J\'ai compris! Je veillerai à ce que les déchets de papier soient bien préparés pour la collecte. J\'ai hâte de rencontrer votre équipe.',
      'hi':
          'समझ गया! मैं यह सुनिश्चित करूँगा कि कागज़ का कचरा संग्रह के लिए अच्छी तरह से तैयार है। मैं आपकी टीम से मिलने के लिए उत्सुक हूं।',
    },
    'upkltuaw': {
      'en':
          'Fantastic, Emily! We appreciate your cooperation. We\'ll share the contact details of our team lead, who will coordinate the collection and answer any further questions you may have. Together, we\'ll make a positive impact on the environment and the lives of underprivileged families.',
      'fr':
          'Fantastique, Émilie ! Nous apprécions votre coopération. Nous partagerons les coordonnées de notre chef d\'équipe, qui coordonnera la collecte et répondra à toute autre question que vous pourriez avoir. Ensemble, nous aurons un impact positif sur l\'environnement et la vie des familles défavorisées.',
      'hi':
          'बढ़िया, एमिली! हम आपके सहयोग की सराहना करते हैं। हम अपनी टीम लीड का संपर्क विवरण साझा करेंगे, जो संग्रह का समन्वय करेगी और आपके किसी भी अन्य प्रश्न का उत्तर देगी। साथ मिलकर, हम पर्यावरण और वंचित परिवारों के जीवन पर सकारात्मक प्रभाव डालेंगे।',
    },
    'gqnrynm5': {
      'en':
          'Thank you for reaching out and providing the necessary information. I\'m grateful for the opportunity to contribute. Please pass along my appreciation to your team as well.',
      'fr':
          'Merci de nous avoir contactés et de nous avoir fourni les informations nécessaires. Je suis reconnaissant pour l\'opportunité de contribuer. Merci également de transmettre mes remerciements à votre équipe.',
      'hi':
          'हमसे संपर्क करने और आवश्यक जानकारी प्रदान करने के लिए धन्यवाद। मैं योगदान करने के अवसर के लिए आभारी हूं। कृपया अपनी टीम को भी मेरी सराहना दें।',
    },
    'o2t9buhj': {
      'en':
          'Absolutely, Emily! Your kind words mean a lot to us. We\'ll convey your gratitude to our team members. Should you have any questions or need assistance, don\'t hesitate to reach out. We look forward to tomorrow\'s collection. Thank you again for your generosity and support.',
      'fr':
          'Absolument, Émilie ! Vos aimables paroles signifient beaucoup pour nous. Nous transmettrons votre gratitude aux membres de notre équipe. Si vous avez des questions ou avez besoin d\'aide, n\'hésitez pas à nous contacter. Nous attendons avec impatience la collection de demain. Merci encore pour votre générosité et votre soutien.',
      'hi':
          'बिल्कुल, एमिली! आपकी तरह के शब्द हमारे लिए बहुत मायने रखते हैं। हम अपनी टीम के सदस्यों के प्रति आपका आभार व्यक्त करेंगे। यदि आपके कोई प्रश्न हैं या सहायता की आवश्यकता है, तो संपर्क करने में संकोच न करें। हम कल के संग्रह की प्रतीक्षा कर रहे हैं। आपकी उदारता और समर्थन के लिए फिर से धन्यवाद।',
    },
    'xwixo842': {
      'en': 'The pleasure is mine. See you tomorrow!',
      'fr': 'Le plaisir est pour moi. À demain!',
      'hi': 'खुशी मेरी है। कल मिलते हैं!',
    },
    '2t1xpv6m': {
      'en': 'Type message here ..',
      'fr': 'Tapez un message ici ..',
      'hi': 'यहां मैसेज टाइप करें..',
    },
    'tc9p0oeb': {
      'en': 'Emily',
      'fr': 'Emilie',
      'hi': 'एमिली',
    },
    'bvoavgtz': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // Miscellaneous
  {
    'cvghc4oo': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'pk1g0z40': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '2s7hmgu5': {
      'en': 'Permission required better search result',
      'fr': 'Autorisation requise meilleur résultat de recherche',
      'hi': 'अनुमति के लिए बेहतर खोज परिणाम की आवश्यकता है',
    },
    'tlwl8rup': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'c0xvjedy': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'adiq0sba': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '054yrqmz': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'o4qpowyu': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '2gza5e5h': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'l8167ead': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'tl4tdi9q': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'jzxn5rnb': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'u2fsaq5w': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'sihcd6wy': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'haatdsr2': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'n9eo9mtn': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'r5j8u35s': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'rp5fb7wf': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '154jwhpr': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'p37pawbt': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '2prqlfe7': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'bv7wliox': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '2wv65l6q': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '7id4xlc2': {
      'en': '',
      'fr': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
