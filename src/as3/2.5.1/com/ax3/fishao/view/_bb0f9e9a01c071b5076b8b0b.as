package com.ax3.fishao.view
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.display.ui._c47d98934dc43f007120e494;
   import com.ax3.fishao.control.managers._0dea9d20559cb8ec5bb639be;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs._8256b1324608dc993f5220be;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class _bb0f9e9a01c071b5076b8b0b extends _8256b1324608dc993f5220be
   {
      
      private static var _b0a7e380561461857da4fb06:Boolean;
      
      private static var _8f44fe110f06ecb78a0c77d3:_bb0f9e9a01c071b5076b8b0b;
      
      private static var _418a675e3c5d8b27d7ba01fe:int = -2063010909 ^ -1049353407 ^ 0x7452DC4D ^ 0x302E0CAF;
      
      private static var _abc44a7e82bdf647ada64d26:int = -2076946972 ^ 0x42547777 ^ 0x2607EF6A ^ -530065927;
      
      private static var _d0e0907c301ccd0522e6f1b8:Dictionary = new Dictionary();
      
      private var _df0b586aefe16837942168a8:Sprite = new Sprite();
      
      public function _bb0f9e9a01c071b5076b8b0b(param1:String)
      {
         if(param1 == "")
         {
            param1 = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬挮揂揨挤掴挴掘揧挈揾捠挈掕揥揜掮探挺掾捼挜挑捃挤掬挔捍挱揥挌挆揔插挍掦揫捙揵揋推揖揳掿捸掂揱掊揿掠挾捿捏揼揗揁挒挱揞挠","捊揮掟掲挌掎挞揝挼挚掔捃挷揉捼掙"));
         }
         var _loc2_:TextField = _c47d98934dc43f007120e494._11873088d7988176cb7d4afd(param1,-225203815 ^ 0x2C94EA5D ^ -109999434 ^ 0x2776C972,height,_0dea9d20559cb8ec5bb639be.FORMAT_LOCAL_PRELODER,_0dea9d20559cb8ec5bb639be.PARAMS_LOCAL_PRELODER);
         addChild(_loc2_);
         _loc2_.y -= 0x7809D894 ^ 0x23E53D98 ^ 0x46D55244 ^ 0x1D39B756;
         super();
      }
      
      public static function isActive() : Boolean
      {
         return _418a675e3c5d8b27d7ba01fe > (0x43E49A4C ^ -1056315352 ^ -1377354661 ^ 0x2F0A4E3F) || _abc44a7e82bdf647ada64d26 > (-733456450 ^ 0x3F94F14F ^ -1925459421 ^ 0x66E774D2);
      }
      
      public static function _a8f0ef786384468f5be3db4f(param1:String) : void
      {
         if(param1 != null)
         {
            if(_d0e0907c301ccd0522e6f1b8[param1] != null)
            {
               _d0e0907c301ccd0522e6f1b8[param1] = Number(_d0e0907c301ccd0522e6f1b8[param1]) - 1;
               --_abc44a7e82bdf647ada64d26;
               if(_d0e0907c301ccd0522e6f1b8[param1] == (0x602BE7A6 ^ -653476292 ^ 0x0FAFAD30 ^ -1232538454))
               {
                  _d0e0907c301ccd0522e6f1b8[param1] = null;
                  delete _d0e0907c301ccd0522e6f1b8[param1];
               }
            }
         }
         else if(_418a675e3c5d8b27d7ba01fe > (0x6507E8CB ^ -561842354 ^ 0x7D79D6C8 ^ -956511923))
         {
            --_418a675e3c5d8b27d7ba01fe;
         }
         if(_418a675e3c5d8b27d7ba01fe <= (0x550A7080 ^ -1784322697 ^ 0x326FBC84 ^ -222254733) && _abc44a7e82bdf647ada64d26 <= (-162672311 ^ 0x61862EB8 ^ 0x7E2FC0A1 ^ -370917552))
         {
            if(_8f44fe110f06ecb78a0c77d3)
            {
               _8f44fe110f06ecb78a0c77d3.close();
            }
            _8f44fe110f06ecb78a0c77d3 = null;
         }
      }
      
      public static function _4bdbebb16d5eedb611b99185(param1:String, param2:String = null) : void
      {
         if(param2 != null)
         {
            if(_d0e0907c301ccd0522e6f1b8[param2] == null)
            {
               _d0e0907c301ccd0522e6f1b8[param2] = -125826033 ^ 0x6925308E ^ 0x0EF606F3 ^ -1621935502;
            }
            _d0e0907c301ccd0522e6f1b8[param2] = Number(_d0e0907c301ccd0522e6f1b8[param2]) + (-1587569933 ^ -500165715 ^ 0xF378F8 ^ 0x439CF1A7);
            ++_abc44a7e82bdf647ada64d26;
         }
         else
         {
            ++_418a675e3c5d8b27d7ba01fe;
         }
         if(!_b0a7e380561461857da4fb06)
         {
            _8f44fe110f06ecb78a0c77d3 = new _bb0f9e9a01c071b5076b8b0b(param1);
            _8f44fe110f06ecb78a0c77d3.show();
         }
      }
      
      override public function show() : void
      {
         _b0a7e380561461857da4fb06 = true;
         this._df0b586aefe16837942168a8.addEventListener(Event.ENTER_FRAME,this._6590940951c1208dac6a116f);
         _0737efdbd5337ba3fbc64b2e.getInstance()._92cc9ac314d6cc94288124bf(this);
      }
      
      private function _6590940951c1208dac6a116f(param1:Event) : void
      {
         param1.currentTarget.rotationZ += 0x74868BA7 ^ -1817132453 ^ 0x54803CAE ^ -1279888041;
      }
      
      override public function close() : void
      {
         _b0a7e380561461857da4fb06 = false;
         this._df0b586aefe16837942168a8.removeEventListener(Event.ENTER_FRAME,this._6590940951c1208dac6a116f);
         super.close();
      }
   }
}

