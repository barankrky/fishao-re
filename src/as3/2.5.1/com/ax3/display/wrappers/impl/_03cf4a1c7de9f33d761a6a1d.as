package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers._67a7ec125a01811d64af4dcc;
   import com.ax3.fishao.view.wrappers.impl._818ca771e56d1f99e60c15fc;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _03cf4a1c7de9f33d761a6a1d extends _818ca771e56d1f99e60c15fc
   {
      
      public static const ACTIVATE_WRAPPER:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勐勾剷劺剪勒勼動剂勷剡勴割前劖劁勵勫勤刈割勹剏剷动刌剓力勮劆刧剫勥劌券勓刿勇勛办剳則勣努勃劵剛刡勴勣勥刟勄劑別剄剮刦","勀剫劄剔勻刧刐劥勶剶剚力剬刲劈劀");
      
      protected static const CONTENT_BOTTOM_PADDING:int = -1787217213 ^ 0x707D47AA ^ -380744808 ^ 0x0C4A36FB;
      
      public var itemTemplate:DisplayObject;
      
      private var _asset:DisplayObjectContainer;
      
      private var _5a465af8b1e80224facfe1b6:Vector.<Object> = new Vector.<Object>();
      
      private var _d7a9c3f06adc315b1938e7da:Vector.<_5851c671824f640d4d36d175> = new Vector.<_5851c671824f640d4d36d175>();
      
      private var _dc94325898291e42ee55b444:_67a7ec125a01811d64af4dcc;
      
      public var gap:int = 0;
      
      public var sortFn:Function;
      
      public function _03cf4a1c7de9f33d761a6a1d()
      {
         super();
      }
      
      public function get GetContent() : Sprite
      {
         return _content;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObject = null;
         _loc2_ = null;
         super.process(param1);
         this._asset = DisplayObjectContainer(param1);
         _loc2_ = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჇႨၟႵၶႷသၰစ჉၇ქၛ၏၏Ⴙ","ဧჵ။Ⴈ႓႐ჍဍၭၑႮၻ၃ရဇႹ"));
         this.itemTemplate = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဲჾႲဎႍ၎ႛ့ခႥლ႔჌მၲ္","ჲႾၚၡႌုညზႯဣၤီႭႄယၷ"));
         var _loc3_:DisplayObject = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剈剖劗剧剩剈劫劑劎勅励刀刉刢刁加劆創剀勗","劐剾劽勤勮割勸剫劵剓劂勭励分勿刺"));
         removeAllChildren(this._asset);
         if(_mouseScrollArea != null)
         {
            this._asset.addChild(_mouseScrollArea);
         }
         this._asset.addChild(_loc3_);
         _content = new Sprite();
         var _temp_3:* = _content;
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = 0x445A427E ^ -1028299019 ^ 0x64F46B42 ^ -501526583;
         _temp_3.scrollRect = new Rectangle(_temp_1,_temp_1,_loc2_.width,_loc2_.height);
         _content.x = _loc2_.x;
         _content.y = _loc2_.y;
         _content.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剝勜劋劗勦动刟劈剕勍劐劍力勡刪刕劑創勚刜劾劬剱劥刱劂劮劰劋制勿劇制募剔剀","刲劳刴勋剀勯剌剘刂刚勞剅勅劣劈勼");
         this._asset.addChild(_content);
      }
      
      public function set itemFactory(param1:_67a7ec125a01811d64af4dcc) : void
      {
         this._dc94325898291e42ee55b444 = param1;
      }
      
      public function get items() : Vector.<Object>
      {
         return this._5a465af8b1e80224facfe1b6;
      }
      
      public function get itemsViews() : Vector.<_5851c671824f640d4d36d175>
      {
         return this._d7a9c3f06adc315b1938e7da;
      }
      
      public function add(param1:Object, param2:Boolean = true) : _5851c671824f640d4d36d175
      {
         var _loc3_:_5851c671824f640d4d36d175 = null;
         if(this._5a465af8b1e80224facfe1b6.indexOf(param1) == (-1706627610 ^ -1381043423 ^ -851124888 ^ 0x05533C50))
         {
            _loc3_ = this._92e4914116be1b1e0a7a5639(param1,param2);
            this._d7a9c3f06adc315b1938e7da.push(_loc3_);
         }
         return _loc3_;
      }
      
      private function _92e4914116be1b1e0a7a5639(param1:Object, param2:Boolean = true) : _5851c671824f640d4d36d175
      {
         this._5a465af8b1e80224facfe1b6.push(param1);
         if(this.sortFn != null)
         {
            this._5a465af8b1e80224facfe1b6.sort(this.sortFn);
         }
         var _loc3_:int = this._5a465af8b1e80224facfe1b6.indexOf(param1);
         var _loc4_:_5851c671824f640d4d36d175 = this._05f7b7651695dc8f86904a5d();
         _loc4_.data = param1;
         _loc4_.y = _contentHeight;
         _content.addChildAt(DisplayObject(_loc4_),_loc3_);
         if(param2)
         {
            this.updateList();
            _a270befba6c808194a3475ba();
         }
         return _loc4_;
      }
      
      private function _05f7b7651695dc8f86904a5d() : _5851c671824f640d4d36d175
      {
         return _5851c671824f640d4d36d175(this._dc94325898291e42ee55b444._a54f7898880d608c7e1dc342());
      }
      
      public function remove(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = this._a95103f0497324f75ca66ca4(param1);
         if(_loc3_ != null)
         {
            _loc2_ = this._5a465af8b1e80224facfe1b6.indexOf(_loc3_);
            this._5a465af8b1e80224facfe1b6.splice(_loc2_,0x3A23FE4D ^ 0x022F0348 ^ -1367416456 ^ -1770906500);
            this._d7a9c3f06adc315b1938e7da.splice(_loc2_,-1441977211 ^ -45286965 ^ -1451038016 ^ -20758641);
            _content.removeChildAt(_loc2_);
            this.updateList();
            _a270befba6c808194a3475ba();
         }
      }
      
      protected function updateList() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = -894130703 ^ -1778340569 ^ 0x295BF27E ^ 0x75EFFAA8;
         _contentHeight = 0x28038E19 ^ 0x27D83A99 ^ 0x4474F0E6 ^ 0x4BAF4466;
         var _loc3_:int = _content.numChildren;
         if(_loc3_ > (-955055509 ^ -233433720 ^ -1624856430 ^ -1440497807))
         {
            _loc1_ = _content.getChildAt(-967745701 ^ 0x0ADBD39D ^ 0x3F646AC8 ^ -202447346);
            _loc1_.y = -1984172721 ^ -1975972536 ^ -230305489 ^ -238603992;
            _contentHeight = _loc1_.y + _loc1_.height + this.gap;
            _loc2_ = 0x51F21118 ^ 0x313EF128 ^ 0x4E415000 ^ 0x2E8DB031;
            while(_loc2_ < _loc3_)
            {
               _loc1_ = _content.getChildAt(_loc2_);
               _loc1_.y = _contentHeight;
               _contentHeight += _loc1_.height + this.gap;
               _loc2_++;
            }
         }
         if(_contentHeight > (-704734963 ^ -1799970023 ^ 0x7B351AFD ^ 0x3A7D20E9))
         {
            _contentHeight += CONTENT_BOTTOM_PADDING;
         }
      }
      
      private function _a95103f0497324f75ca66ca4(param1:Object) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this._5a465af8b1e80224facfe1b6)
         {
            if(_loc2_.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掟握揈挡措捎捕捸揠挘掁挀挰挵揪挞捩捹","揶掲掓揭掖挨揇揿揇揭捑挿揗掛揠提")) && _loc2_.equal is Function)
            {
               if(_loc2_.equal(param1))
               {
                  return _loc2_;
               }
            }
            else if(_loc2_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _212441a4855840c8e96e9cf3(param1:int) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:int = -1781443413 ^ -895530473 ^ -254181641 ^ -1349033909;
         if(this.items.length > (-922737426 ^ -1702441888 ^ 0x777FA44C ^ 0x24F94CC2))
         {
            _loc2_ = _content.getChildAt(-1724271982 ^ -552892575 ^ -1316657384 ^ -138980629);
            _loc3_ = param1 * (_loc2_.height + this.gap);
         }
         this.scrollTo(_loc3_);
         this._f05a805aeab556f42d19e5ba();
      }
      
      public function removeAll() : void
      {
         this._5a465af8b1e80224facfe1b6.length = 0x779673D8 ^ -2127149716 ^ -329720439 ^ 0x1AF8EB3D;
         this._d7a9c3f06adc315b1938e7da.length = -553644591 ^ -623414224 ^ -1475616192 ^ -1378051167;
         var _loc1_:Rectangle = _content.scrollRect;
         _loc1_.y = 0x6CD5B991 ^ 0x3027F4F1 ^ -369523644 ^ -1257518812;
         _content.scrollRect = _loc1_;
         removeAllChildren(_content);
         this.updateList();
         _a270befba6c808194a3475ba();
      }
      
      public function _6d5360dc76898e470b88eb2e() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:uint = uint(_content.numChildren);
         var _loc3_:int = 0x68AE5E77 ^ -1939881172 ^ 0x3C31EA42 ^ -658475239;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = _content.getChildAt(_loc3_);
            if(_loc1_ is _5851c671824f640d4d36d175)
            {
               _5851c671824f640d4d36d175(_loc1_)._6d5360dc76898e470b88eb2e();
            }
            _loc3_++;
         }
      }
      
      public function get elements() : Vector.<DisplayObject>
      {
         var _loc1_:int = 0x3D24ED86 ^ 0x5B3895F8 ^ 0x6284EA6C ^ 0x04989212;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc3_:int = _content.numChildren;
         _loc1_ = -1355360396 ^ 0x49642223 ^ 0x1E4266E3 ^ -133131340;
         while(_loc1_ < _loc3_)
         {
            _loc2_.push(_content.getChildAt(_loc1_));
            _loc1_++;
         }
         return _loc2_;
      }
   }
}

