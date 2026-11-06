package com.ax3.utils.sound
{
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   
   public class _4c53dabac50030a21ac8a021 extends Sound implements _69eec7d2f73604da25ccda04
   {
      
      private static var _755e3132cb9ddbe1c338389d:int = -275199348 ^ 0x33EDC994 ^ 0x056C9C87 ^ -652632161;
      
      private var _b41865437e2b6069b4ea1b7f:Vector.<Sound>;
      
      private var _8522f9e4fb0df63b744cd2f5:_e302725905f9afa2e120c8b6;
      
      private var _86f5bf42369a31b31fd602e5:SoundTransform;
      
      private var _e8ba8f61495fa1de39acc175:Dictionary = new Dictionary();
      
      private var _afe8b0e32e35b5cdbb2e5b71:int = 0;
      
      private var _70cb45324c0f468443aef1fd:int;
      
      private var _dedc682ebd496aab92e3820e:int = 0;
      
      public function _4c53dabac50030a21ac8a021(param1:Sound, param2:_e302725905f9afa2e120c8b6, param3:Object = null)
      {
         var _loc4_:_c5aa52fca149ae6f0be6dc5b = null;
         super();
         this._dedc682ebd496aab92e3820e = _755e3132cb9ddbe1c338389d++;
         this._8522f9e4fb0df63b744cd2f5 = param2;
         this._b41865437e2b6069b4ea1b7f = new Vector.<Sound>();
         for each(_loc4_ in param3.sounds)
         {
            param1 = this._8522f9e4fb0df63b744cd2f5._b87ca74bd9516206cbc6cc47(_loc4_);
            this._b41865437e2b6069b4ea1b7f.push(param1);
         }
         this._70cb45324c0f468443aef1fd = param3.trackPlayDelayMS;
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
            param3.volume = 0x09F91742 ^ 0x01D527E2 ^ 0x6D5E276A ^ 0x657217CB;
         }
         this._86f5bf42369a31b31fd602e5 = param3;
         this._4ad17bb5b4f2ae0ae338f46b(this,-1376128188 ^ 0x229EBB78 ^ 0x471F5EE0 ^ -931653923,this._86f5bf42369a31b31fd602e5.volume);
         return null;
      }
      
      public function stop() : void
      {
         this._6dbfbbfc64a646199da71a42(this);
      }
      
      public function stopAll() : void
      {
         var _loc1_:_f2ca374d0428d105bdb1ec4a = null;
         for each(_loc1_ in this._e8ba8f61495fa1de39acc175)
         {
            _loc1_.stop();
         }
         this._e8ba8f61495fa1de39acc175 = new Dictionary();
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:_f2ca374d0428d105bdb1ec4a = null;
         for each(_loc2_ in this._e8ba8f61495fa1de39acc175)
         {
            _loc2_.volume = param1;
         }
      }
      
      public function get volume() : Number
      {
         return this._e8ba8f61495fa1de39acc175[this] != null ? Number(this._e8ba8f61495fa1de39acc175[this].volume) : -503806888 ^ 0x47A5B12D ^ -1388748422 ^ 0x0B64540F;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:_f2ca374d0428d105bdb1ec4a = null;
         for each(_loc3_ in this._e8ba8f61495fa1de39acc175)
         {
            _loc3_.update(param1,param2);
         }
      }
      
      public function _4ad17bb5b4f2ae0ae338f46b(param1:Object, param2:Number, param3:Number) : void
      {
         var _loc4_:_f2ca374d0428d105bdb1ec4a = null;
         if(!(param1 in this._e8ba8f61495fa1de39acc175))
         {
            if(param2 > (-189582241 ^ 0x137E342C ^ 0x1FA7752C ^ -127240865))
            {
               ++this._afe8b0e32e35b5cdbb2e5b71;
               _loc4_ = new _f2ca374d0428d105bdb1ec4a(param1,param2,this._b41865437e2b6069b4ea1b7f,this._70cb45324c0f468443aef1fd);
               if(this._86f5bf42369a31b31fd602e5 == null)
               {
                  this._86f5bf42369a31b31fd602e5 = new SoundTransform();
               }
               this._86f5bf42369a31b31fd602e5.volume = param3;
               _loc4_.play(this._86f5bf42369a31b31fd602e5);
               this._e8ba8f61495fa1de39acc175[param1] = _loc4_;
               if(this._afe8b0e32e35b5cdbb2e5b71 == (-1310733949 ^ -527894305 ^ 0x1513E335 ^ 0x4444D268))
               {
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).add(this);
               }
            }
         }
         else
         {
            _loc4_ = this._e8ba8f61495fa1de39acc175[param1];
            _loc4_._8ecb3177244ee391164c4a96(param2,param3);
         }
      }
      
      public function _6dbfbbfc64a646199da71a42(param1:Object) : void
      {
         var _loc2_:_f2ca374d0428d105bdb1ec4a = null;
         if(param1 in this._e8ba8f61495fa1de39acc175)
         {
            --this._afe8b0e32e35b5cdbb2e5b71;
            _loc2_ = this._e8ba8f61495fa1de39acc175[param1];
            _loc2_.stop();
            this._e8ba8f61495fa1de39acc175[param1] = null;
            delete this._e8ba8f61495fa1de39acc175[param1];
            if(this._afe8b0e32e35b5cdbb2e5b71 == (0x085F2C84 ^ 0x31B1FC33 ^ 0x4F15947A ^ 0x76FB44CD))
            {
               _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
            }
         }
      }
      
      public function isActive() : Boolean
      {
         return this._afe8b0e32e35b5cdbb2e5b71 > (0x0DE9CB26 ^ 0x3459479B ^ 0x20DB572F ^ 0x196BDB92);
      }
   }
}

