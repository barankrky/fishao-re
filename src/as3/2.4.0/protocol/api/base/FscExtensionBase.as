package protocol.api.base
{
   import avmplus.getQualifiedClassName;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.junkbyte.console.Cc;
   
   public class FscExtensionBase extends BaseFscExtension
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

