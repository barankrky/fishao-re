package com.ax3.fishao.display
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.BoatControlPanelAsset;
   import com.ax3.fishao.locations.chars._2fcef105b08d78e8c46cbf27;
   import com.ax3.fishao.vars.app;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _c3951835479a7e520373aa81 extends BoatControlPanelAsset
   {
      
      private var _9ec5610f354263f1a4f8fad2:Boolean = false;
      
      private var _6598cb5704a6ba6792e7e6cd:Point;
      
      private var _f9d7c3a3120528a27ec3aa8f:Point;
      
      private var _e4813806ec4aa21b25869ad8:MovieClip;
      
      private var _efcb056e01d62ce48752b72b:MovieClip;
      
      private var _title:TextField;
      
      public function _c3951835479a7e520373aa81()
      {
         super();
         var _loc1_:DisplayObject = getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("პჳဢ၂ႦႭცၮအ႐၃ႚဠძၪၛქၰၚၢ၃ႛჰဪ჋န႒Ⴅ","ရၳဗႽ႕ႳၱၱჃၹႇ჌ၴၓဃႇ"));
         this._6598cb5704a6ba6792e7e6cd = new Point(_loc1_.x,_loc1_.y);
         _loc1_.parent.removeChild(_loc1_);
         this._e4813806ec4aa21b25869ad8 = MovieClip(getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刄剶勣剼剕創勿勢勴剫刣刉勈加刿刅勥劉劤划剾刨剡剎勝前剄剧","动创劢勘劣刴勼剾刮劅劀勇勩剕劙勿")));
         this._f9d7c3a3120528a27ec3aa8f = new Point(this._e4813806ec4aa21b25869ad8.x,this._e4813806ec4aa21b25869ad8.y);
         this._title = TextField(getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揫揩掎挩揤掸掃掭捓挜揫掚捙捛捈捒揋掗","据掞揳掛掋揣捬掀掲挲捹掁揧挙掎捨")));
         this._efcb056e01d62ce48752b72b = MovieClip(getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剅劬剁剀勋勓剒力劙刻刄剥劇勔","劎劍刡剉勩刭剴加创剪創劍劣剬刪刃")));
         this._efcb056e01d62ce48752b72b.buttonMode = true;
         this._efcb056e01d62ce48752b72b.addEventListener(MouseEvent.CLICK,this._fd9df118096454f07f3d4783);
      }
      
      private function _fd9df118096454f07f3d4783(param1:MouseEvent) : void
      {
         this.isBoatControlActivated = !this._9ec5610f354263f1a4f8fad2;
      }
      
      public function set isBoatControlActivated(param1:Boolean) : void
      {
         var _loc2_:int = -628004847 ^ -1677295567 ^ -2119864202 ^ -1481927281;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x26822788 ^ 0x42843B4A ^ -523991531 ^ -463759603))
            {
               case 0:
                  app.user.charState.value = _2fcef105b08d78e8c46cbf27.NORMAL;
                  _loc2_ = 0x7A63E433 ^ 0x288EFE73 ^ 0x7790F851 ^ 0x45E4EFC9;
                  break;
               case 1:
                  app.user.charState.value = _2fcef105b08d78e8c46cbf27.SAIL_BY_BOAT;
                  _loc2_ = -423547089 ^ -1930181195 ^ 0x309FB363 ^ 0x3A345421;
                  break;
               case 2:
                  this._f8531c0f61b178301bd008dd();
                  _loc2_ = -562918763 ^ -29842618 ^ 0x4D71AEC8 ^ 0x0DA28AC4;
                  break;
               case 3:
                  if(this._9ec5610f354263f1a4f8fad2 != param1)
                  {
                     _loc2_ = -978180534 ^ -1142942025 ^ 0x683963B1 ^ 0x76F25E92;
                  }
                  else
                  {
                     _loc2_ = 0x2AE9A584 ^ 0x44DFBBD6 ^ -805297628 ^ -558943831;
                  }
                  break;
               case 4:
                  this._9ec5610f354263f1a4f8fad2 = param1;
                  if(this._9ec5610f354263f1a4f8fad2)
                  {
                     _loc2_ = 0x71A2CB45 ^ 0x7A002501 ^ 0x76A4AA53 ^ 0x1D9F49CC;
                  }
                  else
                  {
                     _loc2_ = 0x3E1056DE ^ 0x71F657E4 ^ -73928604 ^ -722928508;
                  }
                  break;
               case 5:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f8531c0f61b178301bd008dd() : void
      {
         TweenCube.destroyTweensOf(this._e4813806ec4aa21b25869ad8,false);
         TweenCube.to(this._e4813806ec4aa21b25869ad8,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("则剧勱勅刑劧劝剞刁剂努剄剷剒剋劒刂则刐勽勲劝勉剅","刳勉剃刽刭剉劌削募剩割削剠剓勐刊"),{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掂掖揅提捰揘挜挊授挑","捗揷控揗捑挰挿捋捶挟揦损捺捹捔挼")):(this._9ec5610f354263f1a4f8fad2 ? this._6598cb5704a6ba6792e7e6cd.x : this._f9d7c3a3120528a27ec3aa8f.x)},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揪捓挋揑捽捲揪捄挍揥换按掫挩捦挖","捻掶掋掠捥捒挆挶捚揯捄揲捁揶揃揭")):Cubic});
      }
      
      public function set titleText(param1:String) : void
      {
         this._title.text = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(!visible && param1)
         {
            TweenCube.destroyTweensOf(this,false);
            alpha = -1000373449 ^ 0x4B882E28 ^ -1261037711 ^ 0x3B01BA6E;
            TweenCube.to(this,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掸捌持揩挨捔捖捏捭揣掵掏捁捯挗捁掠掴挺推挥揁挽捙","挡掏捀揨挂探揽掴捾揜挝揅挵挳掛捍"),{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勣勈勮剄刑刳勳勵创刘勠券勒剴劌劜募前","劣刪勬勑勩勌劯勘刭剢勢効动勣勆勭")):-2023361274 ^ -1957826719 ^ -1827453308 ^ -1623499550});
            super.visible = param1;
         }
         if(visible && !param1)
         {
            TweenCube.destroyTweensOf(this,false);
            TweenCube.to(this,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၾဓၗၼဇဖ჏Ⴀ၈჏၍სႆၪ჎ဦၳဈႎႆჾႄၩგ","ႀၱႣႛႬႺၱၘၪჱၩစႭჍღၲ"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჇၛႏჍၯဲႴႎဓႋရიႾငဎႹႷ၉","ႀ჈ႦၖქაၔဲწႺჺဗၥရၛე")):0x6263FCE9 ^ 0x6E516D32 ^ 0x4290963D ^ 0x4EA207E6},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႾჂၖဇჿრၗႈၖၜ჈ၤრဌ჻გဗဦၥ့ီႈჃၶါၲႎო","ჴႩဂ၍ႼဨჅႿ႐ၴဒတဪဲၘၽ")):this._2c17bfdf1caca5b68a392ab6});
         }
      }
      
      private function _2c17bfdf1caca5b68a392ab6() : void
      {
         super.visible = false;
      }
   }
}

