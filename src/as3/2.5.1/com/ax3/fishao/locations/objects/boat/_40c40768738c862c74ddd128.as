package com.ax3.fishao.locations.objects.boat
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.CharPosPointBoat;
   import assets.common.CharPosPointCur;
   import com.ax3.fishao.locations.chars._2fcef105b08d78e8c46cbf27;
   import com.ax3.fishao.locations.chars._600d447c132e71fe3abc23ea;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.locations.objects._9764d11560b9366107f04187;
   import com.ax3.fishao.vars.app;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.utils._8805a9dd95940e8727f16871;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _40c40768738c862c74ddd128 extends EventDispatcher
   {
      
      public var graphic:_871de1382931812cb1e248eb;
      
      public var index:int;
      
      public var obstacleMap:BitmapData;
      
      public var obstacleMapPosition:Point;
      
      public var initPosition:Point;
      
      private var _7db3222a639d489938de911a:Number = 0;
      
      private var _5a2ecd2b706ac9982980ef16:_08c120b706560fce9302bcab;
      
      private const _d8d3e8a93ae666e4acf7ec72:BitmapData;
      
      public var lastFieldCharUsername:String;
      
      public var positionPoint:CharPosPointBoat;
      
      public var lastSendPositionPoint:CharPosPointCur;
      
      public var lastSendPosition:_a5c3dbdfbeb709a5bf92d27c;
      
      public var directionCoef:Point;
      
      public function _40c40768738c862c74ddd128(param1:_9764d11560b9366107f04187)
      {
         var _temp_3:* = this;
         var _temp_2:* = §§findproperty(BitmapData);
         var _temp_1:* = 0x05FFD53B ^ -512235306 ^ 0x62BAC627 ^ -2043479093;
         _temp_3._d8d3e8a93ae666e4acf7ec72 = new BitmapData(_temp_1,_temp_1,false,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掅揗揬援挪掅捓揑揩捱挗挮掓揕掝捥挊揍挕揷捞捐挃揔","捷捈挈採掮掴挝掘揘挄揜揦挚掉揩挑"));
         this.positionPoint = new CharPosPointBoat();
         this.lastSendPositionPoint = new CharPosPointCur();
         this.lastSendPosition = new _a5c3dbdfbeb709a5bf92d27c();
         var _temp_6:* = this;
         var _temp_5:* = §§findproperty(Point);
         var _temp_4:* = -1890824967 ^ 0x15C1776A ^ -1932702110 ^ 0x164075F0;
         _temp_6.directionCoef = new Point(_temp_4,_temp_4);
         super();
         this.graphic = this.graphic;
         this.graphic = new _871de1382931812cb1e248eb(param1);
         this.graphic.addEventListener(MouseEvent.CLICK,this._743457499a90bff574df4096);
         this.obstacleMap = param1._698bb584b5b0ca8d2e60ce08();
         this.obstacleMapPosition = param1._4bb3c43b903ae97ea7094fa8();
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = 0x3DC5CBB7 ^ -323162992 ^ -1166432135 ^ 0x6B008F5E;
         var _loc3_:DisplayObjectContainer = param1.parent;
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_.getChildIndex(param1);
            _loc3_.removeChild(param1);
            _loc3_.addChildAt(this.graphic,_loc2_);
         }
         this.graphic.x = param1.x;
         this.graphic.y = param1.y;
         this.initPosition = new Point(this.graphic.x,this.graphic.y);
         this.index = parseInt(param1.name.slice(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剰劢勬刴勛勞剏勢勤刲勘刬刱刹勁剽刘劔動努","勩勋刕勿刂劲剃刈势劾劙割勍劧刎刐").length));
         this.positionPoint.mouseChildren = false;
         this.positionPoint.mouseEnabled = false;
         this.positionPoint.label.text = String(this.index);
         this.positionPoint.alpha = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刓勯剦効刦刼刲劮劳勞剀勫劑勻劽劄刱刮刮劣剒剗勯剮","勳劉剾勷刌刳勒刦劶劝勚剏剤劋剡剢");
         this.lastSendPositionPoint.mouseChildren = false;
         this.lastSendPositionPoint.mouseEnabled = false;
         this.lastSendPositionPoint.label.text = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿掄捪掼捦換捰捔捞挛挾掴揱捫揌捠挕捞","掽捶揙挎揱挛掮掁掺捻揮挓揅揧捙揺") + String(this.index);
      }
      
      private function _743457499a90bff574df4096(param1:MouseEvent) : void
      {
      }
      
      public function _991faa1b633d7d8f17c499f4() : Point
      {
         return new Point(this.graphic.x - this.graphic.width / (0x76E103E6 ^ 0x65C8A36C ^ 0x06823D6C ^ 0x15AB9DE4),this.graphic.y);
      }
      
      public function _3f743caa362fde5b1e6d90b2() : Point
      {
         return new Point(this.graphic.x - this.graphic.width / (-843811796 ^ 0x7F35C09E ^ -1888151791 ^ 0x3DF4A3A1),this.graphic.y - this.graphic.height / (-1482037262 ^ 0x4FA301D1 ^ -183141873 ^ 0x1D1F9C2E));
      }
      
      public function _ee59348f07d78d425951758d() : Point
      {
         return new Point(this.graphic.x,this.graphic.y);
      }
      
      public function _985f48f37c102603628fed8f(param1:int, param2:int) : Point
      {
         var _loc3_:Point = new Point(param1 - this.initPosition.x - this.obstacleMapPosition.x,param2 - this.initPosition.y - this.obstacleMapPosition.y);
         _loc3_ = this.graphic._985f48f37c102603628fed8f(_loc3_);
         _loc3_.x += this.graphic.x;
         _loc3_.y += this.graphic.y;
         return _loc3_;
      }
      
      public function transformPoint(param1:Point) : Point
      {
         return this.graphic.transformPoint(param1);
      }
      
      public function _042403b86bb6840f97e16176(param1:Point) : Point
      {
         return this.graphic._985f48f37c102603628fed8f(param1);
      }
      
      public function _d7784deae9af2e5cf6f6a183(param1:Point) : void
      {
         _8805a9dd95940e8727f16871._5ffd70504917cc3cf19edacb(param1,-this._7db3222a639d489938de911a);
         param1.x = int(param1.x * (-1282765644 ^ -751051216 ^ -996280639 ^ -1540578271)) / (0x5E06B867 ^ 0x51D9EA52 ^ -729154065 ^ -615075906);
         param1.y = int(param1.y * (-434045265 ^ 0x10632455 ^ -2136821521 ^ 0x76E16A71)) / (0x4A91E478 ^ -1808139300 ^ -802915187 ^ 0x0E8C634D);
      }
      
      public function get position() : Point
      {
         return this._ee59348f07d78d425951758d();
      }
      
      public function _b007a8f45848923a4a7c0631(param1:int) : BitmapData
      {
         return this.graphic._b007a8f45848923a4a7c0631(param1);
      }
      
      public function hitTest(param1:BitmapData, param2:Point) : Boolean
      {
         var _loc3_:Point = _f4627c560a2c1219281787a7.leftSizeMap[_d8a6f04331e45b3fc4efa7e8.NORMAL][this.graphic.directionIndex];
         _loc3_ = _loc3_.clone();
         _loc3_.x += this.graphic.x;
         _loc3_.y += this.graphic.y;
         var _loc4_:BitmapData = this._b007a8f45848923a4a7c0631(this.graphic.directionIndex);
         return _loc4_.hitTest(_loc3_,0x4D5D4122 ^ 0x745C756F ^ 0x73AA2869 ^ 0x4AAB1CDB,param1,param2,0x592FAFCF ^ -1709026257 ^ -1267014401 ^ 0x77771FE0);
      }
      
      public function hitTestPoint(param1:Point) : Boolean
      {
         var _loc2_:Point = _f4627c560a2c1219281787a7.leftSizeMap[_d8a6f04331e45b3fc4efa7e8.DEFAULT][this.graphic.directionIndex];
         _loc2_ = _loc2_.clone();
         _loc2_.x += this.graphic.x;
         _loc2_.y += this.graphic.y;
         var _loc3_:BitmapData = this._b007a8f45848923a4a7c0631(this.graphic.directionIndex);
         return _loc3_.hitTest(_loc2_,-333194406 ^ -109352679 ^ 0x411DEB1B ^ 0x544559A7,this._d8d3e8a93ae666e4acf7ec72,param1,0x550FD84F ^ -1052004185 ^ -1423424532 ^ 0x3F6C2BFB);
      }
      
      public function _85417e54da3f83740bb9bbfa(param1:_a5c3dbdfbeb709a5bf92d27c) : void
      {
         var _loc2_:int = 0x18DCEFEB ^ -1242615215 ^ -149131416 ^ -1584325609;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x05EC5C5A ^ 0x17B251F3 ^ 0x3DDA5709 ^ -734333851))
            {
               case 0:
                  this.graphic.x = param1.x;
                  this.graphic.y = param1.y;
                  if(param1.rotation != (-608229401 ^ -129629570 ^ 0x59E8AB19 ^ -2047970945))
                  {
                     _loc2_ = -660745509 ^ 0x69032A8D ^ -113734801 ^ -1290215939;
                  }
                  else
                  {
                     _loc2_ = -1853585574 ^ 0x1324B5B8 ^ -908019061 ^ -1325521234;
                  }
                  break;
               case 1:
                  this.graphic._dbe260738262fd87870d9a73(param1.rotation);
                  this._7db3222a639d489938de911a = param1.rotation * _600d447c132e71fe3abc23ea.DIRECTION_ARC_ALIGN_DEGREE;
                  this._eb4a3e340af1d6864c8687a7();
                  _loc2_ = -1026245921 ^ -1885039975 ^ 0x6024D105 ^ -689285244;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _eb4a3e340af1d6864c8687a7() : void
      {
         this.directionCoef.x = -1236577639 ^ 0x43E8B7D0 ^ -198753319 ^ 0x0184A691;
         this.directionCoef.y = -1161975135 ^ 0x3FEF5270 ^ 0x1BF3DD35 ^ -1633606171;
         this.directionCoef = this._4cc2f4f14a4a0f3b86eab22b(this.directionCoef);
      }
      
      public function _267630a818c67641d048fa59(param1:Point) : Point
      {
         param1.x -= this.graphic.x;
         param1.y -= this.graphic.y;
         param1 = this.graphic._267630a818c67641d048fa59(param1);
         param1.x = param1.x + this.initPosition.x + this.obstacleMapPosition.x;
         param1.y = param1.y + this.initPosition.y + this.obstacleMapPosition.y;
         return param1;
      }
      
      public function _5b62d523e0155dff19c699fb() : void
      {
         if(this._5a2ecd2b706ac9982980ef16 != null && this._5a2ecd2b706ac9982980ef16.locationUser != null)
         {
            if(app.user.inFishingProcess.value)
            {
               this._5a2ecd2b706ac9982980ef16._6cafef5908dd0ab8c7a3e877(false);
            }
            this._5a2ecd2b706ac9982980ef16._88c96ba6ec7842170a984455();
            Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掛揣捭揚捺掗掙捩掵掫掜掟掗振揜揰挦揣揅捳挷挘挜捳捳掔掦揾掳捀掾揻掏挖掽掵揖挡","揪掘掎挈揎挿挲挡掻挟损掍捥挝掺捯") + (this.initPosition.x - (-224558636 ^ -2015032362 ^ 0x6CBD72C5 ^ 0x19C5F821)) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挻挼推捛控掔挎挕掺挬挥掁揋揨揮揁掃掍","揾揿掰揳捘掀揙捘揰掖掚挈揟掣捤揩") + this.initPosition.y + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴅၽၟကၧ၄Ⴒ჈႓ဿၨၩႽဲႂၥဥဩაჟპ႑ငဍჽვဇႤგႫႇၗ","၁ၖ။၀္ჶဴჄზ႙ჽႣႬღႿႜ") + this._5a2ecd2b706ac9982980ef16 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勧勦刀劬劣勸劑刚劜副","刟劗刜勰刂劫勂勪剃剜勍制勐劏勳剺"));
            this._5a2ecd2b706ac9982980ef16._5b04cf41b6b9c6cbf830da97(this.initPosition.x - (0x5AA29294 ^ 0x16F3CF4D ^ -1710088075 ^ -700220086),this.initPosition.y);
            this._5a2ecd2b706ac9982980ef16.locationUser.position.x = this._5a2ecd2b706ac9982980ef16.position.x;
            this._5a2ecd2b706ac9982980ef16.locationUser.position.y = this._5a2ecd2b706ac9982980ef16.position.y;
            if(this._5a2ecd2b706ac9982980ef16 is _c9513c48978d5034cc9ff2f4)
            {
               _c9513c48978d5034cc9ff2f4(this._5a2ecd2b706ac9982980ef16).state = _2fcef105b08d78e8c46cbf27.NORMAL;
               _c9513c48978d5034cc9ff2f4(this._5a2ecd2b706ac9982980ef16)._6227fd5da1ce67d0b36a4f90();
            }
         }
         this.lastFieldCharUsername = null;
         this._5a2ecd2b706ac9982980ef16 = null;
         this._7eeac021d2bd11915c6a53dc();
      }
      
      private function _7eeac021d2bd11915c6a53dc() : void
      {
         TweenCube.to(this.graphic,0x1AA31BC3 ^ -1983791502 ^ 0x38202147 ^ -1421703945,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捸挬揗挖捰挷揱挩掯揼揪挽捑挚捛掆捞揍","掩捿挈捽揖挏捣掁捜挔捼挾授挩揄挬")):-1973618234 ^ 0x11A25A81 ^ -781329307 ^ 0x4A937F22},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ရႂေခႷႹၣႣၝჄၗႝႆ္ိ჈႔ဋၼ჌်ႆჾႎ၄Ⴆဋၷ","ႵႦႏნႆက့გၠ၉ဍნწღვှ")):this._743842c52a14cd87b45eee56});
      }
      
      private function _743842c52a14cd87b45eee56() : void
      {
         var _loc1_:int = 0x5C12C0A6 ^ 0x3B0DE300 ^ 0x2C6DDC94 ^ 0x1D475EE3;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-928558186 ^ 0x4C2C46E0 ^ 0x119C520E ^ -1021122901))
            {
               case 0:
                  return;
               case 1:
                  this.graphic.alpha = 0x741ADB05 ^ -867142723 ^ -574340060 ^ 0x658EEC9C;
                  this.graphic.x = this.initPosition.x;
                  this.graphic.y = this.initPosition.y;
                  this.graphic._531ebcbab8efb830a495e659(_d8a6f04331e45b3fc4efa7e8.DEFAULT,0x42EA6FB7 ^ 0x30AB4373 ^ -1415400769 ^ -639394181);
                  this._7db3222a639d489938de911a = -1748953309 ^ 0x56206808 ^ 0x45376206 ^ -2066342611;
                  TweenCube.to(this.graphic,-848165973 ^ 0x2BE13D1A ^ -2026270791 ^ 0x61AAB109,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ო၉჌ဠჵცჇၩჶზြჵ႑ဒီဉၲဟ","၈၉၂ေၕၰဋჾ၌ယၡၖოၼႨს")):-2125352941 ^ 0x631F6308 ^ -1518048378 ^ 0x47CAB89C});
                  _loc1_ = -1365950435 ^ -455929985 ^ 0x3435DC78 ^ 0x284632C9;
                  break;
               case 2:
                  if(this.graphic != null)
                  {
                     _loc1_ = -213207233 ^ 0x4445812E ^ 0x6057798C ^ -2123502001;
                  }
                  else
                  {
                     _loc1_ = 0x580AC7B5 ^ 0x0DAE34B2 ^ -307499528 ^ -298139860;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get fieldChar() : _08c120b706560fce9302bcab
      {
         return this._5a2ecd2b706ac9982980ef16;
      }
      
      public function set fieldChar(param1:_08c120b706560fce9302bcab) : void
      {
         this._5a2ecd2b706ac9982980ef16 = param1;
         this.lastFieldCharUsername = this._5a2ecd2b706ac9982980ef16.locationUser.username;
      }
      
      public function destroy() : void
      {
         TweenCube.destroyTweensOf(this.graphic,false);
         this.graphic.destroy();
         this.obstacleMap = null;
         this.obstacleMapPosition = null;
         this.initPosition = null;
         this._5a2ecd2b706ac9982980ef16 = null;
         this.lastFieldCharUsername = null;
         this.positionPoint = null;
      }
      
      public function _4217c5d9593f8db7cbf2f890(param1:Point) : Point
      {
         var _loc2_:int = -820230079 ^ -1415997618 ^ 0x526DB15C ^ -1618738184;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1293423826 ^ -1137934650 ^ -485180942 ^ 0x44B341B1))
            {
               case 0:
                  if(this.graphic != null)
                  {
                     _loc2_ = -748055189 ^ 0x287CA335 ^ 0x693EEEBA ^ 0x3B47B54D;
                  }
                  else
                  {
                     _loc2_ = -204003192 ^ 0x57FC5F6F ^ 0x0C976E60 ^ 0x01D0742D;
                  }
                  break;
               case 1:
                  return param1;
               case 2:
                  return this.graphic._4217c5d9593f8db7cbf2f890(param1);
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _4cc2f4f14a4a0f3b86eab22b(param1:Point) : Point
      {
         var _loc2_:int = -1030407673 ^ 0x2FC6389E ^ 0x64941D7F ^ -835297770;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6308CC0C ^ 0x4CE1CBD3 ^ 0x3138E5B6 ^ 0x5920A39B))
            {
               case 0:
                  return this.graphic._4cc2f4f14a4a0f3b86eab22b(param1);
               case 1:
                  return param1;
               case 2:
                  if(this.graphic != null)
                  {
                     _loc2_ = 0x3CB193AB ^ -465821893 ^ -889736176 ^ 0x558B7972;
                  }
                  else
                  {
                     _loc2_ = 0x2A7A2BE5 ^ -153429257 ^ 0x5B7514B8 ^ -1071340455;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get rotationAlign() : Number
      {
         return this._7db3222a639d489938de911a;
      }
      
      public function set rotationAlign(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this._7db3222a639d489938de911a != param1)
         {
            _loc2_ = param1 - this._7db3222a639d489938de911a;
            this._7db3222a639d489938de911a = param1;
         }
      }
      
      public function _491742ba3ea18846c625e312(param1:int) : int
      {
         param1 += this._7db3222a639d489938de911a;
         if(param1 > (-384891255 ^ -1951328340 ^ -1550423539 ^ -1054311524))
         {
            param1 = (-1561832561 ^ -1760516567 ^ -1483741208 ^ 0x6D88ECD6) + param1;
         }
         else if(param1 < (0x4890EB5E ^ 0x115234AB ^ 0x3331D7E9 ^ -1794312368))
         {
            param1 = (-1216741394 ^ 0x25CBB3CC ^ 0x70690DB3 ^ -488947463) + param1;
         }
         return param1;
      }
      
      public function _87b3acb53125f420158bfaad(param1:int) : int
      {
         param1 -= this._7db3222a639d489938de911a;
         if(param1 > (-1467393337 ^ -1821587496 ^ 0x3410747C ^ 0x0FF5E9D7))
         {
            param1 = (0x6C1C5189 ^ -652049931 ^ 0x4B064CF7 ^ 0x01C76213) + param1;
         }
         else if(param1 < (0x02D9DDF6 ^ -1711205964 ^ -1988929715 ^ -296459197))
         {
            param1 = (-1019388900 ^ -1760031805 ^ -1766938401 ^ -1031012760) + param1;
         }
         return param1;
      }
   }
}

