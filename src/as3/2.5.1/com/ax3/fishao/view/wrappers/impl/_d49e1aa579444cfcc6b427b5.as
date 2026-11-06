package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _d49e1aa579444cfcc6b427b5 extends _e2e835f66188325c9e9213d9
   {
      
      public static const ACTIVATE_WRAPPER:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃჁိၐც့ညဴၴႝკჯმჅဲဴႈၢჽဆစჟၘსჲჁထၟဎၡნ႑ჄႢဉჷၟၿ၅ၮმი၈ဗဠႤၱ႞ရဣၪၔႺ၍ႅ჏၈Ⴁ","ကဵၸ၇၈ဵဩၡသ႔ၪჍးးၭჀ");
      
      private var _asset:DisplayObjectContainer;
      
      private var _8a8bae3a8b759ae87af563d4:Vector.<Object> = new Vector.<Object>();
      
      private var _192df279d0cfebfcacf514c6:DisplayObject;
      
      private var _6f07b82c16b8ed3834954b85:DisplayObject;
      
      public var gap:int = 6;
      
      public function _d49e1aa579444cfcc6b427b5()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._asset = DisplayObjectContainer(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჹႺဉჺ၅თႊ႓အჭცၼ","ဉ၆ႂဆႱჾႾႁჽႝဥၺდၼၮဖ"));
         this._192df279d0cfebfcacf514c6 = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掿掝掌挂捘掴掤挌揚捛掤挐挱捎挾揆","掳揬挟捜掀揑揨揩挗挦掵揞捖捤捻握"));
         this._6f07b82c16b8ed3834954b85 = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刺劉勳势勽刖剣劳剂勹勐列办勚勝劬勧勯剗剞","加勾削刪剳劶勺割刚勱勏剀剬劰募勢"));
         removeAllChildren(this._asset);
         this._asset.addChild(_loc2_);
         this._asset.addChild(this._6f07b82c16b8ed3834954b85);
         _content = new Sprite();
         var _temp_3:* = _content;
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = 0x40CC2552 ^ -2018463225 ^ -789358244 ^ 0x178FCE09;
         _temp_3.scrollRect = new Rectangle(_temp_1,_temp_1,this._192df279d0cfebfcacf514c6.width,this._192df279d0cfebfcacf514c6.height);
         _content.x = this._192df279d0cfebfcacf514c6.x;
         _content.y = this._192df279d0cfebfcacf514c6.y;
         _content.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("分剡劃勸剃劚刐劻剧加剘刺劧勩剛勢刑助剭券勌刊刦刧勒劧剪势劧列刢勐剫剬剒劄","劇勱勗剬剟判勢勨劷剈勡副副剚剢刄");
         this._asset.addChild(_content);
      }
      
      public function get items() : Vector.<Object>
      {
         return this._8a8bae3a8b759ae87af563d4;
      }
      
      public function _b2673ff6a620d3e678471f95(param1:Vector.<_4a306accb768c5f549bf6c1f>) : void
      {
         var _loc2_:_4a306accb768c5f549bf6c1f = null;
         this._8a8bae3a8b759ae87af563d4 = new Vector.<Object>();
         _contentWidth = this.gap;
         var _loc3_:uint = uint(0x2DAA3EBC ^ 0x442742A8 ^ 0x7F14B817 ^ 0x1699C403);
         while(_loc3_ < param1.length)
         {
            this._8a8bae3a8b759ae87af563d4.push(param1[_loc3_]);
            _loc2_ = param1[_loc3_];
            _loc2_.x = _contentWidth;
            _loc2_.y = this.gap;
            _content.addChild(_loc2_);
            _contentWidth += _loc2_.width + this.gap;
            _loc3_++;
         }
         _a270befba6c808194a3475ba();
      }
   }
}

