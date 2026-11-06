package com.ax3.fishao.view.dialogs.base
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.junkbyte.console.Cc;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import protocol.api.base.FscExtensionBase;
   import protocol.api.base.ResponseError;
   
   public class _9d4645de4f8d7c9a1a570db1
   {
      
      private var _9089f3ef9258af9a880f0b13:Boolean;
      
      protected var _remoteExtension:FscExtensionBase;
      
      protected var _isAlreadyConnectedToWorld:Boolean;
      
      protected var _handlers:Dictionary;
      
      public function _9d4645de4f8d7c9a1a570db1()
      {
         super();
         this._handlers = new Dictionary();
      }
      
      protected static function _8d417bde99754424b1a285c5(param1:_5e1bab759fcaea6d1f84faa7) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:ResponseError = param1 as ResponseError;
         if(_loc3_ != null)
         {
            _0737efdbd5337ba3fbc64b2e.getInstance()._759494bf030146161aee1d68(_loc3_.description);
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function get isDataLoaded() : Boolean
      {
         return this._9089f3ef9258af9a880f0b13;
      }
      
      protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._9089f3ef9258af9a880f0b13 = true;
      }
      
      public function _1af809001092e3e47646e1f1() : void
      {
         var _loc1_:int = -1710718339 ^ -2028482058 ^ 0x7225B453 ^ -796634110;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-549721157 ^ -944033719 ^ -1230452066 ^ 0x1196A2B7))
            {
               case 0:
                  this._9bad24edda2bf4d1df6e57e3();
                  _loc1_ = -2009929720 ^ -1092401637 ^ -240675175 ^ 0x78C88B53;
                  break;
               case 1:
                  if(!this._isAlreadyConnectedToWorld)
                  {
                     _loc1_ = 0x31A72F92 ^ 0x64DC09C7 ^ 0x37F388C1 ^ -583656113;
                  }
                  else
                  {
                     _loc1_ = -838717512 ^ -491882484 ^ 0x22B51C6B ^ -1314392058;
                  }
                  break;
               case 2:
                  this._isAlreadyConnectedToWorld = true;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _9bad24edda2bf4d1df6e57e3() : void
      {
      }
      
      public function loadInitData(param1:Function) : void
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
         if(this._remoteExtension != null)
         {
            this._remoteExtension.loadInitData(callbackWrapper);
         }
         else
         {
            Cc.warn(getQualifiedClassName(this) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ယအၖქႈႪႫႺჇႶဆႌႊ၅ဋჵლၗႮၴၧၷဤჷၿၜ႑စჹ႒ၯႍჴႶჱჀპဝံႦဍၢညႵ၉ႉါჂဂၾოၒၓရၑჸြႃღჱთწჰბူပႩჂႎၫိჾၨႄဇ჆ႎၪႠၹဩ჌ႜၧုၔჴჱჸ႔Ⴧბ჉ဂႣၝှ၂ဥႆႃ႒ၮၶ၍ဵၺၭაჁႝၒႹჍၛႅဵႝჶ჻ႇၹდဖွზႤღဗჅၬၐႫ၉ၺ၉ဟဿ","წၜიჶ႖ဨჂგ႙Ⴁო႗ၹჍႿ჆"));
            callbackWrapper(null);
         }
      }
      
      public function _90f9c483fb94c3782ed48130() : void
      {
      }
      
      protected function _4575c3ec15103b43cbf2be04(param1:Class, param2:Function) : void
      {
         this._handlers[param1] = param2;
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(param1,param2);
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Function = null;
         var _loc3_:Class = null;
         for(_loc1_ in this._handlers)
         {
            _loc2_ = this._handlers[_loc1_];
            _loc3_ = _loc1_ as Class;
            _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(_loc3_,_loc2_);
         }
      }
   }
}

