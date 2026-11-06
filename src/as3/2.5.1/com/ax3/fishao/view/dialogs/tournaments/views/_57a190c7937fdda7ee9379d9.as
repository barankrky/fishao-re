package com.ax3.fishao.view.dialogs.tournaments.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.tournaments.models._2ea0ee0e407c812911cabdab;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _57a190c7937fdda7ee9379d9 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static const _d73b7ab0cdbf2ae40b2672d5:int = 0x586B6E83 ^ -1185441443 ^ -1891067694 ^ 0x6E746F19;
      
      private static const _5b97c22c0c7ea5f7cd6954ef:int = -1661000805 ^ 0x5958A9B3 ^ 0x46651E23 ^ -2084400114;
      
      private var _cabab91918458f61f773f13a:DisplayObjectContainer;
      
      private var _307730f221d4ed5432940b2f:TextField;
      
      private var _da50d7fb97a7c417acb99ecf:TextField;
      
      private var _6112e875128d18cef8da24b3:TextField;
      
      private var _00a014ada27094e69950008a:TextField;
      
      private var _9ecca3b855f3184469f5c70b:Array;
      
      public function _57a190c7937fdda7ee9379d9(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._cabab91918458f61f773f13a = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set position(param1:int) : void
      {
         var _loc2_:String = param1 == (-172884802 ^ -815106223 ^ -752144231 ^ -370099338) ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႠჿႺဠဌტ၍დპည","႓ၴၳႂၶჴၜဥဪმ჉၅႐စჲ႒") : param1.toString();
         this._307730f221d4ed5432940b2f.text = _loc2_;
      }
      
      public function set login(param1:String) : void
      {
         this._da50d7fb97a7c417acb99ecf.text = param1;
      }
      
      public function set criteria(param1:String) : void
      {
         this._6112e875128d18cef8da24b3.text = param1;
      }
      
      public function set reward(param1:int) : void
      {
         var _loc2_:int = -1537428481 ^ 0x077B87CB ^ -434722469 ^ 0x71FDCC8E;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4FABAA04 ^ -80475176 ^ -182835459 ^ 0x7549D6C1))
            {
               case 0:
                  this._00a014ada27094e69950008a.visible = false;
                  _loc2_ = -335030544 ^ 0x0D8D7B24 ^ -1065829414 ^ 0x153E47EC;
                  break;
               case 1:
                  if(param1 <= (-439482523 ^ 0x2FAF48B9 ^ -913788820 ^ 0x03E9FFB0))
                  {
                     _loc2_ = -1655003829 ^ -287855974 ^ 0x6A6B3665 ^ 0x2D2A6854;
                  }
                  else
                  {
                     _loc2_ = 0x0BCF64F0 ^ 0x2CB593A1 ^ -447916025 ^ -151257419;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  this._00a014ada27094e69950008a.text = param1.toString();
                  this._940494e78b2000c347eef684(_2ea0ee0e407c812911cabdab.ETPT_FISHCOINS);
                  _loc2_ = 0x7CD14D5B ^ 0x18F93C58 ^ -1698755317 ^ -899994134;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set trophy(param1:String) : void
      {
         this._940494e78b2000c347eef684(param1);
      }
      
      private function init() : void
      {
         this._9ecca3b855f3184469f5c70b = [];
         this._307730f221d4ed5432940b2f = Debug.assertProperty(this._cabab91918458f61f773f13a,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၰဏ၇ჹცႶႊჺჅ့Ⴡ჉Ⴒၾဥლၽါ။အဗယႅႅသါႛჿဈ჉ဈဧၻჍ","၈ႣေဌၥဩႫლ჎႗ჸမငႂဓဵ"),TextField);
         this._da50d7fb97a7c417acb99ecf = Debug.assertProperty(this._cabab91918458f61f773f13a,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("募剼刜剡副劋创勯剝勉剄剕劯勞勹剌劊剜効划剉劺刭勭剴剪勱判","剥刪剃动劁劆別劆剐分創劉勛務勄劀"),TextField);
         this._6112e875128d18cef8da24b3 = Debug.assertProperty(this._cabab91918458f61f773f13a,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揱捾捤掇挚挠揊捫揺捪揦捊掄提掏捀捑揉掶掜挸捒捂挨掁揓掇捾捣揆捣挛揠掁","掀挪揄揕挠挀揜挻捎挊捂揃掋捉掩捃"),TextField);
         this._00a014ada27094e69950008a = Debug.assertProperty(this._cabab91918458f61f773f13a,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("插挗按捜掵捨振掵揗揫捩揗掮掵揲揪捌掯揌挗捽掘掱挤揕揵捡掞掕掴","捀捂捶掘挸捶掓捡挵掌捲捃挎捽挎据"),TextField);
      }
      
      private function _940494e78b2000c347eef684(param1:String) : void
      {
         var _loc2_:MovieClip = null;
         _loc2_ = new gViewTournamentPrizeIcon();
         _loc2_.gotoAndStop(param1);
         _loc2_.width = _d73b7ab0cdbf2ae40b2672d5;
         _loc2_.height = _d73b7ab0cdbf2ae40b2672d5;
         _loc2_.x = this._00a014ada27094e69950008a.x + this._00a014ada27094e69950008a.textWidth + _5b97c22c0c7ea5f7cd6954ef + this._9ecca3b855f3184469f5c70b.length * (_5b97c22c0c7ea5f7cd6954ef + _d73b7ab0cdbf2ae40b2672d5);
         _loc2_.y = this._00a014ada27094e69950008a.y + (this._00a014ada27094e69950008a.height - _d73b7ab0cdbf2ae40b2672d5) / (-29977716 ^ -1356038149 ^ 0x54F39957 ^ 0x05E97522);
         this._9ecca3b855f3184469f5c70b.push(_loc2_);
         this._cabab91918458f61f773f13a.addChild(_loc2_);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:int = -1722602098 ^ -928286623 ^ -1076313402 ^ -2070897778;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x19D20814 ^ -381188412 ^ -339706971 ^ 0x71E5F9D2))
            {
               case 0:
                  if(this._cabab91918458f61f773f13a.parent != null)
                  {
                     _loc1_ = -468045355 ^ -1734511088 ^ -1969787087 ^ -1667226542;
                  }
                  else
                  {
                     _loc1_ = 0x53547A65 ^ 0x7B92486F ^ 0x05225A06 ^ 0x475464A9;
                  }
                  break;
               case 1:
                  this._cabab91918458f61f773f13a.parent.removeChild(this._cabab91918458f61f773f13a);
                  _loc1_ = -164614238 ^ 0x58AEA770 ^ 0x68E74793 ^ -1396063260;
                  break;
               case 2:
                  super._90eac9ca552fe54c2ca0299f();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

