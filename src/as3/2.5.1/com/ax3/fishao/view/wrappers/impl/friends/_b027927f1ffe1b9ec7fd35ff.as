package com.ax3.fishao.view.wrappers.impl.friends
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._1408d94400cd9851158c4009;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.model.friends._c8850dfef8e9ca8ba5cbc114;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._f0bf8b8194e79c9122458f74;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class _b027927f1ffe1b9ec7fd35ff
   {
      
      public var onDeleteHandler:Function;
      
      public var onTradeHandler:Function;
      
      private var _580dde1611025acd6e10d4bb:*;
      
      private var _446d96bffb6fdb7b914cb61a:_c8850dfef8e9ca8ba5cbc114;
      
      private var _c74307de8643ae40f5bac809:MovieClip;
      
      private var _93e1f19db5d839f58d98863f:FrameButtonWrapper;
      
      private var _e182310cb4d44167c92e1f09:FrameButtonWrapper;
      
      private var _6d949272512b94171deb30a6:FrameButtonWrapper;
      
      private var _191a4f8d5f25921885fcfd9c:_1408d94400cd9851158c4009;
      
      public function _b027927f1ffe1b9ec7fd35ff(param1:_c8850dfef8e9ca8ba5cbc114, param2:*)
      {
         super();
         this._446d96bffb6fdb7b914cb61a = param1;
         this._580dde1611025acd6e10d4bb = param2;
      }
      
      public function _c9aef71caac01218bc064356() : void
      {
         if(this._580dde1611025acd6e10d4bb != null)
         {
            this._c74307de8643ae40f5bac809 = this._580dde1611025acd6e10d4bb.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჩၝქႡဲၪ၌ၘုၲၛჟူ၂ႃႛ","ကჭნ႘ზႳဧေჄႱჾ၇ႂჯ၈ႛ")) as MovieClip;
            this._c74307de8643ae40f5bac809.gotoAndStop(this._446d96bffb6fdb7b914cb61a.status ? 0x233D669E ^ 0x2F27FE4A ^ 0x17C987E8 ^ 0x1BD31F3D : -2101318417 ^ -124900656 ^ 0x08A37254 ^ 0x72ED3469);
            this._580dde1611025acd6e10d4bb.lblName.text = this._446d96bffb6fdb7b914cb61a.name;
            this._580dde1611025acd6e10d4bb.lblLastWorld.text = this._446d96bffb6fdb7b914cb61a.lastWorld;
            this._93e1f19db5d839f58d98863f = new FrameButtonWrapper();
            this._93e1f19db5d839f58d98863f.process(this._580dde1611025acd6e10d4bb.btnDelFromFriends);
            this._93e1f19db5d839f58d98863f.handler = this._3bbbfb9cd6a1324bd77f493f;
            this._6d949272512b94171deb30a6 = new FrameButtonWrapper();
            this._6d949272512b94171deb30a6.process(this._580dde1611025acd6e10d4bb.btnSendMessage);
            this._6d949272512b94171deb30a6.handler = this._ab298077a91969b71858b845;
            if(this._446d96bffb6fdb7b914cb61a.level < (-998683801 ^ 0x01C84C17 ^ -622041888 ^ 0x1F5D639A) || !this._446d96bffb6fdb7b914cb61a.trade || !this._446d96bffb6fdb7b914cb61a.status || app.user.level < (0x312B71CF ^ -1172472244 ^ 0x637533F5 ^ -398246788))
            {
               this._580dde1611025acd6e10d4bb.btnTrade.visible = false;
            }
            else
            {
               this._580dde1611025acd6e10d4bb.btnTrade.visible = true;
               this._e182310cb4d44167c92e1f09 = new FrameButtonWrapper();
               this._e182310cb4d44167c92e1f09.process(this._580dde1611025acd6e10d4bb.btnTrade);
               this._e182310cb4d44167c92e1f09.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ლႩ။Ⴇဟ၀჆ჅဤჹტႇဤဏညဦႰဇ၉ဈ၄Ⴓၵ႓ႨნၢႧჶႂၝႷ","ဓဒဴၶზჃၚႅၱტႡဎၔ჉ဒ჌")).toUpperCase();
               this._e182310cb4d44167c92e1f09.handler = this._b542b76c82d27fb0a636449e;
            }
            this._191a4f8d5f25921885fcfd9c = new _1408d94400cd9851158c4009();
            this._191a4f8d5f25921885fcfd9c.buttonMode = true;
            this._191a4f8d5f25921885fcfd9c.useHandCursor = true;
            this._191a4f8d5f25921885fcfd9c.addEventListener(MouseEvent.CLICK,this._b953a124a92560277b6bd017);
            this._191a4f8d5f25921885fcfd9c.process(this._580dde1611025acd6e10d4bb.lblName);
            this._191a4f8d5f25921885fcfd9c.text = this._446d96bffb6fdb7b914cb61a.name;
            this._191a4f8d5f25921885fcfd9c.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劯剅刎刘刭刜劶勪刕勭劀勂办刌勱加","劯劰効勦剷剿刳分劚动剜刽勑劉剆剘")):(this._446d96bffb6fdb7b914cb61a.status ? _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刓劧劸剄勅勵副剁剹勢劅劀刧勞刷勷刢勢剠剑劝剑刽劆割刑劁刃刌劬労剏删剝剿勗勏勆劽勋勐劽剕勃劭劭刵勅劑劆","勵劀勎剟勾剙剾判刮剗勫勎勳剹剫劜")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("創劀勜刁劈募務刢勺刦則刳劑勝剭勔劧劾劑剞力刚","判办刎劯勆刼勳剖勻刕劀剭刌剁剙剐"),this._446d96bffb6fdb7b914cb61a.lastWorld) : _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挪挀按挨挣捪揆挴挃挅掜揽挨揾掅揣揓挏揣捑掾掮挿捌揕掝挼掉挲揁掤挧捒掁挰掄挚挧捰揝捗掟挽挞揝掏挋掗掹揑探推","揎挈揾揆捗掩掀挷挪揧挌挫揼揢掜掆")).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႛ႖သဍဉყဪၳႡၗႜი၊ညႴႽုၹ႙ီ","႕၄ဪၘ၏ჟႢ႙ჼႷႸၱ႐჋჎ာ"),_c2ad9d37d7be0097d6d2e977._9c73905d95ecb7dae39a4243(this._446d96bffb6fdb7b914cb61a.lastLoginTime)).replace(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掩授掩掛揱挕揘挛掓揗揇掯掫损按描掩掚挍挸揫掜","挽掱持掿挢掩揘捑掊挤揜授捁揺捜揈"),this._446d96bffb6fdb7b914cb61a.lastWorld))};
         }
      }
      
      private function _b953a124a92560277b6bd017(param1:MouseEvent) : void
      {
         _fa8d5efc34d8920757369351._90c56d60a54f9a591b9a2af2(this._446d96bffb6fdb7b914cb61a.name);
      }
      
      private function _ab298077a91969b71858b845(param1:MouseEvent) : void
      {
         var _loc2_:String = this._446d96bffb6fdb7b914cb61a.name;
         var _loc3_:_f0bf8b8194e79c9122458f74 = app.dialogFactory._0b51743fd74146c6929027c6();
         _loc3_._8d7cc3ca3d5f53924c2f380a(_loc2_,true);
      }
      
      private function _b542b76c82d27fb0a636449e(param1:MouseEvent) : void
      {
         this.onTradeHandler(this._446d96bffb6fdb7b914cb61a);
      }
      
      private function _3bbbfb9cd6a1324bd77f493f(param1:MouseEvent) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = new _6691abcab801c2433d32324a();
         _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("授捙掋挴掐挬掲提捽挬揭掭挩掤挑振捨掂掛捇揞掤掊掁挡掿掁挒掊排掠挩捂掼捅掜掅掗挾捹振捞揆捩捄揶掑挧揯掙掉挓揣挜捩挲挷捀掟捠揥揎掍掑挒揩揨捀揫捯揮挘挽捎","掖捲揜掆捵捉捾掑按掊挾捨揰捗捤揢")).replace(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挶授捄挝挕捄揢掌揨揊挠掩挧揳掟挳掮換挙掜揇挆掮掹掽捨捍揜揊捰","捏探捫掽換捤捺揫掅捍掅掽援掶揯揎"),this._446d96bffb6fdb7b914cb61a.name));
         _loc2_.callbackYes = this._96943ceef0860614c3470361;
         _loc2_.closeOnOk = true;
         _loc2_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.YES_BUTTON | _6691abcab801c2433d32324a.NO_BUTTON;
         _loc2_.show();
      }
      
      private function _96943ceef0860614c3470361() : void
      {
         this.onDeleteHandler(this._446d96bffb6fdb7b914cb61a.name);
      }
   }
}

