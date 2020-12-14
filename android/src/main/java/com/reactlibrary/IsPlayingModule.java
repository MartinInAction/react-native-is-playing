
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.Promise;

import android.media.AudioManager;

import android.util.Log;

public class IsPlayingModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public IsPlayingModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @ReactMethod
  public void isAudioPlaying(Callback callback) {
    AudioManager manager = (AudioManager) reactContext.getSystemService(reactContext.AUDIO_SERVICE);
    boolean res = manager.isMusicActive();
    callback.invoke(res);
  }

  @Override
  public String getName() {
    return "IsPlaying";
  }
}
