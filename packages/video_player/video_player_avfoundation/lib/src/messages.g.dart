// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v13.1.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

PlatformException _createConnectionError(String channelName) {
  return PlatformException(
    code: 'channel-error',
    message: 'Unable to establish connection on channel: "$channelName".',
  );
}

class TextureMessage {
  TextureMessage({
    required this.textureId,
  });

  int textureId;

  Object encode() {
    return <Object?>[
      textureId,
    ];
  }

  static TextureMessage decode(Object result) {
    result as List<Object?>;
    return TextureMessage(
      textureId: result[0]! as int,
    );
  }
}

class LoopingMessage {
  LoopingMessage({
    required this.textureId,
    required this.isLooping,
  });

  int textureId;

  bool isLooping;

  Object encode() {
    return <Object?>[
      textureId,
      isLooping,
    ];
  }

  static LoopingMessage decode(Object result) {
    result as List<Object?>;
    return LoopingMessage(
      textureId: result[0]! as int,
      isLooping: result[1]! as bool,
    );
  }
}

class VolumeMessage {
  VolumeMessage({
    required this.textureId,
    required this.volume,
  });

  int textureId;

  double volume;

  Object encode() {
    return <Object?>[
      textureId,
      volume,
    ];
  }

  static VolumeMessage decode(Object result) {
    result as List<Object?>;
    return VolumeMessage(
      textureId: result[0]! as int,
      volume: result[1]! as double,
    );
  }
}

class PlaybackSpeedMessage {
  PlaybackSpeedMessage({
    required this.textureId,
    required this.speed,
  });

  int textureId;

  double speed;

  Object encode() {
    return <Object?>[
      textureId,
      speed,
    ];
  }

  static PlaybackSpeedMessage decode(Object result) {
    result as List<Object?>;
    return PlaybackSpeedMessage(
      textureId: result[0]! as int,
      speed: result[1]! as double,
    );
  }
}

class PositionMessage {
  PositionMessage({
    required this.textureId,
    required this.position,
  });

  int textureId;

  int position;

  Object encode() {
    return <Object?>[
      textureId,
      position,
    ];
  }

  static PositionMessage decode(Object result) {
    result as List<Object?>;
    return PositionMessage(
      textureId: result[0]! as int,
      position: result[1]! as int,
    );
  }
}

class CreateMessage {
  CreateMessage({
    this.asset,
    this.uri,
    this.packageName,
    this.formatHint,
    required this.httpHeaders,
  });

  String? asset;

  String? uri;

  String? packageName;

  String? formatHint;

  Map<String?, String?> httpHeaders;

  Object encode() {
    return <Object?>[
      asset,
      uri,
      packageName,
      formatHint,
      httpHeaders,
    ];
  }

  static CreateMessage decode(Object result) {
    result as List<Object?>;
    return CreateMessage(
      asset: result[0] as String?,
      uri: result[1] as String?,
      packageName: result[2] as String?,
      formatHint: result[3] as String?,
      httpHeaders: (result[4] as Map<Object?, Object?>?)!.cast<String?, String?>(),
    );
  }
}

class MixWithOthersMessage {
  MixWithOthersMessage({
    required this.mixWithOthers,
  });

  bool mixWithOthers;

  Object encode() {
    return <Object?>[
      mixWithOthers,
    ];
  }

  static MixWithOthersMessage decode(Object result) {
    result as List<Object?>;
    return MixWithOthersMessage(
      mixWithOthers: result[0]! as bool,
    );
  }
}

class SystemControlsMessage {
  SystemControlsMessage({
    required this.textureId,
    required this.controls,
  });

  int textureId;

  Map<String?, dynamic?> controls;

  Object encode() {
    return <Object?>[
      textureId,
      controls,
    ];
  }

  static SystemControlsMessage decode(Object result) {
    result as List<Object?>;
    return SystemControlsMessage(
      textureId: result[0]! as int,
      controls: (result[1] as Map<Object?, Object?>?)!.cast<String?, dynamic?>(),
    );
  }
}

class _AVFoundationVideoPlayerApiCodec extends StandardMessageCodec {
  const _AVFoundationVideoPlayerApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is CreateMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is LoopingMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is MixWithOthersMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PlaybackSpeedMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PositionMessage) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is SystemControlsMessage) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is TextureMessage) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is VolumeMessage) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is dynamic) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return CreateMessage.decode(readValue(buffer)!);
      case 129: 
        return LoopingMessage.decode(readValue(buffer)!);
      case 130: 
        return MixWithOthersMessage.decode(readValue(buffer)!);
      case 131: 
        return PlaybackSpeedMessage.decode(readValue(buffer)!);
      case 132: 
        return PositionMessage.decode(readValue(buffer)!);
      case 133: 
        return SystemControlsMessage.decode(readValue(buffer)!);
      case 134: 
        return TextureMessage.decode(readValue(buffer)!);
      case 135: 
        return VolumeMessage.decode(readValue(buffer)!);
      case 136: 
        return dynamic.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class AVFoundationVideoPlayerApi {
  /// Constructor for [AVFoundationVideoPlayerApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  AVFoundationVideoPlayerApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _AVFoundationVideoPlayerApiCodec();

  Future<void> initialize() async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.initialize';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<TextureMessage> create(CreateMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.create';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
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
      return (replyList[0] as TextureMessage?)!;
    }
  }

  Future<void> dispose(TextureMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.dispose';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setLooping(LoopingMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.setLooping';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setVolume(VolumeMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.setVolume';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setPlaybackSpeed(PlaybackSpeedMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.setPlaybackSpeed';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> play(TextureMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.play';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<PositionMessage> position(TextureMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.position';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
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
      return (replyList[0] as PositionMessage?)!;
    }
  }

  Future<void> seekTo(PositionMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.seekTo';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> pause(TextureMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.pause';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setMixWithOthers(MixWithOthersMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.setMixWithOthers';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setSystemControls(SystemControlsMessage arg_msg) async {
    const String channelName = 'dev.flutter.pigeon.video_player_avfoundation.AVFoundationVideoPlayerApi.setSystemControls';
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
      channelName,
      codec,
      binaryMessenger: _binaryMessenger,
    );
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw _createConnectionError(channelName);
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}
