package com.ax3.fishao.view.dialogs.worlds
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.jss.ext.impl._423a40efcf05a17bb8cf4bf3;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.worlds.init.ResponseWorldsInit;
   
   public class _15471cbef7d7912586752286 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _ffa3dd590d4078d852b8dae1:_423a40efcf05a17bb8cf4bf3;
      
      private var _db2e7121b45fd43e9600aa0a:_fc0ad21ef0bdcb5d775a5005;
      
      private var _ae12d01d6df22ee14240bc0d:Array;
      
      public function _15471cbef7d7912586752286()
      {
         super();
         this._ffa3dd590d4078d852b8dae1 = _dfa25706e58a240c1e33e5c6.fscModel.loginFscExtension;
         _remoteExtension = _dfa25706e58a240c1e33e5c6.fscModel.extensionWorlds;
         this._ae12d01d6df22ee14240bc0d = [];
      }
      
      private static function _726fbc17d6704c1780eb24c4(param1:Object, param2:Object) : int
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = -1890466892 ^ -303397021 ^ 0x62B2B39C ^ 0x09F74B;
         var _loc6_:String = param1.langs || "";
         var _loc7_:String = param2.langs || "";
         var _loc8_:Boolean = _loc6_.indexOf(Config.LANGUAGE) < (0x03B27145 ^ 0x1BC709C7 ^ -1396539668 ^ -1263073682) && _loc7_.indexOf(Config.LANGUAGE) < (-1449261108 ^ 0x40B543A0 ^ -1409023021 ^ 0x452F47BF);
         var _loc9_:Boolean = _loc6_.indexOf(Config.LANGUAGE) >= (0x586AE45E ^ 0x64D764EA ^ -1300209192 ^ -1908547220) && _loc7_.indexOf(Config.LANGUAGE) >= (-668200811 ^ 0x5FB7E520 ^ 0x4ED24DAB ^ -917915618);
         if(_loc8_ || _loc9_)
         {
            _loc3_ = (param1.sortName as String).length > (-99703592 ^ -337101927 ^ -896565284 ^ -613818211) ? param1.sortName : param1.worldName;
            _loc4_ = (param2.sortName as String).length > (-622962718 ^ 0x2F4CAF60 ^ -195132790 ^ 0x01CC7A08) ? param2.sortName : param2.worldName;
            if(_loc3_ > _loc4_)
            {
               _loc5_ = 0x760BF4E6 ^ -523158774 ^ -737481439 ^ 0x42D022CC;
            }
            else if(_loc3_ < _loc4_)
            {
               _loc5_ = 0x14A16186 ^ 0x443B72F8 ^ -209645944 ^ 0x5CE4E209;
            }
            else
            {
               _loc5_ = -1190629801 ^ 0x1999D300 ^ 0x69694899 ^ -906431026;
            }
         }
         else if(_loc6_.indexOf(Config.LANGUAGE) < (-399099364 ^ -1257538855 ^ -449950503 ^ -1206711268))
         {
            _loc5_ = -1074028216 ^ -124128642 ^ -1263458208 ^ -204244137;
         }
         else if(_loc7_.indexOf(Config.LANGUAGE) < (-215982068 ^ 0x4B74F35C ^ -1913299886 ^ 0x35A1CF02))
         {
            _loc5_ = 0x1AEDF478 ^ -327766648 ^ 0x3F7DAC22 ^ 0x36190A2D;
         }
         return _loc5_;
      }
      
      public function _5ced0f54853896560eac445a(param1:_fc0ad21ef0bdcb5d775a5005) : void
      {
         Debug.assertEqual(this._db2e7121b45fd43e9600aa0a,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掇挷揄挃捊掄捳持挝掦捄揭揜捨挠挢挶揖掗捽掻挏掓排揕捙挱捍捱揨挢揚捗揑挢掔掘掀捅挺挆掱揽掺掮挑揖捝掉掲捁掯揣掮掗捁授揎掂揰捅振捂揦掓揖揍挂挪捼揶捖挪挵捝捉捩揳掰揆挨捣揹掂揵捵捐排掀掱揃掃捪揖掄掻挈揦挍掠捙挌掃掠振掔挓掞挩捊掟挄捔掷挅揅掯捎捄捚掆挄揓揬揵掇揌掘挸挙挐揳挭揨揇掘挤揾揻挮指持揁挼捥掕换挈捒挹捒捳掹挑挗控捈挄探挘挙揸捛捺挸挈捁揦","掾捔揘揣揫推揹換掷掱捭挄捂掑挣掳"));
         this._db2e7121b45fd43e9600aa0a = param1;
      }
      
      public function get worldsList() : Array
      {
         var _loc1_:_fc0ad21ef0bdcb5d775a5005 = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._ae12d01d6df22ee14240bc0d)
         {
            if(!_loc1_.isVirtual)
            {
               _loc2_.push(_loc1_);
            }
         }
         return _loc2_;
      }
      
      public function get firstAvailableWorld() : _fc0ad21ef0bdcb5d775a5005
      {
         var _loc1_:_fc0ad21ef0bdcb5d775a5005 = null;
         var _loc2_:_fc0ad21ef0bdcb5d775a5005 = null;
         var _loc3_:Array = this.worldsList;
         for each(_loc1_ in _loc3_)
         {
            if(_loc1_.enabled)
            {
               if(_loc1_.playersCount < _loc1_.playersMax - (-545905073 ^ 0x7CEE2C2E ^ 0x64C23377 ^ -950388461))
               {
                  _loc2_ = _loc1_;
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:_fc0ad21ef0bdcb5d775a5005 = null;
         super._fcd2ab11aa6496ff709ec1ea(param1);
         this._ae12d01d6df22ee14240bc0d = [];
         var _loc5_:ResponseWorldsInit = param1 as ResponseWorldsInit;
         if(_loc5_ != null)
         {
            _loc3_ = _loc5_.worldsList.concat();
            _loc3_.sort(_726fbc17d6704c1780eb24c4);
            for each(_loc2_ in _loc3_)
            {
               _loc4_ = new _fc0ad21ef0bdcb5d775a5005();
               _loc4_.deserialize(_loc2_);
               this._ae12d01d6df22ee14240bc0d.push(_loc4_);
            }
         }
      }
      
      public function _ebc390996b60ec28ad0c11a7(param1:Function) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            _fcd2ab11aa6496ff709ec1ea(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         _remoteExtension.loadInitData(callbackWrapper);
      }
      
      public function _52f0054af78784d519fe5f84(param1:String, param2:String, param3:Function) : void
      {
         this._ffa3dd590d4078d852b8dae1._52f0054af78784d519fe5f84(param1,app.sid,param2,param3);
      }
      
      public function _f7371ed907da715d38088aec(param1:Function = null) : void
      {
         this._ffa3dd590d4078d852b8dae1._52f0054af78784d519fe5f84(this._db2e7121b45fd43e9600aa0a.id,app.sid,this._db2e7121b45fd43e9600aa0a.url,param1);
      }
   }
}

