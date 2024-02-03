// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v9.2.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon

package io.flutter.plugins.videoplayer;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** Generated class from Pigeon. */
@SuppressWarnings({"unused", "unchecked", "CodeBlock2Expr", "RedundantSuppression", "serial"})
public class Messages {

  /** Error class for passing custom error details to Flutter via a thrown PlatformException. */
  public static class FlutterError extends RuntimeException {

    /** The error code. */
    public final String code;

    /** The error details. Must be a datatype supported by the api codec. */
    public final Object details;

    public FlutterError(@NonNull String code, @Nullable String message, @Nullable Object details) 
    {
      super(message);
      this.code = code;
      this.details = details;
    }
  }

  @NonNull
  protected static ArrayList<Object> wrapError(@NonNull Throwable exception) {
    ArrayList<Object> errorList = new ArrayList<Object>(3);
    if (exception instanceof FlutterError) {
      FlutterError error = (FlutterError) exception;
      errorList.add(error.code);
      errorList.add(error.getMessage());
      errorList.add(error.details);
    } else {
      errorList.add(exception.toString());
      errorList.add(exception.getClass().getSimpleName());
      errorList.add(
        "Cause: " + exception.getCause() + ", Stacktrace: " + Log.getStackTraceString(exception));
    }
    return errorList;
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class TextureMessage {
    private @NonNull Long textureId;

    public @NonNull Long getTextureId() {
      return textureId;
    }

    public void setTextureId(@NonNull Long setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"textureId\" is null.");
      }
      this.textureId = setterArg;
    }

    /** Constructor is non-public to enforce null safety; use Builder. */
    TextureMessage() {}

    public static final class Builder {

      private @Nullable Long textureId;

      public @NonNull Builder setTextureId(@NonNull Long setterArg) {
        this.textureId = setterArg;
        return this;
      }

      public @NonNull TextureMessage build() {
        TextureMessage pigeonReturn = new TextureMessage();
        pigeonReturn.setTextureId(textureId);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(1);
      toListResult.add(textureId);
      return toListResult;
    }

    static @NonNull TextureMessage fromList(@NonNull ArrayList<Object> list) {
      TextureMessage pigeonResult = new TextureMessage();
      Object textureId = list.get(0);
      pigeonResult.setTextureId((textureId == null) ? null : ((textureId instanceof Integer) ? (Integer) textureId : (Long) textureId));
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class LoopingMessage {
    private @NonNull Long textureId;

    public @NonNull Long getTextureId() {
      return textureId;
    }

    public void setTextureId(@NonNull Long setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"textureId\" is null.");
      }
      this.textureId = setterArg;
    }

    private @NonNull Boolean isLooping;

    public @NonNull Boolean getIsLooping() {
      return isLooping;
    }

    public void setIsLooping(@NonNull Boolean setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"isLooping\" is null.");
      }
      this.isLooping = setterArg;
    }

    /** Constructor is non-public to enforce null safety; use Builder. */
    LoopingMessage() {}

    public static final class Builder {

      private @Nullable Long textureId;

      public @NonNull Builder setTextureId(@NonNull Long setterArg) {
        this.textureId = setterArg;
        return this;
      }

      private @Nullable Boolean isLooping;

      public @NonNull Builder setIsLooping(@NonNull Boolean setterArg) {
        this.isLooping = setterArg;
        return this;
      }

      public @NonNull LoopingMessage build() {
        LoopingMessage pigeonReturn = new LoopingMessage();
        pigeonReturn.setTextureId(textureId);
        pigeonReturn.setIsLooping(isLooping);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(2);
      toListResult.add(textureId);
      toListResult.add(isLooping);
      return toListResult;
    }

    static @NonNull LoopingMessage fromList(@NonNull ArrayList<Object> list) {
      LoopingMessage pigeonResult = new LoopingMessage();
      Object textureId = list.get(0);
      pigeonResult.setTextureId((textureId == null) ? null : ((textureId instanceof Integer) ? (Integer) textureId : (Long) textureId));
      Object isLooping = list.get(1);
      pigeonResult.setIsLooping((Boolean) isLooping);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class VolumeMessage {
    private @NonNull Long textureId;

    public @NonNull Long getTextureId() {
      return textureId;
    }

    public void setTextureId(@NonNull Long setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"textureId\" is null.");
      }
      this.textureId = setterArg;
    }

    private @NonNull Double volume;

    public @NonNull Double getVolume() {
      return volume;
    }

    public void setVolume(@NonNull Double setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"volume\" is null.");
      }
      this.volume = setterArg;
    }

    /** Constructor is non-public to enforce null safety; use Builder. */
    VolumeMessage() {}

    public static final class Builder {

      private @Nullable Long textureId;

      public @NonNull Builder setTextureId(@NonNull Long setterArg) {
        this.textureId = setterArg;
        return this;
      }

      private @Nullable Double volume;

      public @NonNull Builder setVolume(@NonNull Double setterArg) {
        this.volume = setterArg;
        return this;
      }

      public @NonNull VolumeMessage build() {
        VolumeMessage pigeonReturn = new VolumeMessage();
        pigeonReturn.setTextureId(textureId);
        pigeonReturn.setVolume(volume);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(2);
      toListResult.add(textureId);
      toListResult.add(volume);
      return toListResult;
    }

    static @NonNull VolumeMessage fromList(@NonNull ArrayList<Object> list) {
      VolumeMessage pigeonResult = new VolumeMessage();
      Object textureId = list.get(0);
      pigeonResult.setTextureId((textureId == null) ? null : ((textureId instanceof Integer) ? (Integer) textureId : (Long) textureId));
      Object volume = list.get(1);
      pigeonResult.setVolume((Double) volume);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class PlaybackSpeedMessage {
    private @NonNull Long textureId;

    public @NonNull Long getTextureId() {
      return textureId;
    }

    public void setTextureId(@NonNull Long setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"textureId\" is null.");
      }
      this.textureId = setterArg;
    }

    private @NonNull Double speed;

    public @NonNull Double getSpeed() {
      return speed;
    }

    public void setSpeed(@NonNull Double setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"speed\" is null.");
      }
      this.speed = setterArg;
    }

    /** Constructor is non-public to enforce null safety; use Builder. */
    PlaybackSpeedMessage() {}

    public static final class Builder {

      private @Nullable Long textureId;

      public @NonNull Builder setTextureId(@NonNull Long setterArg) {
        this.textureId = setterArg;
        return this;
      }

      private @Nullable Double speed;

      public @NonNull Builder setSpeed(@NonNull Double setterArg) {
        this.speed = setterArg;
        return this;
      }

      public @NonNull PlaybackSpeedMessage build() {
        PlaybackSpeedMessage pigeonReturn = new PlaybackSpeedMessage();
        pigeonReturn.setTextureId(textureId);
        pigeonReturn.setSpeed(speed);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(2);
      toListResult.add(textureId);
      toListResult.add(speed);
      return toListResult;
    }

    static @NonNull PlaybackSpeedMessage fromList(@NonNull ArrayList<Object> list) {
      PlaybackSpeedMessage pigeonResult = new PlaybackSpeedMessage();
      Object textureId = list.get(0);
      pigeonResult.setTextureId((textureId == null) ? null : ((textureId instanceof Integer) ? (Integer) textureId : (Long) textureId));
      Object speed = list.get(1);
      pigeonResult.setSpeed((Double) speed);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class PositionMessage {
    private @NonNull Long textureId;

    public @NonNull Long getTextureId() {
      return textureId;
    }

    public void setTextureId(@NonNull Long setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"textureId\" is null.");
      }
      this.textureId = setterArg;
    }

    private @NonNull Long position;

    public @NonNull Long getPosition() {
      return position;
    }

    public void setPosition(@NonNull Long setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"position\" is null.");
      }
      this.position = setterArg;
    }

    /** Constructor is non-public to enforce null safety; use Builder. */
    PositionMessage() {}

    public static final class Builder {

      private @Nullable Long textureId;

      public @NonNull Builder setTextureId(@NonNull Long setterArg) {
        this.textureId = setterArg;
        return this;
      }

      private @Nullable Long position;

      public @NonNull Builder setPosition(@NonNull Long setterArg) {
        this.position = setterArg;
        return this;
      }

      public @NonNull PositionMessage build() {
        PositionMessage pigeonReturn = new PositionMessage();
        pigeonReturn.setTextureId(textureId);
        pigeonReturn.setPosition(position);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(2);
      toListResult.add(textureId);
      toListResult.add(position);
      return toListResult;
    }

    static @NonNull PositionMessage fromList(@NonNull ArrayList<Object> list) {
      PositionMessage pigeonResult = new PositionMessage();
      Object textureId = list.get(0);
      pigeonResult.setTextureId((textureId == null) ? null : ((textureId instanceof Integer) ? (Integer) textureId : (Long) textureId));
      Object position = list.get(1);
      pigeonResult.setPosition((position == null) ? null : ((position instanceof Integer) ? (Integer) position : (Long) position));
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class CreateMessage {
    private @Nullable String asset;

    public @Nullable String getAsset() {
      return asset;
    }

    public void setAsset(@Nullable String setterArg) {
      this.asset = setterArg;
    }

    private @Nullable String uri;

    public @Nullable String getUri() {
      return uri;
    }

    public void setUri(@Nullable String setterArg) {
      this.uri = setterArg;
    }

    private @Nullable String packageName;

    public @Nullable String getPackageName() {
      return packageName;
    }

    public void setPackageName(@Nullable String setterArg) {
      this.packageName = setterArg;
    }

    private @Nullable String formatHint;

    public @Nullable String getFormatHint() {
      return formatHint;
    }

    public void setFormatHint(@Nullable String setterArg) {
      this.formatHint = setterArg;
    }

    private @NonNull Map<String, String> httpHeaders;

    public @NonNull Map<String, String> getHttpHeaders() {
      return httpHeaders;
    }

    public void setHttpHeaders(@NonNull Map<String, String> setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"httpHeaders\" is null.");
      }
      this.httpHeaders = setterArg;
    }

    /** Constructor is non-public to enforce null safety; use Builder. */
    CreateMessage() {}

    public static final class Builder {

      private @Nullable String asset;

      public @NonNull Builder setAsset(@Nullable String setterArg) {
        this.asset = setterArg;
        return this;
      }

      private @Nullable String uri;

      public @NonNull Builder setUri(@Nullable String setterArg) {
        this.uri = setterArg;
        return this;
      }

      private @Nullable String packageName;

      public @NonNull Builder setPackageName(@Nullable String setterArg) {
        this.packageName = setterArg;
        return this;
      }

      private @Nullable String formatHint;

      public @NonNull Builder setFormatHint(@Nullable String setterArg) {
        this.formatHint = setterArg;
        return this;
      }

      private @Nullable Map<String, String> httpHeaders;

      public @NonNull Builder setHttpHeaders(@NonNull Map<String, String> setterArg) {
        this.httpHeaders = setterArg;
        return this;
      }

      public @NonNull CreateMessage build() {
        CreateMessage pigeonReturn = new CreateMessage();
        pigeonReturn.setAsset(asset);
        pigeonReturn.setUri(uri);
        pigeonReturn.setPackageName(packageName);
        pigeonReturn.setFormatHint(formatHint);
        pigeonReturn.setHttpHeaders(httpHeaders);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(5);
      toListResult.add(asset);
      toListResult.add(uri);
      toListResult.add(packageName);
      toListResult.add(formatHint);
      toListResult.add(httpHeaders);
      return toListResult;
    }

    static @NonNull CreateMessage fromList(@NonNull ArrayList<Object> list) {
      CreateMessage pigeonResult = new CreateMessage();
      Object asset = list.get(0);
      pigeonResult.setAsset((String) asset);
      Object uri = list.get(1);
      pigeonResult.setUri((String) uri);
      Object packageName = list.get(2);
      pigeonResult.setPackageName((String) packageName);
      Object formatHint = list.get(3);
      pigeonResult.setFormatHint((String) formatHint);
      Object httpHeaders = list.get(4);
      pigeonResult.setHttpHeaders((Map<String, String>) httpHeaders);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class MixWithOthersMessage {
    private @NonNull Boolean mixWithOthers;

    public @NonNull Boolean getMixWithOthers() {
      return mixWithOthers;
    }

    public void setMixWithOthers(@NonNull Boolean setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"mixWithOthers\" is null.");
      }
      this.mixWithOthers = setterArg;
    }

    /** Constructor is non-public to enforce null safety; use Builder. */
    MixWithOthersMessage() {}

    public static final class Builder {

      private @Nullable Boolean mixWithOthers;

      public @NonNull Builder setMixWithOthers(@NonNull Boolean setterArg) {
        this.mixWithOthers = setterArg;
        return this;
      }

      public @NonNull MixWithOthersMessage build() {
        MixWithOthersMessage pigeonReturn = new MixWithOthersMessage();
        pigeonReturn.setMixWithOthers(mixWithOthers);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(1);
      toListResult.add(mixWithOthers);
      return toListResult;
    }

    static @NonNull MixWithOthersMessage fromList(@NonNull ArrayList<Object> list) {
      MixWithOthersMessage pigeonResult = new MixWithOthersMessage();
      Object mixWithOthers = list.get(0);
      pigeonResult.setMixWithOthers((Boolean) mixWithOthers);
      return pigeonResult;
    }
  }

  /** Generated class from Pigeon that represents data sent in messages. */
  public static final class SystemControlsMessage {
    private @NonNull Long textureId;

    public @NonNull Long getTextureId() {
      return textureId;
    }

    public void setTextureId(@NonNull Long setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"textureId\" is null.");
      }
      this.textureId = setterArg;
    }

    private @NonNull Map<String, dynamic> controls;

    public @NonNull Map<String, dynamic> getControls() {
      return controls;
    }

    public void setControls(@NonNull Map<String, dynamic> setterArg) {
      if (setterArg == null) {
        throw new IllegalStateException("Nonnull field \"controls\" is null.");
      }
      this.controls = setterArg;
    }

    /** Constructor is non-public to enforce null safety; use Builder. */
    SystemControlsMessage() {}

    public static final class Builder {

      private @Nullable Long textureId;

      public @NonNull Builder setTextureId(@NonNull Long setterArg) {
        this.textureId = setterArg;
        return this;
      }

      private @Nullable Map<String, dynamic> controls;

      public @NonNull Builder setControls(@NonNull Map<String, dynamic> setterArg) {
        this.controls = setterArg;
        return this;
      }

      public @NonNull SystemControlsMessage build() {
        SystemControlsMessage pigeonReturn = new SystemControlsMessage();
        pigeonReturn.setTextureId(textureId);
        pigeonReturn.setControls(controls);
        return pigeonReturn;
      }
    }

    @NonNull
    ArrayList<Object> toList() {
      ArrayList<Object> toListResult = new ArrayList<Object>(2);
      toListResult.add(textureId);
      toListResult.add(controls);
      return toListResult;
    }

    static @NonNull SystemControlsMessage fromList(@NonNull ArrayList<Object> list) {
      SystemControlsMessage pigeonResult = new SystemControlsMessage();
      Object textureId = list.get(0);
      pigeonResult.setTextureId((textureId == null) ? null : ((textureId instanceof Integer) ? (Integer) textureId : (Long) textureId));
      Object controls = list.get(1);
      pigeonResult.setControls((Map<String, dynamic>) controls);
      return pigeonResult;
    }
  }

  private static class AndroidVideoPlayerApiCodec extends StandardMessageCodec {
    public static final AndroidVideoPlayerApiCodec INSTANCE = new AndroidVideoPlayerApiCodec();

    private AndroidVideoPlayerApiCodec() {}

    @Override
    protected Object readValueOfType(byte type, @NonNull ByteBuffer buffer) {
      switch (type) {
        case (byte) 128:
          return CreateMessage.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 129:
          return LoopingMessage.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 130:
          return MixWithOthersMessage.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 131:
          return PlaybackSpeedMessage.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 132:
          return PositionMessage.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 133:
          return SystemControlsMessage.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 134:
          return TextureMessage.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 135:
          return VolumeMessage.fromList((ArrayList<Object>) readValue(buffer));
        case (byte) 136:
          return dynamic.fromList((ArrayList<Object>) readValue(buffer));
        default:
          return super.readValueOfType(type, buffer);
      }
    }

    @Override
    protected void writeValue(@NonNull ByteArrayOutputStream stream, Object value) {
      if (value instanceof CreateMessage) {
        stream.write(128);
        writeValue(stream, ((CreateMessage) value).toList());
      } else if (value instanceof LoopingMessage) {
        stream.write(129);
        writeValue(stream, ((LoopingMessage) value).toList());
      } else if (value instanceof MixWithOthersMessage) {
        stream.write(130);
        writeValue(stream, ((MixWithOthersMessage) value).toList());
      } else if (value instanceof PlaybackSpeedMessage) {
        stream.write(131);
        writeValue(stream, ((PlaybackSpeedMessage) value).toList());
      } else if (value instanceof PositionMessage) {
        stream.write(132);
        writeValue(stream, ((PositionMessage) value).toList());
      } else if (value instanceof SystemControlsMessage) {
        stream.write(133);
        writeValue(stream, ((SystemControlsMessage) value).toList());
      } else if (value instanceof TextureMessage) {
        stream.write(134);
        writeValue(stream, ((TextureMessage) value).toList());
      } else if (value instanceof VolumeMessage) {
        stream.write(135);
        writeValue(stream, ((VolumeMessage) value).toList());
      } else if (value instanceof dynamic) {
        stream.write(136);
        writeValue(stream, ((dynamic) value).toList());
      } else {
        super.writeValue(stream, value);
      }
    }
  }

  /** Generated interface from Pigeon that represents a handler of messages from Flutter. */
  public interface AndroidVideoPlayerApi {

    void initialize();

    @NonNull 
    TextureMessage create(@NonNull CreateMessage msg);

    void dispose(@NonNull TextureMessage msg);

    void setLooping(@NonNull LoopingMessage msg);

    void setVolume(@NonNull VolumeMessage msg);

    void setPlaybackSpeed(@NonNull PlaybackSpeedMessage msg);

    void play(@NonNull TextureMessage msg);

    @NonNull 
    PositionMessage position(@NonNull TextureMessage msg);

    void seekTo(@NonNull PositionMessage msg);

    void pause(@NonNull TextureMessage msg);

    void setMixWithOthers(@NonNull MixWithOthersMessage msg);

    void setSystemControls(@NonNull SystemControlsMessage msg);

    /** The codec used by AndroidVideoPlayerApi. */
    static @NonNull MessageCodec<Object> getCodec() {
      return AndroidVideoPlayerApiCodec.INSTANCE;
    }
    /**Sets up an instance of `AndroidVideoPlayerApi` to handle messages through the `binaryMessenger`. */
    static void setup(@NonNull BinaryMessenger binaryMessenger, @Nullable AndroidVideoPlayerApi api) {
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.initialize", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                try {
                  api.initialize();
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.create", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                CreateMessage msgArg = (CreateMessage) args.get(0);
                try {
                  TextureMessage output = api.create(msgArg);
                  wrapped.add(0, output);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.dispose", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                TextureMessage msgArg = (TextureMessage) args.get(0);
                try {
                  api.dispose(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setLooping", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                LoopingMessage msgArg = (LoopingMessage) args.get(0);
                try {
                  api.setLooping(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setVolume", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                VolumeMessage msgArg = (VolumeMessage) args.get(0);
                try {
                  api.setVolume(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setPlaybackSpeed", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                PlaybackSpeedMessage msgArg = (PlaybackSpeedMessage) args.get(0);
                try {
                  api.setPlaybackSpeed(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.play", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                TextureMessage msgArg = (TextureMessage) args.get(0);
                try {
                  api.play(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.position", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                TextureMessage msgArg = (TextureMessage) args.get(0);
                try {
                  PositionMessage output = api.position(msgArg);
                  wrapped.add(0, output);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.seekTo", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                PositionMessage msgArg = (PositionMessage) args.get(0);
                try {
                  api.seekTo(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.pause", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                TextureMessage msgArg = (TextureMessage) args.get(0);
                try {
                  api.pause(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setMixWithOthers", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                MixWithOthersMessage msgArg = (MixWithOthersMessage) args.get(0);
                try {
                  api.setMixWithOthers(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
      {
        BasicMessageChannel<Object> channel =
            new BasicMessageChannel<>(
                binaryMessenger, "dev.flutter.pigeon.AndroidVideoPlayerApi.setSystemControls", getCodec());
        if (api != null) {
          channel.setMessageHandler(
              (message, reply) -> {
                ArrayList<Object> wrapped = new ArrayList<Object>();
                ArrayList<Object> args = (ArrayList<Object>) message;
                SystemControlsMessage msgArg = (SystemControlsMessage) args.get(0);
                try {
                  api.setSystemControls(msgArg);
                  wrapped.add(0, null);
                }
 catch (Throwable exception) {
                  ArrayList<Object> wrappedError = wrapError(exception);
                  wrapped = wrappedError;
                }
                reply.reply(wrapped);
              });
        } else {
          channel.setMessageHandler(null);
        }
      }
    }
  }
}
