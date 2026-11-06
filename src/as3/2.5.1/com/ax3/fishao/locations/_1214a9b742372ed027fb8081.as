package com.ax3.fishao.locations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.locations.sublocation._a5e6911f85306c220b8b5d78;
   import com.ax3.managers._55043b34818a7b88d28e92ef;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import protocol.api.base.ResponseWithData;
   
   public class _1214a9b742372ed027fb8081
   {
      
      public function _1214a9b742372ed027fb8081()
      {
         super();
      }
      
      public static function _30b634626953a208cf6466d0(param1:_55043b34818a7b88d28e92ef) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_061_UI_Seashell_collect);
         var _loc2_:_e82930b870cc8514498fa9d2 = _e82930b870cc8514498fa9d2(param1.data);
         _dfa25706e58a240c1e33e5c6.locationExtension._7753d28b513efa07432294ed(_loc2_.position.x,_loc2_.position.y);
      }
      
      public static function _3b81f858520190d56d537e5a(param1:_a5e6911f85306c220b8b5d78, param2:_a5e6911f85306c220b8b5d78) : Boolean
      {
         var _loc3_:Boolean = false;
         if(param1 == null && param2 != null || param1 != null && param2 == null || param1 != null && param2 != null && param1.id != param2.id)
         {
            _loc3_ = true;
         }
         return _loc3_;
      }
      
      public static function _fd0a4d45949f9db30b86f81a(param1:ResponseWithData, param2:String) : void
      {
         var _loc3_:Boolean = param1.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刦剒劖劏剖刽劎創剛勹划劀劢副劝刹剈刟刪勄券劺劋剛勚劧劒刞","努剆切剩剂刡刿勑勅刘剃刢刀剟刣剳")) && param1.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挢挞挼探挽捰掙掂揄揌挑掔损揄揓揆捣挭挸掝捸揩揪掑掲捾揬掞","挒捇捗掁捁捞捘換捀掔挔揄揮挒掲掇"));
         if(!_loc3_)
         {
            return;
         }
         GameSwf.instance._8984fb4df5f3f18dbab82d9b(param2,false);
      }
      
      public static function tryGetBoosterData(param1:ResponseWithData, param2:String) : Object
      {
         var response:ResponseWithData = param1;
         var name:String = param2;
         var result:Object = null;
         try
         {
            result = response.getJsonData(name);
         }
         catch(e:Error)
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劗剞剩劄剬劢勤剪劽勲剟勐前剙剰勸别劢劳劌剣劫劃劋刬労勜剶劇努副创勍劵勵劷刦効劀剒则劮","勘前剣剎劼剼剅剮勣勝動勏到刕勼勮"));
            Cc.error(e.toString());
            Cc.error(e.getStackTrace());
         }
         return result;
      }
      
      public static function _f78b21e6e9a9626c91ccfdbd(param1:Sprite) : void
      {
         param1.visible = false;
         if(param1.parent != null)
         {
            param1.parent.removeChild(param1);
         }
         param1 = null;
      }
      
      public static function _9539c89c962dfaf34e69b2ae() : void
      {
         GameSwf.instance._9539c89c962dfaf34e69b2ae();
      }
   }
}

