// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
// Autogenerated from Pigeon (v7.2.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

class PrimitiveHostApi {
  /// Constructor for [PrimitiveHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  PrimitiveHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = StandardMessageCodec();

  Future<int> anInt(int arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.anInt', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as int?)!;
    }
  }

  Future<bool> aBool(bool arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.aBool', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<String> aString(String arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.aString', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<double> aDouble(double arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.aDouble', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as double?)!;
    }
  }

  Future<Map<Object?, Object?>> aMap(Map<Object?, Object?> arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.aMap', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)!;
    }
  }

  Future<List<Object?>> aList(List<Object?> arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.aList', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as List<Object?>?)!;
    }
  }

  Future<Int32List> anInt32List(Int32List arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.anInt32List', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Int32List?)!;
    }
  }

  Future<List<bool?>> aBoolList(List<bool?> arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.aBoolList', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as List<Object?>?)!.cast<bool?>();
    }
  }

  Future<Map<String?, int?>> aStringIntMap(Map<String?, int?> arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.PrimitiveHostApi.aStringIntMap', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)!.cast<String?, int?>();
    }
  }
}

abstract class PrimitiveFlutterApi {
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  int anInt(int value);

  bool aBool(bool value);

  String aString(String value);

  double aDouble(double value);

  Map<Object?, Object?> aMap(Map<Object?, Object?> value);

  List<Object?> aList(List<Object?> value);

  Int32List anInt32List(Int32List value);

  List<bool?> aBoolList(List<bool?> value);

  Map<String?, int?> aStringIntMap(Map<String?, int?> value);

  static void setup(PrimitiveFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.anInt', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.anInt was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_value = (args[0] as int?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.anInt was null, expected non-null int.');
          final int output = api.anInt(arg_value!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.aBool', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aBool was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_value = (args[0] as bool?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aBool was null, expected non-null bool.');
          final bool output = api.aBool(arg_value!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.aString', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aString was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_value = (args[0] as String?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aString was null, expected non-null String.');
          final String output = api.aString(arg_value!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.aDouble', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aDouble was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final double? arg_value = (args[0] as double?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aDouble was null, expected non-null double.');
          final double output = api.aDouble(arg_value!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.aMap', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aMap was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final Map<Object?, Object?>? arg_value =
              (args[0] as Map<Object?, Object?>?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aMap was null, expected non-null Map<Object?, Object?>.');
          final Map<Object?, Object?> output = api.aMap(arg_value!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.aList', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aList was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final List<Object?>? arg_value = (args[0] as List<Object?>?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aList was null, expected non-null List<Object?>.');
          final List<Object?> output = api.aList(arg_value!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.anInt32List', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.anInt32List was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final Int32List? arg_value = (args[0] as Int32List?);
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.anInt32List was null, expected non-null Int32List.');
          final Int32List output = api.anInt32List(arg_value!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.aBoolList', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aBoolList was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final List<bool?>? arg_value =
              (args[0] as List<Object?>?)?.cast<bool?>();
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aBoolList was null, expected non-null List<bool?>.');
          final List<bool?> output = api.aBoolList(arg_value!);
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.PrimitiveFlutterApi.aStringIntMap', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aStringIntMap was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final Map<String?, int?>? arg_value =
              (args[0] as Map<Object?, Object?>?)?.cast<String?, int?>();
          assert(arg_value != null,
              'Argument for dev.flutter.pigeon.PrimitiveFlutterApi.aStringIntMap was null, expected non-null Map<String?, int?>.');
          final Map<String?, int?> output = api.aStringIntMap(arg_value!);
          return output;
        });
      }
    }
  }
}
