package com.ax3.fishao.view.dialogs.trade.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _6d7e55d3e1b3cc349100f419 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _69d92ea753e32fa803abf0f5:DisplayObjectContainer;
      
      private var _74920b4eb5e087d57f7e6053:FishaoButtonWrapper;
      
      private var _44e15c95aca148bb82395135:MovieClip;
      
      private var _46f62bee7c7ac4d96b24852e:DisplayObjectContainer;
      
      private var _afea87f6d464e1db0a61ebe6:DisplayObjectContainer;
      
      private var _78af439e0be9d8d8b0769ee8:Point;
      
      private var _ace921c37ce7dd2658e21190:_04cce4e240ff9bea66c1b7f7;
      
      private var _0ea8df732e1da144a7e78d9c:TextField;
      
      private var _b809561eb494cb3b44d02603:_73899a4de8f83c8d2c26f545;
      
      private var _1e2de46b1dfc5840b751d471:Array;
      
      private var _92976482bd3cb5f2eac11770:ButtonState;
      
      public function _6d7e55d3e1b3cc349100f419(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._69d92ea753e32fa803abf0f5 = param2;
         super(param1,this._69d92ea753e32fa803abf0f5);
         this.init();
      }
      
      public function get buttonRemove() : FishaoButtonWrapper
      {
         return this._74920b4eb5e087d57f7e6053;
      }
      
      public function get state() : ButtonState
      {
         return this._92976482bd3cb5f2eac11770;
      }
      
      public function set state(param1:ButtonState) : void
      {
         var _loc2_:int = 0x05FE5498 ^ 0x4934C236 ^ -1034690523 ^ -731680697;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x27C851E3 ^ 0x7D8D1B77 ^ 0x0891CC23 ^ 0x082E807A))
            {
               case 0:
                  this._92976482bd3cb5f2eac11770 = param1;
                  this.updateState();
                  return;
               case 1:
                  if(param1 == this._92976482bd3cb5f2eac11770)
                  {
                     _loc2_ = 0x3FD735EC ^ 0x46E98E9D ^ 0x27FD7519 ^ 0x0439C8A7;
                  }
                  else
                  {
                     _loc2_ = 0x0CAD6D4B ^ 0x3891B1D0 ^ 0x0B470F7D ^ 0x6581D52B;
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
      
      public function get imagePlaceholder() : DisplayObjectContainer
      {
         return this._afea87f6d464e1db0a61ebe6;
      }
      
      public function get viewTooltipHandleArea() : _04cce4e240ff9bea66c1b7f7
      {
         return this._ace921c37ce7dd2658e21190;
      }
      
      public function get imagePlaceholderSize() : Point
      {
         return this._78af439e0be9d8d8b0769ee8;
      }
      
      public function set amount(param1:int) : void
      {
         this._b809561eb494cb3b44d02603.text = param1.toString();
      }
      
      public function set amountVisible(param1:Boolean) : void
      {
         this._0ea8df732e1da144a7e78d9c.visible = param1;
         this._46f62bee7c7ac4d96b24852e.visible = param1;
      }
      
      private function init() : void
      {
         var viewTooltipHandleAreaSource:DisplayObjectContainer = null;
         this._92976482bd3cb5f2eac11770 = ButtonState.DEFAULT;
         this._74920b4eb5e087d57f7e6053 = new FishaoButtonWrapper();
         this._74920b4eb5e087d57f7e6053.process(Debug.assertProperty(this._69d92ea753e32fa803abf0f5,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掓掜挱揵挠捰捈挌捦挕掰捨捰捜捾捯换揘掏揞接措捵捆挲掱挺挋挐掀掌揶","捖捧掣掖挑挼挸捿挪掝捛掯掸挮挫捊"),DisplayObjectContainer));
         this._74920b4eb5e087d57f7e6053.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_74920b4eb5e087d57f7e6053,param1);
         };
         this._44e15c95aca148bb82395135 = Debug.assertProperty(this._69d92ea753e32fa803abf0f5,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჀႮს္Ⴃ၄မၰმၺၗဌ႞ၗၥၫრႪႅჳဳအჹჼၼ၂ი၆်ჶႚეှၹၥှႬ႟","ရ၎ၸၼဇၟၮჶ჉Ⴢჷჹဲ႗ჩზ"));
         this._1e2de46b1dfc5840b751d471 = this._44e15c95aca148bb82395135.filters;
         this._44e15c95aca148bb82395135.filters = [];
         this._afea87f6d464e1db0a61ebe6 = Debug.assertProperty(this._69d92ea753e32fa803abf0f5,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挰挾掣揅揆捳捔挲捷挜掫推揯捐捹捨捡挏掠援揢揬揓挃掶捨掼掐揳挔掛揬揎挚揶揦据掖掣捵","捝掃挏挧掽揂掻掍揳挴捶揩挭掰挫捁"));
         this._78af439e0be9d8d8b0769ee8 = new Point(this._afea87f6d464e1db0a61ebe6.width,this._afea87f6d464e1db0a61ebe6.height);
         viewTooltipHandleAreaSource = Debug.assertProperty(this._69d92ea753e32fa803abf0f5,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刢判勹劮刭勜劎剟劼剱刉劝勂刟務剡効劖剾劈剡勰劌劌刣剈刨刡勑剌刕剣勂劣务剠剭刪劢剗剷剙劳刅刱勘劤剀劽募","务判勊勞剀刬劸勒剽刭剑勇勵刭剈刖"));
         this._ace921c37ce7dd2658e21190 = new _04cce4e240ff9bea66c1b7f7(controller,viewTooltipHandleAreaSource);
         this._46f62bee7c7ac4d96b24852e = Debug.assertProperty(this._69d92ea753e32fa803abf0f5,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刀刹剎勹劘刭劧加劇勧劒勮功切勛勂刋劃勼刍勮劉勘切劵劎剕劅剢刚劏剴勽剥勛刏勻刬副剚剠刈剜劲剸劾勁剫劖劦","剰勢刲剥劙剳别勆勱刬劻刞剛劘剴刽"));
         this._0ea8df732e1da144a7e78d9c = Debug.assertProperty(this._69d92ea753e32fa803abf0f5,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႊ႘ဟႩႦჶႎ႐့ၽဴႇ။ჅႲိႪႣၴ႕ၷ၊Ⴐၴმჩဧლ႗ျ","႒ွჾჵၱဩၖჴၵႠသဩႥრას"));
         this._b809561eb494cb3b44d02603 = new _73899a4de8f83c8d2c26f545(this._0ea8df732e1da144a7e78d9c);
      }
      
      private function updateState() : void
      {
         if(this._92976482bd3cb5f2eac11770 == ButtonState.DISABLED)
         {
            return;
         }
         switch(this._92976482bd3cb5f2eac11770)
         {
            case ButtonState.OVER:
               §§push(0x6E286B74 ^ -1593224111 ^ -1533270066 ^ 0x6BBD18EB);
               break;
            case ButtonState.NORMAL:
               §§push(0x02DD79F0 ^ 0x453F3BF2 ^ -1449949906 ^ -294533331);
               break;
            default:
               §§push(-1743871647 ^ 0x55711634 ^ -807865976 ^ 0x02A746DF);
         }
         switch(§§pop())
         {
            case 0:
               this._44e15c95aca148bb82395135.filters = this._1e2de46b1dfc5840b751d471;
               break;
            case 1:
               this._44e15c95aca148bb82395135.filters = [];
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掂掠捪捪換掀揿揈挨捽揱挍挲挨揝挂揵掯揆描挰挻挄挼换揹掖揓捰捜挮捤揜掌揞挺捴按挚採捵掞捗揷挗揓揩揉揦掩揿揵探挩捦捛捒掭揌揚掼掬掼捑揷掞挽掖掐掀採捾揧揂捇挩捶掦挹掦挴揢掔掚挀挒挶挶挈挨捲捦","捹挩挓掗掛掖掂掉掎挮控掐捊揨掷捪") + this._92976482bd3cb5f2eac11770.name);
         }
      }
   }
}

