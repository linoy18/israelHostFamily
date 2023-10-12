import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).tertiary,
          child: Image.asset(
            'assets/images/___(3).png',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'login': ParameterData.none(),
  'homePage_MAIN': ParameterData.none(),
  'propertyDetails_Owner': (data) async => ParameterData(
        allParams: {
          'propertyRef': await getDocumentParameter<PropertiesRecord>(
              data, 'propertyRef', PropertiesRecord.fromSnapshot),
        },
      ),
  'searchProperties': (data) async => ParameterData(
        allParams: {
          'searchTerm': getParameter<String>(data, 'searchTerm'),
        },
      ),
  'profilePage': ParameterData.none(),
  'editProfile': (data) async => ParameterData(
        allParams: {
          'userProfile': await getDocumentParameter<UsersRecord>(
              data, 'userProfile', UsersRecord.fromSnapshot),
        },
      ),
  'changePassword': (data) async => ParameterData(
        allParams: {
          'userProfile': await getDocumentParameter<UsersRecord>(
              data, 'userProfile', UsersRecord.fromSnapshot),
        },
      ),
  'createProperty_1': (data) async => ParameterData(
        allParams: {
          'image': getParameter<String>(data, 'image'),
        },
      ),
  'createProperty_2': (data) async => ParameterData(
        allParams: {
          'propName': getParameter<String>(data, 'propName'),
          'propDescription': getParameter<String>(data, 'propDescription'),
          'propAddress': getParameter<String>(data, 'propAddress'),
          'propNeighborhood': getParameter<String>(data, 'propNeighborhood'),
          'mainImage': getParameter<String>(data, 'mainImage'),
          'neighborhood': getParameter<String>(data, 'neighborhood'),
        },
      ),
  'createProperty_3': (data) async => ParameterData(
        allParams: {
          'mainImage': getParameter<String>(data, 'mainImage'),
          'family': getParameter<bool>(data, 'family'),
          'couple': getParameter<bool>(data, 'couple'),
          'one': getParameter<bool>(data, 'one'),
          'secureDoor': getParameter<bool>(data, 'secureDoor'),
          'dog': getParameter<bool>(data, 'dog'),
          'cat': getParameter<bool>(data, 'cat'),
          'babyCrib': getParameter<bool>(data, 'babyCrib'),
          'acessability': getParameter<bool>(data, 'acessability'),
          'keepShabbat': getParameter<bool>(data, 'keepShabbat'),
          'keepKosher': getParameter<bool>(data, 'keepKosher'),
          'name': getParameter<String>(data, 'name'),
          'descriptioon': getParameter<String>(data, 'descriptioon'),
          'address': getParameter<String>(data, 'address'),
          'neighborhood': getParameter<String>(data, 'neighborhood'),
          'emptyHouse': getParameter<bool>(data, 'emptyHouse'),
        },
      ),
  'myProperties': ParameterData.none(),
  'editProperty_1': (data) async => ParameterData(
        allParams: {
          'propertyRef': await getDocumentParameter<PropertiesRecord>(
              data, 'propertyRef', PropertiesRecord.fromSnapshot),
        },
      ),
  'editProperty_2': (data) async => ParameterData(
        allParams: {
          'propertyRef': await getDocumentParameter<PropertiesRecord>(
              data, 'propertyRef', PropertiesRecord.fromSnapshot),
        },
      ),
  'editProperty_3': (data) async => ParameterData(
        allParams: {
          'propertyRef': await getDocumentParameter<PropertiesRecord>(
              data, 'propertyRef', PropertiesRecord.fromSnapshot),
        },
      ),
  'propertyDetails': (data) async => ParameterData(
        allParams: {
          'propertyRef': await getDocumentParameter<PropertiesRecord>(
              data, 'propertyRef', PropertiesRecord.fromSnapshot),
        },
      ),
  'PinCode': ParameterData.none(),
  'phoneNumber': ParameterData.none(),
  'createAccountCopy': ParameterData.none(),
  'loginCopy': ParameterData.none(),
  'contactDetails': (data) async => ParameterData(
        allParams: {
          'phoneNumber': getParameter<String>(data, 'phoneNumber'),
          'name': getParameter<String>(data, 'name'),
          'email': getParameter<String>(data, 'email'),
          'bio': getParameter<String>(data, 'bio'),
          'instagram': getParameter<String>(data, 'instagram'),
          'profileImage': getParameter<String>(data, 'profileImage'),
        },
      ),
  'filtersProp': ParameterData.none(),
  'searchPropertiesCopy': (data) async => ParameterData(
        allParams: {
          'searchTerm': getParameter<String>(data, 'searchTerm'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
