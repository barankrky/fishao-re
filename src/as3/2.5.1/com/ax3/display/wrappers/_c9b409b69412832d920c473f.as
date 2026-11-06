package com.ax3.display.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._03cf4a1c7de9f33d761a6a1d;
   import com.ax3.display.wrappers.impl._5851c671824f640d4d36d175;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _c9b409b69412832d920c473f extends ShiftWrapper implements IAssetWrapper
   {
      
      public var itemTemplate:DisplayObject;
      
      public var gap:int = 5;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var pagesTextField:TextField;
      
      public var rightPageButton:FrameButtonWrapper;
      
      private var _84a05caafebb55432d7797ed:_67a7ec125a01811d64af4dcc;
      
      private var _asset:DisplayObjectContainer;
      
      private var _fc46d534a7046d2634448855:int;
      
      private var _88bc02da2b985641c1f6304c:Vector.<_5851c671824f640d4d36d175> = new Vector.<_5851c671824f640d4d36d175>();
      
      private var _1e1fe62858be95e03027c69a:int;
      
      private var _10302684c9580f05f21cc728:int;
      
      public var listItemClickHandler:Function;
      
      public function _c9b409b69412832d920c473f()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._asset = DisplayObjectContainer(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剬削剔剡剧勢勶刳劚劅剖劢刭剬劽加","列剸剫勑力勗剔劇剅剣劽勠劇剉勥勪"));
         this.itemTemplate = this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၏Ⴝၐ၌ၪძစ჎ဠၜႍၨჃიႉქ","ბ႒႓ჄဖဠႏႅႇႻၸူၽჭႷ႑"));
         this.leftPageButton = new FrameButtonWrapper();
         this.leftPageButton.process(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捆接揃掿捐掼挏捐掶掮挅援揾揓掜揬掇掂挤捳掝捏损掾捥揆掂掺捴揼捔捀捾掭揶挤","捻揣据挌挒掇掏捍捇揮排揣捔揷揼挦")));
         addChild(this.leftPageButton);
         this.pagesTextField = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘剸劲剧勺剆刐刬刚劤刞勒剠剛剠勋剈劉剈划則勞助勦刉功剒劖劜勇剃劤剉刳剷到","勲創剞勪勰勂勧刅剀劾剹刼劢刺剽刞")));
         addChild(this.pagesTextField);
         this.rightPageButton = new FrameButtonWrapper();
         this.rightPageButton.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႚဆ႖წဠဲ႖ေၑၭၜქႪწနეძဋဘ၃ၸက჻ၕყဟၿჭზჭႍႋ჈ႁါკၹႎ","ဤ္Ⴥჶဂေနႎ၊ၐၮႨၿევჰ")));
         addChild(this.rightPageButton);
         removeAllChildren(this._asset);
         var _temp_3:* = this._asset;
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = 0x264F02B8 ^ -726305520 ^ -654379792 ^ 0x2A048358;
         _temp_3.scrollRect = new Rectangle(_temp_1,_temp_1,_loc2_.width,_loc2_.height);
         this._asset.x = _loc2_.x;
         this._asset.y = _loc2_.y;
         addChild(this._asset);
      }
      
      public function set itemFactory(param1:_67a7ec125a01811d64af4dcc) : void
      {
         this._84a05caafebb55432d7797ed = param1;
      }
      
      private function _b462671479cbd799b32eb751() : _5851c671824f640d4d36d175
      {
         return _5851c671824f640d4d36d175(this._84a05caafebb55432d7797ed._a54f7898880d608c7e1dc342());
      }
      
      public function set itemsPerPage(param1:int) : void
      {
         this._fc46d534a7046d2634448855 = param1;
         this._db31d5a7a00fb707503cbb94();
      }
      
      private function _db31d5a7a00fb707503cbb94() : void
      {
         var _loc1_:_5851c671824f640d4d36d175 = null;
         this._88bc02da2b985641c1f6304c = new Vector.<_5851c671824f640d4d36d175>();
         removeAllChildren(this._asset);
         var _loc2_:int = -444540194 ^ 0x3FA6051B ^ -1189071872 ^ 0x6306EBC5;
         while(_loc2_ < this._fc46d534a7046d2634448855)
         {
            _loc1_ = this._b462671479cbd799b32eb751();
            if(_loc1_ is IEventDispatcher)
            {
               IEventDispatcher(_loc1_).addEventListener(_03cf4a1c7de9f33d761a6a1d.ACTIVATE_WRAPPER,this._85c9a6247aaa58a5fd922d28,false,0x4268A0C6 ^ -835867135 ^ 0x6809960A ^ -464742195,true);
            }
            this._88bc02da2b985641c1f6304c.push(_loc1_);
            this._asset.addChild(DisplayObject(_loc1_));
            _loc2_++;
         }
         this._db9a71f76cd72a22c9574793();
      }
      
      private function _db9a71f76cd72a22c9574793() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0x761697E8 ^ 0x45979851 ^ -1988201772 ^ -1157661331;
         var _loc3_:int = 0x56D7E1D1 ^ 0x4B3CDF63 ^ -2002651515 ^ -1790261193;
         var _loc4_:int = this._asset.numChildren;
         if(_loc4_ > (-2103468192 ^ 0x4B07086B ^ -1050564257 ^ 0x08F93E54))
         {
            _loc1_ = this._asset.getChildAt(-299610515 ^ 0x2D0AE4A4 ^ -2022448905 ^ 0x445D4A3E);
            _loc1_.y = 0x72E5D3DE ^ 0x123DCAAD ^ -1055593331 ^ -1580403202;
            _loc3_ = _loc1_.y + _loc1_.height + this.gap;
            _loc2_ = 0x0B5C961C ^ -640727770 ^ 0x610A2E46 ^ -1281753731;
            while(_loc2_ < _loc4_)
            {
               _loc1_ = this._asset.getChildAt(_loc2_);
               _loc1_.y = _loc3_;
               _loc3_ += _loc1_.height + this.gap;
               _loc2_++;
            }
         }
      }
      
      public function show(param1:Array, param2:int, param3:int) : void
      {
         var _loc4_:_5851c671824f640d4d36d175 = null;
         var _loc5_:int = 0x17CA5735 ^ -2044901053 ^ 0x3B1A67DB ^ -1429374547;
         while(_loc5_ < this._fc46d534a7046d2634448855)
         {
            _loc4_ = this._88bc02da2b985641c1f6304c[_loc5_];
            if(_loc5_ < param1.length)
            {
               _loc4_.data = param1[_loc5_];
            }
            else
            {
               _loc4_.data = null;
            }
            _loc5_++;
         }
         this._06a6feacb166c97876912654(param2,param3);
      }
      
      private function _06a6feacb166c97876912654(param1:int, param2:int) : void
      {
         var _loc3_:int = -686967972 ^ 0x0F59B683 ^ -1126871000 ^ 0x3790CDEE;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1687780113 ^ 0x3770FF71 ^ 0x185206A0 ^ -413801183))
            {
               case 0:
                  this.leftPageButton.disable();
                  _loc3_ = 0x0EA1C5A2 ^ 0x76AE8C88 ^ 0x60BBDA43 ^ 0x4BA50B75;
                  break;
               case 1:
                  this.leftPageButton.enable();
                  _loc3_ = -1990297441 ^ -988284033 ^ -353086129 ^ -173257037;
                  break;
               case 2:
                  this.rightPageButton.enable();
                  _loc3_ = 0x566C8A3D ^ -681685402 ^ 0x2307B825 ^ -249240476;
                  break;
               case 3:
                  if(param1 >= param2 - 1)
                  {
                     _loc3_ = 0x75F5B68D ^ -986613846 ^ 0x4081052B ^ -1554752489;
                  }
                  else
                  {
                     _loc3_ = -991065202 ^ 0x6DC49D60 ^ -2039975208 ^ 0x7C50FC2B;
                  }
                  break;
               case 4:
                  this.rightPageButton.disable();
                  _loc3_ = -1571824540 ^ 0x329F7497 ^ 0x29DF2E74 ^ -367124835;
                  break;
               case 5:
                  this.pagesTextField.text = this._1e1fe62858be95e03027c69a + (-1424275974 ^ 0x4836BCA6 ^ -378184057 ^ 0x0A58A7DA) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勘勦剣刷刳剿刹勤刅刻","刳判勬刾劇劙剘则刄列剾刚劺剸劻剼") + _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣握挐掳捑捲挛揙挗捥挚捋","挴揘揍揷捦描捬掾揯捅揷捤挙掓挮挆")) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("創劷努剻劳刄勣勶刻勬","剏勍剆刧剬刍勗剁劁劄刋勵劷力剒勋") + param2;
                  return;
               case 6:
                  this._1e1fe62858be95e03027c69a = param1;
                  this._10302684c9580f05f21cc728 = param2;
                  if(param1 <= (0x4A140806 ^ 0x43DAE215 ^ -234750812 ^ -70314313))
                  {
                     _loc3_ = -450161773 ^ 0x4150068D ^ 0x5BBBB7F9 ^ -1395574024;
                  }
                  else
                  {
                     _loc3_ = 0x3C9BA1A8 ^ 0x677E2B06 ^ -534360750 ^ -388866078;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function removeAll() : void
      {
         this.show([],0x38FB5EB8 ^ -257614746 ^ -2131126069 ^ 0x48A7DA15,-1021716128 ^ -626678441 ^ 0x58531A89 ^ 0x41EF66BF);
      }
      
      private function _85c9a6247aaa58a5fd922d28(param1:Event) : void
      {
         this.listItemClickHandler(param1);
      }
   }
}

