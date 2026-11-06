package com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel
{
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.fishao.view.wrappers.impl.profile.ProfileWrapper;
   import flash.text.TextField;
   
   public class UserInfoLabelWrapper extends ProfileWrapper implements IAssetWrapperRecursive
   {
      
      public var userLabelText:TextField;
      
      public var userLabelValueText:TextField;
      
      public function UserInfoLabelWrapper()
      {
         super();
      }
      
      public function set labelText(param1:String) : void
      {
         this.userLabelText.text = param1;
      }
      
      public function set labelValueText(param1:String) : void
      {
         this.userLabelValueText.text = param1;
      }
   }
}

