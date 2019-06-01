package processing.test.password_generator;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import processing.android.CompatUtils;
import processing.android.PFragment;
import processing.core.PApplet;
import processing.test.password_generator.password_generator;
import java.io.File;

public class MainActivity extends AppCompatActivity {

  static String Output;
  private PApplet sketch;
  private static ClipboardManager myClipboard;
  private static ClipData myClip;
  public static String state;


  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    //added in v1.12=========================================================
    SharedPreferences mPrefs = getSharedPreferences("label", 0);
    state = mPrefs.getString("Switch", "1");
    //=======================================================================
    FrameLayout frame = new FrameLayout(this);
    frame.setId(CompatUtils.getUniqueViewId());
    myClipboard = (ClipboardManager)getSystemService(CLIPBOARD_SERVICE);
    setContentView(frame, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                                                     ViewGroup.LayoutParams.MATCH_PARENT));
    
    sketch = new password_generator();
    
    PFragment fragment = new PFragment(sketch);
    fragment.setView(frame, this);
    try {
      trimCache(this);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
  
  @Override
  public void onRequestPermissionsResult(int requestCode, String permissions[], int[] grantResults) {
    if (sketch != null) {
      sketch.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }
  }  
  
  @Override
  public void onNewIntent(Intent intent) {
    if (sketch != null) {
      sketch.onNewIntent(intent);
    }  
  }
  
  @Override
  public void onActivityResult(int requestCode, int resultCode, Intent data) {
    if (sketch != null) {
      sketch.onActivityResult(requestCode, resultCode, data);
    }
  }  
  
  @Override
  public void onBackPressed() {
    //added in v1.12============================================================
    SharedPreferences mPrefs = getSharedPreferences("label", 0);
    SharedPreferences.Editor mEditor = mPrefs.edit();
    mEditor.putString("Switch", state).apply();
    if (sketch != null) {
      sketch.onBackPressed();
    }
  }

  //added in v1.12============================================================
  @Override
  protected void onPause(){
    super.onPause();
    SharedPreferences mPrefs = getSharedPreferences("label", 0);
    SharedPreferences.Editor mEditor = mPrefs.edit();
    mEditor.putString("Switch", state).apply();
  }

  @Override
  protected void onDestroy() {
    super.onDestroy();
    //added in v1.12============================================================
      SharedPreferences mPrefs = getSharedPreferences("label", 0);
      SharedPreferences.Editor mEditor = mPrefs.edit();
      mEditor.putString("Switch", state).apply();
    try {
      trimCache(this);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  public static void trimCache(Context context) {
    try {
      File dir = context.getCacheDir();
      if (dir != null && dir.isDirectory()) {
        deleteDir(dir);
      }
    } catch (Exception e) {
    }
  }

  public static boolean deleteDir(File dir) {
    if (dir != null && dir.isDirectory()) {
      String[] children = dir.list();
      for (int i = 0; i < children.length; i++) {
        boolean success = deleteDir(new File(dir, children[i]));
        if (!success) {
          return false;
        }
      }
    }

    // The directory is now empty so delete it
    return dir.delete();
  }



  static void Method1(String b){
    Output = b;
    myClip = ClipData.newPlainText("text", b);
    myClipboard.setPrimaryClip(myClip);
  }

}
