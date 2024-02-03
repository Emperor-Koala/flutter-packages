package io.flutter.plugins.videoplayer;

import java.util.Map;

public class VideoPlayerSystemControls {
    public final boolean enabled;
    public final boolean playPause;
    public final boolean seek;
    public final boolean skipForward;
    public final boolean skipBackward;
    public final int skipForwardInterval;
    public final int skipBackwardInterval;

    public VideoPlayerSystemControls(boolean enabled, boolean playPause, boolean seek, boolean skipForward, boolean skipBackward, int skipForwardInterval, int skipBackwardInterval) {
        this.enabled = enabled;
        this.playPause = playPause;
        this.seek = seek;
        this.skipForward = skipForward;
        this.skipBackward = skipBackward;
        this.skipForwardInterval = skipForwardInterval;
        this.skipBackwardInterval = skipBackwardInterval;
    }

    public static VideoPlayerSystemControls fromMap(Map<String, Object> map) {
        return new VideoPlayerSystemControls(
            (Boolean) map.get("enabled"),
            (Boolean) map.get("playPause"),
            (Boolean) map.get("seek"),
            (Boolean) map.get("skipForward"),
            (Boolean) map.get("skipBackward"),
            ((Double) map.get("skipForwardInterval")).intValue(),
            ((Double) map.get("skipBackwardInterval")).intValue());
    }
}
