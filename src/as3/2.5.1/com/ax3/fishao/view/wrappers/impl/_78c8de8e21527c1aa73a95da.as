package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _78c8de8e21527c1aa73a95da extends Sprite implements IAssetWrapper
   {
      
      private const _75d9c18edb04eefa77f89180:Number = 7;
      
      private var _3678ab3b491a5491e8f199b2:TextField;
      
      private var _47015824e947dc7f31b9a7a7:DisplayObject;
      
      private var _c541e503b7e9cba6dbef0450:TextField;
      
      private var _e4d8dcdd1fd31bd21607a3ff:Number;
      
      public function _78c8de8e21527c1aa73a95da()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._47015824e947dc7f31b9a7a7 = param1;
         this._3678ab3b491a5491e8f199b2 = TextField(DisplayObjectContainer(param1).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挱挟捀掤揪持挵捝捄捰揹掔挪掲","挵掎掬挈揚揝捤捿挓挧插揌掤揝揉掻")));
         this._e4d8dcdd1fd31bd21607a3ff = this._3678ab3b491a5491e8f199b2.y;
         this._c541e503b7e9cba6dbef0450 = TextField(DisplayObjectContainer(param1).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勮勳劖刈勭则剼刿分剻勄剷刚刴刭劶剘剿","割勌剜剖剐刚刲劳刔別効剗办劚剉劈")));
      }
      
      public function set text(param1:String) : void
      {
         this._3678ab3b491a5491e8f199b2.text = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this._47015824e947dc7f31b9a7a7.visible = param1;
      }
      
      override public function get visible() : Boolean
      {
         return this._47015824e947dc7f31b9a7a7.visible;
      }
      
      public function _3a66cd37f55537675537b829() : void
      {
         var _loc1_:int = 0x1297B7A4 ^ -493403432 ^ -802969127 ^ 0x1C2A3AF2;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-381169208 ^ 0x39B2385D ^ 0x29C93263 ^ -986333791))
            {
               case 0:
                  this._c541e503b7e9cba6dbef0450.visible = false;
                  if(this._3678ab3b491a5491e8f199b2.y == this._e4d8dcdd1fd31bd21607a3ff)
                  {
                     _loc1_ = -174804091 ^ 0x4355CC7E ^ 0x26A1BEE5 ^ -1402362037;
                  }
                  else
                  {
                     _loc1_ = 0x36AD8596 ^ -988524749 ^ -2014484765 ^ 0x485DCA10;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._3678ab3b491a5491e8f199b2.y += this._75d9c18edb04eefa77f89180;
                  _loc1_ = -1029889958 ^ -275992585 ^ 0x4D05B6AD ^ 0x5C1D5F56;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _9c9ca3e3ddebd14c39ea56f9() : void
      {
         this._c541e503b7e9cba6dbef0450.visible = true;
         this._3678ab3b491a5491e8f199b2.y = this._e4d8dcdd1fd31bd21607a3ff;
      }
      
      public function get text() : String
      {
         return this._3678ab3b491a5491e8f199b2.text;
      }
      
      public function set label(param1:String) : void
      {
         this._c541e503b7e9cba6dbef0450.text = param1;
      }
   }
}

