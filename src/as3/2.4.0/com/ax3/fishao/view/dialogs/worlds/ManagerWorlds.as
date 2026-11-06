package com.ax3.fishao.view.dialogs.worlds
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.jss.ext.impl.LoginFscExtension;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.worlds.init.ResponseWorldsInit;
   
   public class ManagerWorlds extends ManagerBase
   {
      
      private var _extensionLogin:LoginFscExtension;
      
      private var _defaultWorld:WorldInfo;
      
      private var _worldsList:Array;
      
      public function ManagerWorlds()
      {
         super();
         this._extensionLogin = FishaoFscModelManager.fscModel.loginFscExtension;
         _remoteExtension = FishaoFscModelManager.fscModel.extensionWorlds;
         this._worldsList = [];
      }
      
      private static function sortByNameAndLanguage(param1:Object, param2:Object) : int
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:String = param1.langs || "";
         var _loc7_:String = param2.langs || "";
         var _loc8_:Boolean = _loc6_.indexOf(Config.LANGUAGE) < 0 && _loc7_.indexOf(Config.LANGUAGE) < 0;
         var _loc9_:Boolean = _loc6_.indexOf(Config.LANGUAGE) >= 0 && _loc7_.indexOf(Config.LANGUAGE) >= 0;
         if(_loc8_ || _loc9_)
         {
            _loc3_ = (param1.sortName as String).length > 0 ? param1.sortName : param1.worldName;
            _loc4_ = (param2.sortName as String).length > 0 ? param2.sortName : param2.worldName;
            if(_loc3_ > _loc4_)
            {
               _loc5_ = 1;
            }
            else if(_loc3_ < _loc4_)
            {
               _loc5_ = -1;
            }
            else
            {
               _loc5_ = 0;
            }
         }
         else if(_loc6_.indexOf(Config.LANGUAGE) < 0)
         {
            _loc5_ = 1;
         }
         else if(_loc7_.indexOf(Config.LANGUAGE) < 0)
         {
            _loc5_ = -1;
         }
         return _loc5_;
      }
      
      public function setDefaultWorld(param1:WorldInfo) : void
      {
         Debug.assertEqual(this._defaultWorld,null,"setDefaultWorld should be called only once on connecting to first selected world");
         this._defaultWorld = param1;
      }
      
      public function get worldsList() : Array
      {
         var _loc1_:WorldInfo = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._worldsList)
         {
            if(!_loc1_.isVirtual)
            {
               _loc2_.push(_loc1_);
            }
         }
         return _loc2_;
      }
      
      public function get firstAvailableWorld() : WorldInfo
      {
         var _loc1_:WorldInfo = null;
         var _loc2_:WorldInfo = null;
         var _loc3_:Array = this.worldsList;
         for each(_loc1_ in _loc3_)
         {
            if(_loc1_.enabled)
            {
               if(_loc1_.playersCount < _loc1_.playersMax - 5)
               {
                  _loc2_ = _loc1_;
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:WorldInfo = null;
         super.onInitDataLoaded(param1);
         this._worldsList = [];
         var _loc5_:ResponseWorldsInit = param1 as ResponseWorldsInit;
         if(_loc5_ != null)
         {
            _loc3_ = _loc5_.worldsList.concat();
            _loc3_.sort(sortByNameAndLanguage);
            for each(_loc2_ in _loc3_)
            {
               _loc4_ = new WorldInfo();
               _loc4_.deserialize(_loc2_);
               this._worldsList.push(_loc4_);
            }
         }
      }
      
      public function updateWorldsList(param1:Function) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onInitDataLoaded(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         _remoteExtension.loadInitData(callbackWrapper);
      }
      
      public function enterWorld(param1:String, param2:String, param3:Function) : void
      {
         this._extensionLogin.enterWorld(param1,app.sid,param2,param3);
      }
      
      public function returnToDefaultWorld(param1:Function = null) : void
      {
         this._extensionLogin.enterWorld(this._defaultWorld.id,app.sid,this._defaultWorld.url,param1);
      }
   }
}

