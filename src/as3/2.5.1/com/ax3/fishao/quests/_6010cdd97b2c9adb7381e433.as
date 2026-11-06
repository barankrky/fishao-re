package com.ax3.fishao.quests
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   
   public class _6010cdd97b2c9adb7381e433 extends _ef35c5b7acd3132a397260e8
   {
      
      private var _9569ff5cca91839af8e3f3d2:Boolean;
      
      public function _6010cdd97b2c9adb7381e433()
      {
         super();
      }
      
      public function get pirateCaveAccessible() : Boolean
      {
         return this._9569ff5cca91839af8e3f3d2;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         this._9569ff5cca91839af8e3f3d2 = Debug.getPropertyOrDefault(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႌၢႦႡၟဴკႺდၣწაဠႋსၪာჟဴဂႝာဨ၀ႝဤၺယြ႖ႾၼႡ၅ႍၥံႍၮႱဂႁႊဈႲဒဣჵဝႩცၳ","ცკჃႫ၄ဂ႕჈ၭოဨ၎ၹႉ႙ဪ"),this._9569ff5cca91839af8e3f3d2);
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.updateWithType(_6b63fd0a4028eb279b227831.ECU_QUESTS_PIRATE_CAVE_INFO_UPDATED);
         }
      }
   }
}

