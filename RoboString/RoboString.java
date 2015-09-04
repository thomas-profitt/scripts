import java.awt.event.KeyEvent;
import java.awt.event.InputEvent;
import java.awt.AWTException;

public class RoboString {
  public static void main(String args[]) {

    try {
      Keyboard keyboard = new Keyboard();

      System.out.printf("RoboString will type \"%s\" in 5 seconds.\n", args[0]);

      Thread.sleep(5000);
      keyboard.type(args[0]);
    } catch (Exception e) {
      e.printStackTrace();
    }

  }
}
