package com.ax3.fishao.view.dialogs.wheel_of_fortune.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune._df20fdc8a8e13ab9c2eda4a6;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune._ebfae60a420fd1c3ccdd4d9b;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.controllers._8b5a0f5d1b44f92643a00889;
   import flash.events.MouseEvent;
   
   public class _71c0400bb5e99a570bef8231 extends _df20fdc8a8e13ab9c2eda4a6
   {
      
      private var _89cef3ec70fda74d3ee1267c:_8b5a0f5d1b44f92643a00889;
      
      private var _77cd1aaf214f4957277a40d5:Boolean;
      
      private var _1620b9b0f4fcbd076c301738:_ebfae60a420fd1c3ccdd4d9b;
      
      public function _71c0400bb5e99a570bef8231()
      {
         super();
         this._1620b9b0f4fcbd076c301738 = GameSwf.instance.managerWheelOfFortune;
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_WHEEL_OF_FORTUNE;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._89cef3ec70fda74d3ee1267c = new _8b5a0f5d1b44f92643a00889(_asset);
         this._77cd1aaf214f4957277a40d5 = false;
      }
      
      override protected function _ba7fe333230ac51496d90cb8(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x27F07D2B ^ -83122026 ^ 0x4E1B6A03 ^ 0x122EA7D1;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5E1E3187 ^ 0x1FDCF4AA ^ 0x45BD762D ^ -2068731026))
            {
               case 0:
                  GameSwf.currentLocationDialog._7bb43154089445b88b02842d(app.user.experience);
                  this._1620b9b0f4fcbd076c301738._a2274ce864a659668f73ffff();
                  super._ba7fe333230ac51496d90cb8(param1);
                  return;
               case 1:
                  if(this._77cd1aaf214f4957277a40d5)
                  {
                     _loc2_ = 0x13615468 ^ -730488183 ^ 0x2485E893 ^ 0x635F061E;
                  }
                  else
                  {
                     _loc2_ = -1981572980 ^ 0x3109BD44 ^ -882279893 ^ -213039219;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function update(param1:String) : void
      {
         if(this._89cef3ec70fda74d3ee1267c == null)
         {
            return;
         }
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_START:
               §§push(0x4C2B66F0 ^ -1362081226 ^ 0x1C3CB8C1 ^ -20474873);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR:
               §§push(0x63627456 ^ -1184970876 ^ 0x0AFB2FC4 ^ -792224745);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_FINISH:
               §§push(-336920195 ^ -768291027 ^ 0x659AE26E ^ 0x5C452C3C);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_UPDATE:
               §§push(0x26707D5F ^ -429273158 ^ 0x5D070853 ^ -1658930507);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_GOT:
               §§push(-100447645 ^ -501573697 ^ -366749031 ^ -231078079);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_UPDATE:
               §§push(-1845844650 ^ 0x763D098B ^ -350602297 ^ 0x0CDD971F);
               break;
            default:
               §§push(-1629604436 ^ 0x5CF835C2 ^ 0x544029C9 ^ -1771689567);
         }
         switch(§§pop())
         {
            case 0:
               this._89cef3ec70fda74d3ee1267c.update(param1);
               this._77cd1aaf214f4957277a40d5 = true;
               break;
            case 1:
            case 2:
               this._89cef3ec70fda74d3ee1267c.update(param1);
               this._77cd1aaf214f4957277a40d5 = false;
               break;
            case 3:
            case 4:
            case 5:
               this._89cef3ec70fda74d3ee1267c.update(param1);
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刪刍劦劧劮刹劖剧勑劐剌切剼刦创勎劷刟前剨刹劁勊剱刖刑剙劅刳勎刨刭勥勾剿劜勜勩劃勨劄動刡劑勉剥勁劆刭刡刄劃刵初列刕剮剁刷劷勎刹勴剷劐刘券剡勤剈募劶剨刏加務刦勘劳刲前勻剮剑剃勂勻剩勨剷勔剀剙劈刲剡削勿劋剧刣剪列刑剚劊割劖勺劤劧刼剡剶力剁劬剺创劫刽刂剈勔剦勓","劯剋勱刓劬勡劚劲劌勥勚勚劇剖勓刔") + param1);
         }
      }
   }
}

