package com.ax3.fishao.view.dialogs.tournaments.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.tournaments.models._2ea0ee0e407c812911cabdab;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _0c1740bf1fed0c8f95ec2962 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _a872adc336f57cf29eee5075:DisplayObjectContainer;
      
      private var _9a925d985b00b03c1f7bfa9c:String;
      
      private var _21ab48c942f05e20d36235fb:TextField;
      
      private var _df160527ee026073a2e83263:TextField;
      
      private var _8a705b15aca73b747591b6a6:DisplayObjectContainer;
      
      private var _ca3799d157c85429763f3ba1:MovieClip;
      
      private var _cfd4dbcb8726fffeb69d8fb2:TextField;
      
      private var _c53c0aa752bb88ab3595c783:int;
      
      public function _0c1740bf1fed0c8f95ec2962(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._a872adc336f57cf29eee5075 = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set rewardType(param1:String) : void
      {
         this._9a925d985b00b03c1f7bfa9c = param1;
         this._426152663db4fe9030fbae44();
      }
      
      public function set labelReward(param1:String) : void
      {
         this._21ab48c942f05e20d36235fb.text = param1;
         this._df160527ee026073a2e83263.text = param1;
         this._2b119e43bebb1734ec714328();
      }
      
      public function get labelPosition() : TextField
      {
         return this._cfd4dbcb8726fffeb69d8fb2;
      }
      
      private function init() : void
      {
         this._c53c0aa752bb88ab3595c783 = -667959953 ^ 0x23A1BF51 ^ 0x67C1F4B7 ^ -1672481140;
         this._21ab48c942f05e20d36235fb = Debug.assertProperty(this._a872adc336f57cf29eee5075,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揟掰揑挄捌掬捋掝捝捬捬揆揌揕揤掄掗揫換揗掺挳揉损揱挾挂掿挂掻掊揓捝掻挧捖","捝揥捉揥掻挈掭挍挞接捾揣捂掌掞捽"),TextField);
         this._df160527ee026073a2e83263 = Debug.assertProperty(this._a872adc336f57cf29eee5075,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("換揈揎揭掎掣捷揽捍捸揰掑掌捣捧捠捥挲挪揺揱揆捒挓挔捻援挕掵掦掆挤揜掖捣掾換挐捰揜","挲捯掠掼捔挦掉挥掳揔揓掰捋捵挦掇"),TextField);
         this._8a705b15aca73b747591b6a6 = Debug.assertProperty(this._a872adc336f57cf29eee5075,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揳损捚掯挽捣捞捳捤探揕捑掜掆捻掗挔捓掆掮捝捔揠挄掣揲损挂持措揉挠捌掓挡挋揘挺挅挲掄捨","掅挺捄揎挌掌挂揷揁掘挐握揸揫挣捪"));
         this._cfd4dbcb8726fffeb69d8fb2 = Debug.assertProperty(this._a872adc336f57cf29eee5075,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捼揻掺捣揵捗捃挰揃捥揉揵挩揆揝捾揁掺捳掖挴掄捝掻挭掱揔捶挰挳捋捲挚捓捳挾捐掉","捛捺挹捤掚揺揥捁捦揱揖掅揱揭揵揱"),TextField);
         this._ca3799d157c85429763f3ba1 = Debug.assertProperty(this._a872adc336f57cf29eee5075,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၌ეႉკჼဈე႕႞ၸဝ၄ဌၧတဠჅလဳ၆ၾႲဆဌႭဧႯ႐Ⴛპ႟င၈ၳ၂႞ჸႏ၎჊ၮၳႉၯၲ၆ხႩშရလ၆၁ၠ","ႚზსဵ჆ၖႪ჌ှညဏჯთဴၪဖ"),MovieClip);
      }
      
      private function _426152663db4fe9030fbae44() : void
      {
         switch(this._9a925d985b00b03c1f7bfa9c)
         {
            case _2ea0ee0e407c812911cabdab.ETPT_BOAT_ON_SEA:
               §§push(-1787903343 ^ 0x21D3E6A7 ^ -270856818 ^ 0x5B6629B8);
               break;
            case _2ea0ee0e407c812911cabdab.ETPT_LAKE_RUN:
               §§push(0x38928588 ^ 0x55866371 ^ -588991523 ^ -1309649627);
               break;
            case _2ea0ee0e407c812911cabdab.ETPT_RACE:
               §§push(-190021868 ^ 0x4B2C81AE ^ -1136860563 ^ 0x03BC1CD5);
               break;
            case _2ea0ee0e407c812911cabdab.ETPT_MORAY:
               §§push(0x2E1D3FCE ^ -1892020070 ^ 0x05E88185 ^ -1529893166);
               break;
            case _2ea0ee0e407c812911cabdab.ETPT_FISHCOINS:
               §§push(-573999305 ^ -975538859 ^ -2072309653 ^ -1670901235);
               break;
            default:
               §§push(-1168547761 ^ -1957561723 ^ -670912747 ^ -385206822);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
               this._21ab48c942f05e20d36235fb.visible = false;
               this._df160527ee026073a2e83263.visible = true;
               this._8a705b15aca73b747591b6a6.visible = true;
               break;
            case 4:
               this._21ab48c942f05e20d36235fb.visible = true;
               this._df160527ee026073a2e83263.visible = false;
               this._8a705b15aca73b747591b6a6.visible = false;
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("အူႳႦွ႑჏ၥၟწႱ჎ხႶၕჷႰကხၡთხუဉ჊ၺႽႠဵႌဦၷႡႥრာტၩႈၓၡႁႁႪდ၊႙ဝჩႢရ၆დႼႍၺျ္ၑီႵဲႰဈჰ်ဌၒႱჱჇၾ်ტდႶდဤႲး႒ၷႯၥ႘ၧძထ၊ဥ္ႏ႘္ჾၼၡ႓ႨზနၹႮკ႞ကဋჸთအၣ၆ွူဖဖჂၢႻဣჿႬဈဿ၄ဳၠၸေ႒","Ⴌ၇ၫႰაမႈဇဴმ႗န၂ျဢႄ") + this._9a925d985b00b03c1f7bfa9c);
         }
         this._ca3799d157c85429763f3ba1.gotoAndStop(this._9a925d985b00b03c1f7bfa9c);
      }
      
      private function _2b119e43bebb1734ec714328() : void
      {
         var _loc1_:Number = (this._df160527ee026073a2e83263.width - this._df160527ee026073a2e83263.textWidth) / (-543428353 ^ -1035195612 ^ -593055118 ^ -1049531989);
         this._8a705b15aca73b747591b6a6.x = int(this._df160527ee026073a2e83263.x + _loc1_ - this._8a705b15aca73b747591b6a6.width - this._c53c0aa752bb88ab3595c783);
      }
   }
}

