package com.ax3.jss.ext
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext.chat._699635f880f9c4e2866d782b;
   import com.ax3.jss.ext.events._4d914c301f6bab1f77972c27;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.chat.ChatReq;
   import protocol.sr.chat.ChatResp;
   
   public class _1423a9932e563791bf30d944 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _1423a9932e563791bf30d944()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
         param3._93c85485e20e2accb736dfc6(ChatResp,this._abf5582f80fb0cb9368a5011);
      }
      
      private function _abf5582f80fb0cb9368a5011(param1:ChatResp) : void
      {
         _dispatcher.dispatchEvent(new _4d914c301f6bab1f77972c27(_4d914c301f6bab1f77972c27.PUBLIC_MESSAGE,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("္ၐုၠဣူၣဢၗအာၚၶ။","၍ჿ၆ႯြႰၒာჽ။შဩဝႴႾჃ")):param1.msg,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("効劑券剕别剮劍劼劳刋列劤勰劵刬勓劶励剛剓刈剱刑剢副刼刔劉剧勢","剴勗务剓勳勦劶刟剨务刱删則劾剜剚")):param1.senderLogin
         }));
      }
      
      public function _6fbcd38e2f77dae9897d47cf(param1:String, param2:Function = null) : void
      {
         var _loc3_:ChatReq = null;
         if(param1 != null && param1.length > (-1383178330 ^ 0x703D23CA ^ 0x29FBFF01 ^ -196574355))
         {
            _loc3_ = new ChatReq(_699635f880f9c4e2866d782b.SEND_TO_ALL_IN_ROOM,param1);
            _connection.send(_loc3_,param2);
         }
      }
      
      public function _9d2c868c8cc4b509a2b293a8(param1:String, param2:String, param3:Function = null) : void
      {
         var _loc4_:ChatReq = null;
         if(param1 != null && param2.length > (0x105874CF ^ 0x7019ED2C ^ 0x72BFC4EB ^ 0x12FE5D08) && param2 != null && param2.length > (0x01CF9549 ^ 0x3596AEFA ^ 0x7FEAEC56 ^ 0x4BB3D7E5))
         {
            _loc4_ = new ChatReq(_699635f880f9c4e2866d782b.SEND_TO_USER,param2,param1);
            _connection.send(_loc4_,param3);
         }
      }
   }
}

