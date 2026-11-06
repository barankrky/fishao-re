package com.ax3.fishao.view.dialogs.events.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _c8a1b8aac34e70eff374fd35 extends _d0d7c5d83a4ffc1e9f3b9c9f
   {
      
      private var _1966fe39310b82dbe2f5f419:_73899a4de8f83c8d2c26f545;
      
      private var _30d26ecd965df1099866cc8f:TextField;
      
      private var _9e7545faf5bd7e5fdf573bae:_73899a4de8f83c8d2c26f545;
      
      public function _c8a1b8aac34e70eff374fd35(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set eventIsStarted(param1:Boolean) : void
      {
         this._1966fe39310b82dbe2f5f419.text = _c2ad9d37d7be0097d6d2e977.get(param1 ? _85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_TIME_LEFT_TO_END : _85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_TIME_LEFT_TO_START);
         this._1966fe39310b82dbe2f5f419.source.y = this._30d26ecd965df1099866cc8f.y + this._30d26ecd965df1099866cc8f.textHeight / (0x1BE247B9 ^ 0x4D5D9B75 ^ 0x2CCB7235 ^ 0x7A74AEFB) - this._1966fe39310b82dbe2f5f419.source.textHeight / (-2071010452 ^ -1365686254 ^ 0x722F73F5 ^ 0x5838D889);
         this._30d26ecd965df1099866cc8f.x = this._1966fe39310b82dbe2f5f419.source.x + this._1966fe39310b82dbe2f5f419.source.textWidth + (-1127368908 ^ 0x7CE73E7B ^ -821314671 ^ 0x0F2132D4);
      }
      
      public function set description(param1:String) : void
      {
         this._9e7545faf5bd7e5fdf573bae.text = param1;
      }
      
      public function set timeLeft(param1:uint) : void
      {
         this._30d26ecd965df1099866cc8f.text = TimeConverter.getTimeString(param1);
      }
      
      private function init() : void
      {
         this._9e7545faf5bd7e5fdf573bae = new _73899a4de8f83c8d2c26f545(Debug.assertProperty(_source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗刣勗劔勡劑劥剭劎劷劝刲刁刔劰劺劙刊勘剼刎刲剮剶剭勛劐刬劢初剎剢剫务劈刾剢剓剔勒","剞勥剋勻劙劸剡刽剾勼劃初剨劐勜勍")));
         this._9e7545faf5bd7e5fdf573bae.needCenteredText = false;
         this._1966fe39310b82dbe2f5f419 = new _73899a4de8f83c8d2c26f545(Debug.assertProperty(_source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捼捵掰捆揦掕挸揆掤捬捄揶捾挹揷挢挀挨掺挩挖捚掮掠挩捍揻指捇掍掯揟掙捗","捥捷揓挦掐排掄掖捱捏损掼捦捺挜捗")));
         this._1966fe39310b82dbe2f5f419.needCenteredText = false;
         this._30d26ecd965df1099866cc8f = Debug.assertProperty(_source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揎揊掝揦挍挺捻掮捻挼捙捘捞掉掂掿掶提挊挍揻捹挑挦挟揀揂挫揆挟挊揾捔捎挡控掗掷揦挪揁掕捞挜","挛捃掯揻掰掴掷挍挷捊揈揉捛捚捋捤"));
         _fishBitmap.width = -540185583 ^ 0x4458DEEC ^ 0x0EB3905F ^ -1792662973;
         _fishBitmap.height = -1371144114 ^ 0x3F5B5633 ^ -1281285990 ^ 0x22BC7606;
         _fishBitmap.x = -1260079313 ^ -982504774 ^ 0x6677C546 ^ 0x17E3596B;
         _fishBitmap.y = 0x2CE0B98D ^ 0x3CDE1711 ^ 0x157D901C ^ -88293042;
      }
   }
}

