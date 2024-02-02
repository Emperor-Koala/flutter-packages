// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v13.1.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class FVPTextureMessage;
@class FVPLoopingMessage;
@class FVPVolumeMessage;
@class FVPPlaybackSpeedMessage;
@class FVPPositionMessage;
@class FVPCreateMessage;
@class FVPMixWithOthersMessage;
@class FVPSystemControlsMessage;

@interface FVPTextureMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithTextureId:(NSInteger )textureId;
@property(nonatomic, assign) NSInteger  textureId;
@end

@interface FVPLoopingMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithTextureId:(NSInteger )textureId
    isLooping:(BOOL )isLooping;
@property(nonatomic, assign) NSInteger  textureId;
@property(nonatomic, assign) BOOL  isLooping;
@end

@interface FVPVolumeMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithTextureId:(NSInteger )textureId
    volume:(double )volume;
@property(nonatomic, assign) NSInteger  textureId;
@property(nonatomic, assign) double  volume;
@end

@interface FVPPlaybackSpeedMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithTextureId:(NSInteger )textureId
    speed:(double )speed;
@property(nonatomic, assign) NSInteger  textureId;
@property(nonatomic, assign) double  speed;
@end

@interface FVPPositionMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithTextureId:(NSInteger )textureId
    position:(NSInteger )position;
@property(nonatomic, assign) NSInteger  textureId;
@property(nonatomic, assign) NSInteger  position;
@end

@interface FVPCreateMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithAsset:(nullable NSString *)asset
    uri:(nullable NSString *)uri
    packageName:(nullable NSString *)packageName
    formatHint:(nullable NSString *)formatHint
    httpHeaders:(NSDictionary<NSString *, NSString *> *)httpHeaders;
@property(nonatomic, copy, nullable) NSString * asset;
@property(nonatomic, copy, nullable) NSString * uri;
@property(nonatomic, copy, nullable) NSString * packageName;
@property(nonatomic, copy, nullable) NSString * formatHint;
@property(nonatomic, copy) NSDictionary<NSString *, NSString *> * httpHeaders;
@end

@interface FVPMixWithOthersMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithMixWithOthers:(BOOL )mixWithOthers;
@property(nonatomic, assign) BOOL  mixWithOthers;
@end

@interface FVPSystemControlsMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithTextureId:(NSInteger )textureId
    playPause:(BOOL )playPause
    seek:(BOOL )seek
    skipForward:(BOOL )skipForward
    skipBackward:(BOOL )skipBackward
    skipForwardIntervalMillis:(NSInteger )skipForwardIntervalMillis
    skipBackwardIntervalMillis:(NSInteger )skipBackwardIntervalMillis;
@property(nonatomic, assign) NSInteger  textureId;
@property(nonatomic, assign) BOOL  playPause;
@property(nonatomic, assign) BOOL  seek;
@property(nonatomic, assign) BOOL  skipForward;
@property(nonatomic, assign) BOOL  skipBackward;
@property(nonatomic, assign) NSInteger  skipForwardIntervalMillis;
@property(nonatomic, assign) NSInteger  skipBackwardIntervalMillis;
@end

/// The codec used by FVPAVFoundationVideoPlayerApi.
NSObject<FlutterMessageCodec> *FVPAVFoundationVideoPlayerApiGetCodec(void);

@protocol FVPAVFoundationVideoPlayerApi
- (void)initialize:(FlutterError *_Nullable *_Nonnull)error;
/// @return `nil` only when `error != nil`.
- (nullable FVPTextureMessage *)create:(FVPCreateMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)dispose:(FVPTextureMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setLooping:(FVPLoopingMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setVolume:(FVPVolumeMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setPlaybackSpeed:(FVPPlaybackSpeedMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)play:(FVPTextureMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
/// @return `nil` only when `error != nil`.
- (nullable FVPPositionMessage *)position:(FVPTextureMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)seekTo:(FVPPositionMessage *)msg completion:(void (^)(FlutterError *_Nullable))completion;
- (void)pause:(FVPTextureMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setMixWithOthers:(FVPMixWithOthersMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setBackgroundControls:(FVPSystemControlsMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
@end

extern void SetUpFVPAVFoundationVideoPlayerApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FVPAVFoundationVideoPlayerApi> *_Nullable api);

NS_ASSUME_NONNULL_END
