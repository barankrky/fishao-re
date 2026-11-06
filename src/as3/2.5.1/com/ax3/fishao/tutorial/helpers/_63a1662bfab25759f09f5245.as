package com.ax3.fishao.tutorial.helpers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.display.settings._a743682c1543c38af612eb6f;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.chars._709a8761c08236d1b5935ace;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.entries._0d47696161f1136a4c3be130;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.tutorial.helpers.masks._6be25327bf60bc1bed989e67;
   import com.ax3.fishao.tutorial.helpers.masks._ac86c30083c7e7aa58281afd;
   import com.ax3.fishao.tutorial.helpers.masks._ed4aae3a7e33ca2ee825d7ff;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _63a1662bfab25759f09f5245 extends _450aa236949c3aac4e3c79f5
   {
      
      private var _7dfb33011c8b3ef0f9211f53:Array;
      
      private var _2d4a6c6e44e1cbc76a68e130:Array;
      
      private var _1711f9f4456a0ff9c378e333:Sprite;
      
      private var _97e6669630cf5da1cdc7fa17:Sprite;
      
      private var _0fcb3dd64f1ea6c9f163eae2:_1494b5e5a03295ad931834af;
      
      private var _b9631fcc1986c180b3dec774:Boolean;
      
      public function _63a1662bfab25759f09f5245()
      {
         super();
         this.init();
      }
      
      public static function _c5d46f44a4d8a26c7cf5d28e(param1:DisplayObject, param2:Point = null, param3:Boolean = true) : Function
      {
         var resultFunction:Function = null;
         var view:DisplayObject = param1;
         var offset:Point = param2;
         var needLocalToGlobal:Boolean = param3;
         var viewCenterPoint:Point = new Point(view.width / (-691535859 ^ -1256680210 ^ -1938558451 ^ -274503956),view.height / (0x7E51982A ^ 0x592A62EB ^ 0x524FB379 ^ 0x753449BA));
         if(offset == null)
         {
            offset = viewCenterPoint;
         }
         else
         {
            offset = offset.add(viewCenterPoint);
         }
         resultFunction = function():Point
         {
            return needLocalToGlobal ? view.localToGlobal(offset) : new Point(view.x,view.y);
         };
         return resultFunction;
      }
      
      public static function _6ba4124ea66e83ee2d11f6aa(param1:DisplayObject) : Function
      {
         var view:DisplayObject = param1;
         var resultFunction:Function = function():Point
         {
            return new Point(view.width,view.height);
         };
         return resultFunction;
      }
      
      public static function _5b998b181997578708537b6a(param1:Point = null) : Function
      {
         var result:Function = null;
         var playerChar:_0d47696161f1136a4c3be130 = null;
         var locationLayers:Sprite = null;
         var offset:Point = param1;
         playerChar = null;
         locationLayers = null;
         if(offset == null)
         {
            var _temp_3:* = §§newactivation();
            var _temp_2:* = §§findproperty(Point);
            var _temp_1:* = 0x6384F517 ^ -6772474 ^ -927994873 ^ 0x54B3B016;
            offset = new Point(_temp_1,_temp_1);
         }
         playerChar = GameSwf.currentLocationDialog.player as _0d47696161f1136a4c3be130;
         locationLayers = GameSwf.currentLocationDialog.locationLayersBase;
         result = function():Point
         {
            var _loc1_:Point = null;
            if(playerChar == null)
            {
               playerChar = GameSwf.currentLocationDialog.player as _0d47696161f1136a4c3be130;
            }
            if(locationLayers == null)
            {
               locationLayers = GameSwf.currentLocationDialog.locationLayersBase;
            }
            if(playerChar == null || locationLayers == null)
            {
               return _loc1_;
            }
            var _loc2_:Point = playerChar._5b998b181997578708537b6a();
            if(_loc2_ != null)
            {
               _loc1_ = locationLayers.localToGlobal(_loc2_);
               _loc1_ = _loc1_.add(offset);
            }
            return _loc1_;
         };
         return result;
      }
      
      public function _9e4b07f267950c7f7846aa5d(param1:Point = null) : Function
      {
         var result:Function = null;
         var thisPointer:_63a1662bfab25759f09f5245 = null;
         var offset:Point = param1;
         thisPointer = null;
         if(offset == null)
         {
            offset = new Point(-1675870206 ^ 0x0719020B ^ 0x31421C4A ^ -1438163389,0x4EE3ED43 ^ -1037393124 ^ 0x1A1DEE3E ^ 0x692B5F8D);
         }
         thisPointer = this;
         result = function():Point
         {
            var _loc1_:Point = null;
            var _loc2_:_08c120b706560fce9302bcab = thisPointer._a7d91da9cda34c4983b5235b;
            if(_loc2_ != null && _loc2_.graphic != null)
            {
               _loc1_ = _loc2_.graphic.localToGlobal(offset);
            }
            return _loc1_;
         };
         return result;
      }
      
      private function get _5e7110af8930d46906af6820() : _810c4ade948afb64e9c7ee25
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = null;
         var _loc2_:_67f8febc099eaa05c48aa41e = this.location;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         }
         return _loc1_;
      }
      
      private function get _a7d91da9cda34c4983b5235b() : _08c120b706560fce9302bcab
      {
         var _loc1_:_08c120b706560fce9302bcab = null;
         var _loc2_:_810c4ade948afb64e9c7ee25 = this._5e7110af8930d46906af6820;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.fieldChar;
         }
         return _loc1_;
      }
      
      public function set needUpdateButtonSettings(param1:Boolean) : void
      {
         this._b9631fcc1986c180b3dec774 = param1;
      }
      
      override protected function _b3c655b16ded936959ea78cd(param1:Event) : void
      {
         this.updateMask();
      }
      
      protected function onMaskClick(param1:MouseEvent) : void
      {
         var _loc2_:_67f8febc099eaa05c48aa41e = this.location;
         if(param1 == null || _loc2_ == null || _loc2_.locationModel == null || _loc2_.locationLayersBase == null)
         {
            return;
         }
         var _loc3_:_810c4ade948afb64e9c7ee25 = _loc2_.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Point = new Point(param1.localX,param1.localY);
         if(_loc2_.scrollrect != null)
         {
            _loc4_.x = _loc2_.scrollrect.x + _loc4_.x;
            _loc4_.y = _loc2_.scrollrect.y + _loc4_.y;
         }
         var _loc5_:_c9513c48978d5034cc9ff2f4 = _loc3_.fieldChar as _c9513c48978d5034cc9ff2f4;
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:_bd60f9ad6ef4aaf28041ce8f = _loc2_.locationLayersBase;
         if(_loc5_.programmedMove || _loc5_.moveStrategy is _709a8761c08236d1b5935ace)
         {
            return;
         }
         var _loc7_:int = GameSwf.stage.mouseX - _loc6_.x;
         var _loc8_:int = GameSwf.stage.mouseY - _loc6_.y;
         if(_loc6_.scrollRect != null)
         {
            _loc7_ += _loc6_.scrollRect.x;
            _loc8_ += _loc6_.scrollRect.y;
         }
         if(_loc7_ > _loc6_.fullWidth - _67f8febc099eaa05c48aa41e.SCREEN_PADDING)
         {
            _loc7_ = _loc6_.fullWidth - _67f8febc099eaa05c48aa41e.SCREEN_PADDING;
         }
         else if(_loc7_ < _67f8febc099eaa05c48aa41e.SCREEN_PADDING)
         {
            _loc7_ = _67f8febc099eaa05c48aa41e.SCREEN_PADDING;
         }
         _loc5_.onMouseClick(_loc7_,_loc8_);
      }
      
      private function init() : void
      {
         this._7dfb33011c8b3ef0f9211f53 = [];
         this._2d4a6c6e44e1cbc76a68e130 = [];
         this._b9631fcc1986c180b3dec774 = true;
      }
      
      public function _95b9b777a6d00d1a4a825220() : void
      {
         var _loc1_:_ed4aae3a7e33ca2ee825d7ff = null;
         this._245289a9a9a41d67e6c88cf9();
         if(this._1711f9f4456a0ff9c378e333 != null && this._1711f9f4456a0ff9c378e333.parent != null)
         {
            this._1711f9f4456a0ff9c378e333.parent.removeChild(this._1711f9f4456a0ff9c378e333);
            this._1711f9f4456a0ff9c378e333 = null;
         }
         if(this._97e6669630cf5da1cdc7fa17 != null && this._97e6669630cf5da1cdc7fa17.parent != null)
         {
            this._97e6669630cf5da1cdc7fa17.parent.removeChild(this._97e6669630cf5da1cdc7fa17);
            this._97e6669630cf5da1cdc7fa17 = null;
         }
         for each(_loc1_ in this._7dfb33011c8b3ef0f9211f53)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         for each(_loc1_ in this._2d4a6c6e44e1cbc76a68e130)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
         this._7dfb33011c8b3ef0f9211f53 = [];
         this._2d4a6c6e44e1cbc76a68e130 = [];
         this._b9631fcc1986c180b3dec774 = true;
      }
      
      public function _d6a2521748f59df463e4fb94(param1:Function, param2:int = 105, param3:Function = null, param4:Function = null, param5:int = 100) : void
      {
         _754e2088813c7c737fc97294(param1);
         this._3433555db90c516dbed20871();
         var _loc6_:_6be25327bf60bc1bed989e67 = new _6be25327bf60bc1bed989e67();
         _loc6_.radius = param2;
         _loc6_.playerDestination = param3;
         _loc6_.playerDestinationCallback = param4;
         _loc6_.distanceToTarget = param5;
         _loc6_.functionGetPosition = param1;
         this._7dfb33011c8b3ef0f9211f53.push(_loc6_);
         this._1711f9f4456a0ff9c378e333.addChild(_loc6_.maskView);
      }
      
      public function _5d41184a8463f29bbd19a58c(param1:DisplayObject) : void
      {
         this._3433555db90c516dbed20871();
         this._245289a9a9a41d67e6c88cf9();
         this._0fcb3dd64f1ea6c9f163eae2 = new _1494b5e5a03295ad931834af(param1);
         this._1711f9f4456a0ff9c378e333.addChild(this._0fcb3dd64f1ea6c9f163eae2.view);
      }
      
      public function _ff99ac71fd600b826038309c(param1:Function, param2:Function) : void
      {
         _754e2088813c7c737fc97294(param1);
         _754e2088813c7c737fc97294(param2);
         this._3433555db90c516dbed20871();
         var _loc3_:_ac86c30083c7e7aa58281afd = new _ac86c30083c7e7aa58281afd();
         _loc3_.functionGetPosition = param1;
         _loc3_.functionGetSize = param2;
         this._2d4a6c6e44e1cbc76a68e130.push(_loc3_);
         this._1711f9f4456a0ff9c378e333.addChild(_loc3_.maskView);
      }
      
      private function _3433555db90c516dbed20871() : void
      {
         _0737efdbd5337ba3fbc64b2e.TUTORIAL_LAYER.mouseEnabled = false;
         this._e889389d7053659558af990c();
         this._f62672ea8a9fb4b642fa8d9e();
      }
      
      private function _e889389d7053659558af990c() : void
      {
         var _loc1_:int = 0x4B330133 ^ 0x740299 ^ -1701623819 ^ 0x77DED9DB;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1980171106 ^ 0x2F9D0711 ^ -478789181 ^ -484890679))
            {
               case 0:
                  this._1711f9f4456a0ff9c378e333 = new Sprite();
                  this._1711f9f4456a0ff9c378e333.blendMode = BlendMode.LAYER;
                  this._1711f9f4456a0ff9c378e333.graphics.beginFill(0x1831B364 ^ 0x405B4DA3 ^ 0x36B93165 ^ 0x6ED3CFA2,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掻揂捃掏捲挢揅挔捜掶揞捀捴掉捦挊挙捲挫挔掅掕掬捠","掺挐揼捑掦捺掴掳挙揪掅揓描排挬捓"));
                  var _temp_2:* = this._1711f9f4456a0ff9c378e333.graphics;
                  var _temp_1:* = 0x07C06162 ^ 0x74FDFD0E ^ 0x2CBC9967 ^ 0x5F81050B;
                  _temp_2.drawRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
                  this._1711f9f4456a0ff9c378e333.graphics.endFill();
                  this._1711f9f4456a0ff9c378e333.name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆挣损揸挍捯捃挕掲挲捕掩掄捏掫掜挩捙挶捄捉掀挬捃揚挍捨掑捞掲挳捐","揱挑掭揾掞掊挘掾捅揓捱挗挜捗捪揎");
                  this._1711f9f4456a0ff9c378e333.mouseChildren = false;
                  this._1711f9f4456a0ff9c378e333.mouseEnabled = false;
                  _0737efdbd5337ba3fbc64b2e.TUTORIAL_LAYER.addChildAt(this._1711f9f4456a0ff9c378e333,-1694836203 ^ -1448035289 ^ 0x4A724DCD ^ 0x79382BFF);
                  return;
               case 1:
                  if(this._1711f9f4456a0ff9c378e333 != null)
                  {
                     _loc1_ = 0x3C70EA7D ^ -1206155936 ^ -1282107323 ^ -1846187297;
                  }
                  else
                  {
                     _loc1_ = 0x7AA2D349 ^ 0x4822DB8B ^ 0x312625D6 ^ -1515409263;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f62672ea8a9fb4b642fa8d9e() : void
      {
         var _loc1_:int = -1879845807 ^ -1543113970 ^ 0x6714C4CB ^ -1861462478;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4F4B84EB ^ -855033087 ^ 0x13D2E715 ^ 0x4C7EED5B))
            {
               case 0:
                  return;
               case 1:
                  this._97e6669630cf5da1cdc7fa17 = new Sprite();
                  this._97e6669630cf5da1cdc7fa17.graphics.beginFill(-2053776832 ^ 0x35DD57A3 ^ 0x512C9DD5 ^ -513535946,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挔掬揼挷捙掺捖掃掉揘掞挙挩揪揎揃捳捙掓揆揆捁揀掆","揆捕掲掅挹揣掖捥掲捆挒挭掑掔挿揬"));
                  var _temp_2:* = this._97e6669630cf5da1cdc7fa17.graphics;
                  var _temp_1:* = -1358900022 ^ 0x43700BE0 ^ -1068181093 ^ 0x2C2406B1;
                  _temp_2.drawRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
                  this._97e6669630cf5da1cdc7fa17.graphics.endFill();
                  this._97e6669630cf5da1cdc7fa17.name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("排捺挗挵掰挚捭振掤挓掇掆挛掎揾揃揝揥揀捍挏挈插揃接掄掽掉揙揾捡捤据揅揑捩","揇揧揷捄掦捈援捸挤挰掓掷挑捤揮捾");
                  _0737efdbd5337ba3fbc64b2e.TUTORIAL_LAYER.addChildAt(this._97e6669630cf5da1cdc7fa17,0x65E1333E ^ 0x370B17A7 ^ -658427773 ^ -1976888294);
                  this._97e6669630cf5da1cdc7fa17.addEventListener(MouseEvent.CLICK,this.onMaskClick);
                  return;
               case 2:
                  if(this._97e6669630cf5da1cdc7fa17 != null)
                  {
                     _loc1_ = -1515449561 ^ -957021042 ^ 0x28433B02 ^ -1762354929;
                  }
                  else
                  {
                     _loc1_ = -280941913 ^ 0x238879AE ^ -1592396080 ^ -1338896260;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function updateMask() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Point = null;
         var _loc3_:_6be25327bf60bc1bed989e67 = null;
         var _loc4_:_ac86c30083c7e7aa58281afd = null;
         if(this._1711f9f4456a0ff9c378e333 == null || this._97e6669630cf5da1cdc7fa17 == null)
         {
            return;
         }
         this._97e6669630cf5da1cdc7fa17.graphics.clear();
         this._97e6669630cf5da1cdc7fa17.graphics.beginFill(0x194D46B8 ^ -163257055 ^ 0x6DD47078 ^ -2099391519,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勲勧刷劥刃劙勮剬劸勶勃办劎刚勪劾刨勼刴劜勵剞劇剼","劉刕刍刕勾剣勇勽刎劥剧刨剸劰勌别"));
         var _temp_3:* = this._97e6669630cf5da1cdc7fa17.graphics;
         var _temp_2:* = 0x75878806 ^ 0x5BD313E4 ^ 0x725C53B0 ^ 0x5C08C852;
         _temp_3.drawRect(_temp_2,_temp_2,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._1711f9f4456a0ff9c378e333.graphics.clear();
         this._1711f9f4456a0ff9c378e333.graphics.beginFill(-344684602 ^ 0x12489782 ^ -599887334 ^ 0x2502625E,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("კူီဖႛ႘ჭၓၥყ႗ჵႃဢჲႣယၾჴ჆၈ႆစရ","჆ၧႝႩဵჱႬၜဦႃဖჶၽ၀နჂ"));
         var _temp_5:* = this._1711f9f4456a0ff9c378e333.graphics;
         var _temp_4:* = 0x445A781E ^ 0x3A3E2287 ^ 0x2443D342 ^ 0x5A2789DB;
         _temp_5.drawRect(_temp_4,_temp_4,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._b41c7307961cd274b62cc4dc();
         var _loc5_:_810c4ade948afb64e9c7ee25 = this._5e7110af8930d46906af6820;
         for each(_loc3_ in this._7dfb33011c8b3ef0f9211f53)
         {
            if(this._97e6669630cf5da1cdc7fa17 == null)
            {
               break;
            }
            _loc3_.update();
            _loc1_ = _loc3_.lastPosition;
            if(_loc1_ != null)
            {
               this._97e6669630cf5da1cdc7fa17.graphics.drawCircle(_loc1_.x,_loc1_.y,_loc3_.radius);
            }
            _loc3_._ccfc144e6d5b79943fa3528b(_loc5_);
         }
         for each(_loc4_ in this._2d4a6c6e44e1cbc76a68e130)
         {
            if(this._97e6669630cf5da1cdc7fa17 == null)
            {
               break;
            }
            _loc4_.update();
            _loc1_ = _loc4_.lastPosition;
            _loc2_ = _loc4_.lastSize;
            if(_loc2_ != null && _loc1_ != null)
            {
               this._97e6669630cf5da1cdc7fa17.graphics.drawRoundRect(_loc1_.x,_loc1_.y,_loc2_.x,_loc2_.y,0x61E25DA7 ^ -2099546017 ^ -1284754984 ^ 0x5055142A);
            }
         }
         if(this._0fcb3dd64f1ea6c9f163eae2 != null)
         {
            this._0fcb3dd64f1ea6c9f163eae2.update();
         }
         if(this._1711f9f4456a0ff9c378e333 != null)
         {
            this._1711f9f4456a0ff9c378e333.graphics.endFill();
         }
      }
      
      private function _b41c7307961cd274b62cc4dc() : void
      {
         if(!this._b9631fcc1986c180b3dec774)
         {
            return;
         }
         var _loc1_:_8a5b0c698d40931e860c0aeb = this.gui;
         if(_loc1_ == null || !_loc1_.visible)
         {
            return;
         }
         var _temp_3:* = §§findproperty(Point);
         var _temp_2:* = 0x404C5BAB ^ -1708850672 ^ -1933009189 ^ 0x56A1C765;
         var _loc2_:Point = new Point(_temp_2,_temp_2);
         var _loc3_:_a743682c1543c38af612eb6f = _loc1_.controllerSettings.viewSettings;
         var _loc4_:DisplayObject = _loc3_.buttonSound.source;
         var _loc5_:DisplayObject = _loc3_.buttonMusic.source;
         var _temp_6:* = _loc4_.parent;
         var _temp_5:* = §§findproperty(Point);
         var _temp_4:* = 0x6C1A8E92 ^ -840206040 ^ 0x334395BD ^ -1833803257;
         var _loc6_:Point = _temp_6.localToGlobal(new Point(_temp_4,_temp_4));
         _loc6_.x += _loc4_.x - _loc2_.x;
         if(this._1711f9f4456a0ff9c378e333 != null)
         {
            var _temp_12:* = this._1711f9f4456a0ff9c378e333.graphics;
            var _temp_11:* = _loc6_.x;
            var _temp_10:* = 0x23BA3164 ^ -1128922808 ^ -1032245260 ^ 0x5D751FD8;
            var _temp_9:* = _loc4_.width + _loc5_.width + _loc2_.x * (0x27CA48FE ^ -108850062 ^ -1874331186 ^ 0x4E0EA540);
            var _temp_8:* = _loc5_.height - _loc2_.y;
            var _temp_7:* = -901145453 ^ 0x557A2CD1 ^ 0x1103C524 ^ -1909426836;
            _temp_12.drawRoundRect(_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_7);
         }
         if(this._97e6669630cf5da1cdc7fa17 != null)
         {
            var _temp_18:* = this._97e6669630cf5da1cdc7fa17.graphics;
            var _temp_17:* = _loc6_.x;
            var _temp_16:* = 0x3220D8C4 ^ 0x170D7784 ^ -1819610957 ^ -1230544909;
            var _temp_15:* = _loc4_.width + _loc5_.width + _loc2_.x * (-1353107708 ^ 0x31C7E00A ^ -833378076 ^ 0x50CD7FE8);
            var _temp_14:* = _loc5_.height - _loc2_.y;
            var _temp_13:* = -412037978 ^ -33028550 ^ 0x76503309 ^ 0x6F28F99F;
            _temp_18.drawRoundRect(_temp_17,_temp_16,_temp_15,_temp_14,_temp_13,_temp_13);
         }
      }
      
      private function _245289a9a9a41d67e6c88cf9() : void
      {
         var _loc1_:int = 0x19E28654 ^ 0x22D92DDD ^ 0x29D5FAD5 ^ 0x2DA2D48F;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x5B38A76E ^ 0x6137470B ^ 0x047807CE ^ 0x013B6279))
            {
               case 0:
                  this._0fcb3dd64f1ea6c9f163eae2._edc25d3261cfa0589be172fc();
                  this._0fcb3dd64f1ea6c9f163eae2 = null;
                  return;
               case 1:
                  if(this._0fcb3dd64f1ea6c9f163eae2 == null)
                  {
                     _loc1_ = -981828975 ^ -1671779960 ^ -2015228349 ^ -510764918;
                  }
                  else
                  {
                     _loc1_ = -1825799795 ^ 0x10F68F8F ^ 0x051C9D4B ^ -1182132581;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

