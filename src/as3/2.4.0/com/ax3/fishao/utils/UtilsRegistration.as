package com.ax3.fishao.utils
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.ConstantsBase;
   
   public class UtilsRegistration
   {
      
      public function UtilsRegistration()
      {
         super();
      }
      
      public static function validateRegistration(param1:String, param2:String, param3:String, param4:String) : Boolean
      {
         var _loc5_:Array = [];
         validateName(param1,_loc5_);
         validatePassword(param2,param3,_loc5_);
         validateBetaKey(param3,_loc5_);
         validateEmail(param4,_loc5_);
         if(_loc5_.length == 0)
         {
            return true;
         }
         GameSwf.processErrors(_loc5_);
         return false;
      }
      
      private static function validateName(param1:String, param2:Array) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1 == "")
         {
            param2.push(I18n.get("login_error_emptyUsername"));
         }
         else
         {
            if(param1.length < 3 || param1.length > 16)
            {
               param2.push(I18n.get("login_error_usernameLength"));
            }
            if(param1.match(ConstantsBase.USERNAME_REG_EXP_PATTERN) == null)
            {
               param2.push(I18n.get("login_error_usernameChars"));
            }
         }
      }
      
      private static function validatePassword(param1:String, param2:String, param3:Array) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1 == "")
         {
            param3.push(I18n.get("login_error_emptyPass"));
         }
         else
         {
            if(param1.length < 8 || param1.length > 72)
            {
               param3.push(I18n.get("login_error_passLength"));
            }
            if(!Config.IS_BETA && param1 != param2 && !Config.SKIP_CONFIRM_PASSWORD)
            {
               param3.push(I18n.get("login_error_passDoesNotMuch"));
            }
         }
      }
      
      private static function validateBetaKey(param1:String, param2:Array) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(Config.IS_BETA && param1 == "")
         {
            param2.push(I18n.get("BETA_KEY_IS_EMPTY"));
         }
      }
      
      private static function validateEmail(param1:String, param2:Array) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1 == "")
         {
            param2.push(I18n.get("login_error_emptyEmail"));
         }
         else if(param1.match(ConstantsBase.EMAIL_REG_EXP_PATTERN) == null)
         {
            param2.push(I18n.get("login_error_emailVerification"));
         }
      }
   }
}

