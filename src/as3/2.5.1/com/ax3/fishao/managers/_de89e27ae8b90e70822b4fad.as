package com.ax3.fishao.managers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.utils._eda3a13d8352e18b187cba02;
   import com.junkbyte.console.Cc;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class _de89e27ae8b90e70822b4fad extends EventDispatcher
   {
      
      public static const WEATHER_OFF:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刢勋劵分勑刻勲到剴勱剓前劓剳刬剑勣勡剧勛剕刻判刳劭割勶刯","刞勹勅勧勵勜勰刨募刨劉刪勲劫劇剡");
      
      public static const DAY_NIGHT_OFF:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勁劆剮別势别勇劦勄刀刚剃劍劄剟刀勃劜初刊努劾剏剚勩剭勽劙勰勭","勿剽剪劉务勨刉剉券勜勋刪剁勰劜劐");
      
      public static var CAN_CHANGE_WEATHER:Boolean = true;
      
      public static var CAN_CHANGE_DAY_NIGHT:Boolean = true;
      
      private static const _f871c5b3c74690e851e896e4:Number = -923362107 ^ -921027079 ^ 0x20949B34 ^ 0x21783A02;
      
      private static const _c5ec3a5c6fe27b7656da8e80:Number = -317411336 ^ -2041186448 ^ -869707221 ^ -1486353751;
      
      private static const _a2c1961fb99e0fa641897e0a:int = 0x7B517B9F ^ 0x760270BC ^ 0x57B390ED ^ 0x5AE09BC1;
      
      public var averageNumber:_eda3a13d8352e18b187cba02;
      
      public var lowQualityTime:Number = 0;
      
      public var fps:int;
      
      public var enabled:Boolean = true;
      
      public var sleepMode:Boolean = false;
      
      private var _cadf16ae3161665a6313e5e7:uint;
      
      public function _de89e27ae8b90e70822b4fad()
      {
         super();
         this.averageNumber = new _eda3a13d8352e18b187cba02();
      }
      
      public function _4d39ab2e40221ef06749913c(param1:Stage) : void
      {
         param1.addEventListener(Event.ACTIVATE,this._28269e9c9213d6eb0738ecef);
      }
      
      private function _28269e9c9213d6eb0738ecef(param1:Event) : void
      {
         this.sleepMode = false;
      }
      
      public function _e3fb5e714447d30caf6f3e77(param1:uint, param2:uint) : void
      {
         if(this.enabled == false)
         {
            return;
         }
         this._2ddcac0f6a5609524176d5d2(param1,param2);
         if(this.fps <= _a2c1961fb99e0fa641897e0a)
         {
            this.lowQualityTime += param2;
         }
         else
         {
            this.lowQualityTime = 0x59D98F63 ^ 0x22ECCED7 ^ 0x41A6FEA8 ^ 0x3A93BF1C;
         }
         if(this.lowQualityTime >= _f871c5b3c74690e851e896e4 * (0x4F0225C4 ^ -1289757719 ^ 0x36D48B5E ^ -892766565) && CAN_CHANGE_WEATHER)
         {
            CAN_CHANGE_WEATHER = false;
            dispatchEvent(new Event(WEATHER_OFF));
            Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挦挍揺挜捪揘损揃掬挜挘揺揋捼挂掣挔捬揟捄揮捹挗捊提揶挕捾探掐掓描捶挖挚掠捉捴掙挿捒挤捹掖揷挫指指揊揑揱握挶捎揖揞捦揩揍掲挵掊捚挀掐掺掻揃挃揖捣挧掵揙挝揚捕掆揟挱捍掠挩揅揩捣挎挹挆挠掑捔挄揰挵挤挳捔揺揆挾掜揞揱挘据接挫捡挧挋挹捕挖挱揖掰掄掯揎","捖捨掺挦掩掕捇挽挒掦捥挗挍挀挞挀"));
         }
         if(this.lowQualityTime >= _c5ec3a5c6fe27b7656da8e80 * (0x7BB6C94E ^ -122574736 ^ 0x1A3EF57E ^ -1724278872) && CAN_CHANGE_DAY_NIGHT)
         {
         }
      }
      
      public function _2ddcac0f6a5609524176d5d2(param1:uint, param2:uint) : void
      {
         var _loc3_:int = -206468974 ^ -1946714405 ^ -658257633 ^ 0x11AC2218;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1293078481 ^ -251109489 ^ 0x50639EF8 ^ -1565529068))
            {
               case 0:
                  return;
               case 1:
                  this.averageNumber.count /= -1545095895 ^ -1665319583 ^ 0x59D9C4C9 ^ 0x66834C82;
                  this._cadf16ae3161665a6313e5e7 = param1;
                  _loc3_ = -1490611731 ^ -1636308844 ^ -1769117857 ^ 0x1EF4836A;
                  break;
               case 2:
                  this.averageNumber.push(param2);
                  this.fps = Math.round((0x27AFE5B8 ^ 0x614FDEF5 ^ -454798558 ^ -1576768633) / this.averageNumber.value);
                  if(param1 - this._cadf16ae3161665a6313e5e7 > (-466105610 ^ -2013014233 ^ -1473896201 ^ -1005439330))
                  {
                     _loc3_ = 0x45C376C8 ^ -1972339990 ^ -584814146 ^ -1547804463;
                  }
                  else
                  {
                     _loc3_ = 0x72FE1277 ^ -619709057 ^ 0x716527D2 ^ 0x69BDD596;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

