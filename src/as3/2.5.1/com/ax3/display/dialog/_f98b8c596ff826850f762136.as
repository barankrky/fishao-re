package com.ax3.display.dialog
{
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import com.ax3.utils._47ac5d7bf27669781d94aacf;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class _f98b8c596ff826850f762136 extends _1078dc5631cc5976a13385a5 implements ISwfDialog
   {
      
      protected var _config:_883499bee549a0fce1047d0f;
      
      protected var _state:_d248fcdc0f7611518f3784e3 = _d248fcdc0f7611518f3784e3.NONE;
      
      protected var _loadingIndicator:_f11f4587bdf083a8dd45aa84 = new _f11f4587bdf083a8dd45aa84();
      
      protected var _asset:DisplayObjectContainer;
      
      private var _fe9964150671a28ed9dd85cd:_47ac5d7bf27669781d94aacf = new _47ac5d7bf27669781d94aacf();
      
      public function _f98b8c596ff826850f762136(param1:_883499bee549a0fce1047d0f)
      {
         super();
         this._config = param1;
         this._ce1fa10c48c144e3992623ed(_d248fcdc0f7611518f3784e3.ASSET_COMPLETE,this._935ac2966ddad68dfc449202);
         if(this._config.swfFileNameRaw == "")
         {
            this.state = _d248fcdc0f7611518f3784e3.READY;
         }
      }
      
      override public function show() : void
      {
         var _loc1_:int = -1967952715 ^ 0x1EEAE2A9 ^ -1153199453 ^ -219579423;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7679244E ^ -321524229 ^ 0x16540580 ^ 0x510BAB6A))
            {
               case 0:
                  _app.dialogManager.onDialogAssetCreating(this);
                  this.create();
                  _ec9e8fded1f21e9a06d314c7();
                  _loc1_ = 0x1B1F587A ^ 0x6B0399B8 ^ -510236906 ^ 0x4C79C189;
                  break;
               case 1:
                  this._ce1fa10c48c144e3992623ed(_d248fcdc0f7611518f3784e3.READY,super.show);
                  if(this._state == _d248fcdc0f7611518f3784e3.NONE)
                  {
                     _loc1_ = 0x79699842 ^ -1436971206 ^ 0x58ECCF82 ^ 0x562FBFA5;
                  }
                  else
                  {
                     _loc1_ = -2121415130 ^ 0x2A19B75B ^ 0x53AA2BA6 ^ 0x25CD3D86;
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
      
      public function _ce1fa10c48c144e3992623ed(param1:_d248fcdc0f7611518f3784e3, param2:Function) : void
      {
         var _loc3_:int = -2141174599 ^ 0x6BF6E70D ^ -757648193 ^ 0x7F3813E3;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1386356412 ^ -564538259 ^ 0x669FC641 ^ 0x53E27781))
            {
               case 0:
                  return;
               case 1:
                  if(this._state == param1)
                  {
                     _loc3_ = 0x4A1B4AAA ^ -867594195 ^ 0x72E3C415 ^ -1295476104;
                  }
                  else
                  {
                     _loc3_ = -806712395 ^ -2095231866 ^ -1936876167 ^ -2046566751;
                  }
                  break;
               case 2:
                  this._fe9964150671a28ed9dd85cd.add(param1.name,param2);
                  _loc3_ = -693246404 ^ 0xADDCBC ^ -1307289499 ^ 0x226DE60C;
                  break;
               case 3:
                  param2();
                  _loc3_ = -951162760 ^ 0x18AD7F82 ^ 0x470089D5 ^ -560325946;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function set state(param1:_d248fcdc0f7611518f3784e3) : void
      {
         var _loc2_:int = 0x67641B97 ^ 0x78AB01B9 ^ 0x59CE6EDE ^ 0x4FD7F64B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x37050D6B ^ -1384170457 ^ -1095368781 ^ 0x2D194C45))
            {
               case 0:
                  return;
               case 1:
                  if(this._state != param1)
                  {
                     _loc2_ = -390494506 ^ -1485412153 ^ 0x6DF0B07C ^ 0x2BE9DCD5;
                  }
                  else
                  {
                     _loc2_ = -1794737771 ^ 0x285B0A04 ^ -1584500602 ^ 0x150581AD;
                  }
                  break;
               case 2:
                  this._state = param1;
                  this._fe9964150671a28ed9dd85cd._b04233d246f7aaf0deec034f(this._state.name);
                  _loc2_ = -798347970 ^ -114761558 ^ -1446802680 ^ -1990736858;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function get dialogAssetURL() : String
      {
         return _app.config.getDialogURL(this._config.swfFileName);
      }
      
      protected function create() : void
      {
         this.state = _d248fcdc0f7611518f3784e3.ASSET_CREATING;
         this._loadingIndicator.start();
         this._loadingIndicator.progressHandler = this._6221fbc543e23544d3ff5dd3;
         _app.resourceManager.getSwfInstance(this.dialogAssetURL,this._d998e9465b31be9894488c29);
      }
      
      protected function _6221fbc543e23544d3ff5dd3() : Number
      {
         return _app.resourceManager.getSwfInstanceLoadingProgress(this.dialogAssetURL);
      }
      
      protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         this._asset = param1;
         this._asset.addEventListener(Event.COMPLETE,this._ade64bcffa906dd9fa397567);
         (this._asset as MovieClip).play();
         addChild(param1);
      }
      
      protected function _ade64bcffa906dd9fa397567(param1:Event) : void
      {
         _app.dialogManager.assetWrappersProcessor.configurateFactory(_app,this.dialogAssetURL);
         _app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this._53c75b256e111084445373fe();
      }
      
      private function _53c75b256e111084445373fe() : void
      {
         this.state = _d248fcdc0f7611518f3784e3.ASSET_COMPLETE;
      }
      
      protected function _935ac2966ddad68dfc449202() : void
      {
         this._loadingIndicator.stop();
         this.state = _d248fcdc0f7611518f3784e3.READY;
         _app.dialogManager.onCreatingDialogComplete(this);
      }
      
      override public function isReady() : Boolean
      {
         return this._loadingIndicator._e4907aaeb95acdc5444b0b36() && this._5bd733c96b3534c9e3e5a15e();
      }
      
      public function _5bd733c96b3534c9e3e5a15e() : Boolean
      {
         return this._state == _d248fcdc0f7611518f3784e3.READY;
      }
   }
}

