package com.ax3.fishao.display.popups
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class _665c68e6c732fb052d549df8 implements IAssetWrapper
   {
      
      protected var _source:TextField;
      
      private var _0c0bad8cee51187bfdc62967:Rectangle;
      
      protected var _defaultFormat:TextFormat;
      
      protected var _defaultFontSize:Object;
      
      public function _665c68e6c732fb052d549df8(param1:TextField = null)
      {
         super();
         if(param1 != null)
         {
            this.process(param1);
         }
      }
      
      public function get source() : TextField
      {
         return this._source;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._source = TextField(param1);
         this._defaultFormat = this._source.defaultTextFormat;
         this._defaultFontSize = this._defaultFormat.size;
         this.updateRect();
      }
      
      public function updateRect() : void
      {
         this._0c0bad8cee51187bfdc62967 = new Rectangle(this._source.x,this._source.y,this._source.width,this._source.height);
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:int = -1047463585 ^ -2122748598 ^ -600179614 ^ -2130414895;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x0F2A66A9 ^ -246275628 ^ 0x02619FD5 ^ -506609140))
            {
               case 0:
                  this._00108a6df260af22a51fe633();
                  _loc2_ = 0x160746C9 ^ 0x716599D7 ^ -1393389562 ^ -700164675;
                  break;
               case 1:
                  return;
               case 2:
                  this._defaultFormat.size = this._defaultFontSize;
                  this._source.defaultTextFormat = this._defaultFormat;
                  this._source.text = param1;
                  if(this._source.height >= this._source.textHeight)
                  {
                     _loc2_ = 0x5279FB74 ^ 0x7D60D1B4 ^ -2135676985 ^ -1300686944;
                  }
                  else
                  {
                     _loc2_ = -799880133 ^ -541195856 ^ 0x1C2D7C2B ^ 0x0E15AB04;
                  }
                  break;
               case 3:
                  this._7969bc7214931fec8152e464();
                  _loc2_ = -356852405 ^ 0x770CDBBD ^ -1911826976 ^ 0x0E69C9B3;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _7969bc7214931fec8152e464() : void
      {
         this._source.y = this._0c0bad8cee51187bfdc62967.y + int(this._0c0bad8cee51187bfdc62967.height / (0x42269201 ^ 0x0FD73A9E ^ -1381160997 ^ -530804922) - this._source.textHeight / (-1841251237 ^ -896917884 ^ 0xF91A47 ^ 0x5833B89A) + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剦劑剴務功勩刋刊劖勋势勫勌剖切剞剭刅勡刕创利劧勐","刢劁刲刱助刜剃剋刢勋勋剛劅勥勘劒"));
      }
      
      protected function _00108a6df260af22a51fe633() : void
      {
         while(this._source.textHeight + (0x2CE01A87 ^ 0x15F426A8 ^ 0x21B46A5D ^ 0x18A05677) > this._source.height && this._defaultFormat.size > (-1268235984 ^ 0x445BBB23 ^ 0x2C7DA0DB ^ -598844727))
         {
            this._defaultFormat.size = Number(this._defaultFormat.size) - 1;
            this._source.defaultTextFormat = this._defaultFormat;
            this._source.setTextFormat(this._defaultFormat);
         }
         this._7969bc7214931fec8152e464();
      }
   }
}

