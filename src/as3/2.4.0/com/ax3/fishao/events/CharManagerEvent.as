package com.ax3.fishao.events
{
   import com.ax3.events.ExtEvent;
   
   public class CharManagerEvent extends ExtEvent
   {
      
      public static const UPDATE_CHAR_VIEW:String = "updateCharView";
      
      public static const UPDATE_AVATAR_VIEW:String = "updateAvatarView";
      
      public function CharManagerEvent(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
   }
}

