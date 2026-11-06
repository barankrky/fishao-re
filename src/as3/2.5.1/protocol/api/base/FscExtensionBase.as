package protocol.api.base
{
   import avmplus.getQualifiedClassName;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.junkbyte.console.Cc;
   
   public class FscExtensionBase extends _d23481b750999df4f0e00416
   {
      
      public function FscExtensionBase()
      {
         super();
      }
      
      public function loadInitData(param1:Function) : void
      {
         Cc.warn(getQualifiedClassName(this) + " do not override loadInitData. Simulate response for this extension.");
         if(param1 != null)
         {
            param1(null);
         }
      }
   }
}

