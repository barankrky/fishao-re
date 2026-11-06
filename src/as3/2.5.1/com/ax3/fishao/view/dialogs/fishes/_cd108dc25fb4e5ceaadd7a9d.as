package com.ax3.fishao.view.dialogs.fishes
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.fishes.model._21587f0ac0bcbbbfdcd63026;
   import com.ax3.fishao.view.dialogs.monster_fishes._b67c1d3d17b81c7d30715584;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.utils.Dictionary;
   import protocol.api.fishes.FscExtensionFishes;
   import protocol.api.fishes.getRelevant.ResponseFishesGetRelevant;
   
   public class _cd108dc25fb4e5ceaadd7a9d extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _75ab006917f4797f6e67f2e6:FscExtensionFishes;
      
      private var _36f434182d5543882e63a3a3:Array;
      
      private var _074a079654d3608b5ccd6112:Dictionary;
      
      private var _7c0eba513ee8c1350a6fab3f:Array;
      
      private var _e399175f8a160c0300223b07:_b67c1d3d17b81c7d30715584;
      
      public function _cd108dc25fb4e5ceaadd7a9d()
      {
         super();
         this.init();
      }
      
      public static function _f5502442600f90ab60bf8136(param1:_21587f0ac0bcbbbfdcd63026, param2:_21587f0ac0bcbbbfdcd63026) : int
      {
         var _loc3_:String = (param1 as _21587f0ac0bcbbbfdcd63026).displayName;
         var _loc4_:String = (param2 as _21587f0ac0bcbbbfdcd63026).displayName;
         if(_loc3_ > _loc4_)
         {
            return 0x19DD4CB7 ^ 0x74858F12 ^ 0x4431317E ^ 0x2969F2DA;
         }
         if(_loc3_ < _loc4_)
         {
            return 0x70ECD6BE ^ 0x1A425D6C ^ 0x7622D300 ^ -478959827;
         }
         return -807302855 ^ 0x08EBC127 ^ 0x0DFC29E1 ^ -889822721;
      }
      
      public function get fishesUser() : Array
      {
         return this._36f434182d5543882e63a3a3;
      }
      
      public function get fishesUserMap() : Dictionary
      {
         return this._074a079654d3608b5ccd6112;
      }
      
      public function _6a559f143dd5200adad296c3(param1:int) : Number
      {
         return this._e399175f8a160c0300223b07._6a559f143dd5200adad296c3(param1);
      }
      
      private function _b451f882a2820c17074988f7(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0x3C37FF6D ^ 0x5761FE5E ^ 0x613B5D93 ^ 0x0A6D5CA0;
         var _loc4_:ResponseFishesGetRelevant = param1 as ResponseFishesGetRelevant;
         var _loc5_:Array = _loc4_.fishesCaught;
         this._7c0eba513ee8c1350a6fab3f = _loc4_.fishesUnavailable;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = Debug.assertProperty(_loc2_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဆံဪ႐ၬဉ၏႖ႚჼჺკဏံჃပჸဃ်ေრဧ","ၬိეဣၽၽ჊ႃ႖၎Ⴭဟჭုဈႛ"),int);
            if(this._074a079654d3608b5ccd6112[_loc3_] == null)
            {
               this._074a079654d3608b5ccd6112[_loc3_] = new _21587f0ac0bcbbbfdcd63026();
               this._36f434182d5543882e63a3a3.push(this._074a079654d3608b5ccd6112[_loc3_]);
            }
            (this._074a079654d3608b5ccd6112[_loc3_] as _21587f0ac0bcbbbfdcd63026).deserialize(_loc2_);
         }
      }
      
      private function init() : void
      {
         this._36f434182d5543882e63a3a3 = [];
         this._074a079654d3608b5ccd6112 = new Dictionary(true);
         this._75ab006917f4797f6e67f2e6 = _dfa25706e58a240c1e33e5c6.fscModel.extensionFishes;
      }
      
      override public function _90f9c483fb94c3782ed48130() : void
      {
         this._e399175f8a160c0300223b07 = GameSwf.instance.managerMonsterFishes;
      }
      
      public function _eff92e54d0744af126c4b670(param1:int) : Boolean
      {
         return this._7c0eba513ee8c1350a6fab3f.indexOf(param1) < (-1721656761 ^ -455273500 ^ -149139441 ^ -1969170004);
      }
      
      public function _beedd347b0befc05b4231987(param1:Vector.<_cff30366d510ea862540bfef>) : Array
      {
         var _loc2_:_cff30366d510ea862540bfef = null;
         var _loc3_:Array = [];
         for each(_loc2_ in param1)
         {
            if(this._eff92e54d0744af126c4b670(_loc2_.id))
            {
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      public function _8bf4de9d74518e406a443aa3(param1:Function = null) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            _b451f882a2820c17074988f7(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._75ab006917f4797f6e67f2e6.getRelevant(callbackWrapper);
      }
      
      public function _ca313b4c52206bd3dd4904ca(param1:int, param2:String) : void
      {
         (this._074a079654d3608b5ccd6112[String(param1)] as _21587f0ac0bcbbbfdcd63026).notepad = param2;
      }
   }
}

