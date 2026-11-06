package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.view.wrappers.impl._818ca771e56d1f99e60c15fc;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _f5a1543ec49d3249ecbd6b8d extends _818ca771e56d1f99e60c15fc
   {
      
      private var _asset:DisplayObjectContainer;
      
      public var field:TextField;
      
      private var _11de53925605e836c8237421:Number;
      
      public function _f5a1543ec49d3249ecbd6b8d()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObject = null;
         super.process(param1);
         _content = Sprite(param1);
         _loc2_ = _content.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捎援捰接捁捇挫揃掸捌掆掁挜掽掤捠","捸挗挢揶排掹捰揝挝挬捲揄损掂揉捷"));
         this.field = TextField(_content.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勋判勚劂劎剾勌勚劑剥勰剼剏劚劂割剃勱","剒劂副剆勧労刣剆剰刺勗勠剆削勔剫")));
         this._11de53925605e836c8237421 = this.field.y;
         this.field.multiline = true;
         var _loc3_:DisplayObject = _content.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挥描掀揁换挬揶掱据挏捄揜揂握挖损挄掦揢挗","揶挵捒揺揶挗揾揧捳掻捵捀挢揶揟捊"));
         addChild(_loc3_);
         removeAllChildren(_content);
         _content.addChild(this.field);
         var _temp_3:* = _content;
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = 0x13528CDC ^ -195189293 ^ -1408722125 ^ 0x4B07B23C;
         _temp_3.scrollRect = new Rectangle(_temp_1,_temp_1,_loc2_.width,_loc2_.height);
         _content.x = _loc2_.x;
         _content.y = _loc2_.y;
         addChild(_content);
      }
      
      public function set text(param1:String) : void
      {
         this.field.height = 0x4BC6D7D7 ^ 0x33BFEC27 ^ -1588502772 ^ -651665120;
         this.field.text = param1;
         scrollTo(0x1E647D52 ^ -831117758 ^ 0x796EC205 ^ -1451452139);
         this._37e1251d329ef08cf8252415();
      }
      
      public function set htmlText(param1:String) : void
      {
         this.field.y = this._11de53925605e836c8237421;
         this.field.height = -639736707 ^ -513176258 ^ -933703402 ^ -252756599;
         this.field.htmlText = param1;
         this._37e1251d329ef08cf8252415();
      }
      
      private function _37e1251d329ef08cf8252415() : void
      {
         var _loc1_:Rectangle = null;
         this.field.height = -116544449 ^ 0x62819F61 ^ -1236919894 ^ 0x2DCA2F28;
         if(this.field.text.length > (-1546875069 ^ -1602507129 ^ 0x3C2CFAB3 ^ 0x3F9BDB77))
         {
            _loc1_ = this.field.getCharBoundaries(this.field.text.length - 1);
            if(_loc1_ != null)
            {
               this.field.height = _loc1_.y + _loc1_.height + (-1140586153 ^ -1097715827 ^ 0x772DF7FC ^ 0x75BBD123);
            }
            else
            {
               this.field.height = this.field.textHeight + (0x167E631A ^ 0x5D9A973C ^ 0x6DA20645 ^ 0x2646F266);
            }
         }
         else
         {
            this.field.height = this.field.textHeight + (-1412824327 ^ 0x76314B59 ^ -754702209 ^ 0x0EFF61DA);
         }
         _contentHeight = this.field.y + this.field.height + (-915664229 ^ -1249031143 ^ -2096890896 ^ -1923720);
         _a270befba6c808194a3475ba();
      }
      
      public function onAssetProcessComplete() : void
      {
      }
      
      public function _c39c233c8fc18069f43a3882() : void
      {
         this.field.height = _content.scrollRect.height - (-2136680957 ^ -758026764 ^ -443575878 ^ -1208341944);
      }
   }
}

