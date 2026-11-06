package com.ax3.fishao.utils
{
   import flash.display.MovieClip;
   
   public class StaticCharacterViewMethods
   {
      
      public function StaticCharacterViewMethods()
      {
         super();
      }
      
      public static function setPropertyByName(param1:MovieClip, param2:String, param3:*) : MovieClip
      {
         var _loc4_:MovieClip = null;
         if(param1 != null)
         {
            _loc4_ = MovieClip(param1.getChildByName(param2));
            if(param3 is Boolean)
            {
               return setVisibleOfProperty(_loc4_,param3);
            }
            if(param3 == -1)
            {
               return setVisibleOfProperty(_loc4_,false);
            }
            setVisibleOfProperty(_loc4_,true);
            return setProperty(_loc4_,param3);
         }
         return null;
      }
      
      public static function setPropertyByNumber(param1:MovieClip, param2:int, param3:*) : MovieClip
      {
         var _loc4_:MovieClip = null;
         if(param1 != null && param2 >= 0)
         {
            if(param1.numChildren > 0)
            {
               _loc4_ = MovieClip(param1.getChildAt(param2));
               if(param3 is Boolean)
               {
                  return setVisibleOfProperty(_loc4_,param3);
               }
               return setProperty(_loc4_,param3);
            }
         }
         return null;
      }
      
      private static function setVisibleOfProperty(param1:MovieClip, param2:Boolean) : MovieClip
      {
         if(param1 != null)
         {
            param1.visible = param2;
         }
         return param1;
      }
      
      private static function setProperty(param1:MovieClip, param2:int) : MovieClip
      {
         if(param1 != null)
         {
            if(param2 > 0)
            {
               param1.visible = true;
               if(param1.totalFrames >= param2)
               {
                  param1.gotoAndStop(param2);
               }
               else
               {
                  param1.gotoAndStop("1");
               }
            }
            else
            {
               param1.visible = false;
            }
         }
         return param1;
      }
   }
}

