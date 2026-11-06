package com.ax3.fishao.display.popups
{
   import flash.text.TextField;
   
   public class _73899a4de8f83c8d2c26f545 extends _665c68e6c732fb052d549df8
   {
      
      private var _a3d937cdae3a3b370aad45f3:int;
      
      private var _b7e42f45de89e8fa1581af84:int;
      
      private var _70e964c469fde80182bebd97:Boolean;
      
      public function _73899a4de8f83c8d2c26f545(param1:TextField)
      {
         super(param1);
         this.init();
      }
      
      public function get isTextWider() : Boolean
      {
         return _source.textWidth + this._a3d937cdae3a3b370aad45f3 * (0x026EE411 ^ 0x0B1D62E6 ^ -120674045 ^ -239259658) > _source.width;
      }
      
      public function get isTextHigher() : Boolean
      {
         return _source.textHeight + this._b7e42f45de89e8fa1581af84 * (-939810706 ^ 0x4ACD2A04 ^ 0x024BC860 ^ -1887616504) > _source.height;
      }
      
      override public function set text(param1:String) : void
      {
         _defaultFormat.size = _defaultFontSize;
         _source.defaultTextFormat = _defaultFormat;
         _source.text = param1;
         this._00108a6df260af22a51fe633();
      }
      
      public function set needCenteredText(param1:Boolean) : void
      {
         if(this._70e964c469fde80182bebd97 == param1)
         {
            return;
         }
         this._70e964c469fde80182bebd97 = param1;
         if(this._70e964c469fde80182bebd97 && this._0b0e135b576e01fbb2bbe4f3)
         {
            _7969bc7214931fec8152e464();
         }
      }
      
      private function get _0b0e135b576e01fbb2bbe4f3() : Boolean
      {
         return _source.height >= _source.textHeight && _source.width >= _source.textWidth;
      }
      
      private function init() : void
      {
         this._a3d937cdae3a3b370aad45f3 = -1116937511 ^ 0x1ECD8E80 ^ -1055467114 ^ 0x62B7B5CD;
         this._b7e42f45de89e8fa1581af84 = -2112377823 ^ 0x32532D2E ^ -1455829607 ^ 0x197D4C94;
         this._70e964c469fde80182bebd97 = true;
      }
      
      override protected function _00108a6df260af22a51fe633() : void
      {
         while((this.isTextWider || this.isTextHigher) && _defaultFormat.size > (0x7B14637D ^ 0x104F69D9 ^ -294158228 ^ -2060678455))
         {
            _defaultFormat.size = Number(_defaultFormat.size) - 1;
            _source.defaultTextFormat = _defaultFormat;
            _source.setTextFormat(_defaultFormat);
         }
         if(this._70e964c469fde80182bebd97)
         {
            _7969bc7214931fec8152e464();
         }
      }
   }
}

