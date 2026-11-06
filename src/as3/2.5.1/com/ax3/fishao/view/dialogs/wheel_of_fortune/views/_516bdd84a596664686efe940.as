package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._60d64d32c61de9fe092aecc7;
   import com.greensock.TweenLite;
   import com.greensock.easing.Back;
   import com.greensock.easing.Cubic;
   import com.greensock.easing.Linear;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class _516bdd84a596664686efe940 extends _04cce4e240ff9bea66c1b7f7
   {
      
      public static const REWARDS_ANGLES:Array = [0x44EB2E59 ^ -829577885 ^ 0x355C5DBC ^ -1086662704,0x48145D35 ^ -258551916 ^ -1296405257 ^ 0x0A38FF64,0x0CB67AB1 ^ 0x7538F531 ^ 0x7A279FA0 ^ 0x03A9112E,0x1FE4F026 ^ 0x23850CD6 ^ 0x1D0E1911 ^ 0x216FE50B,0x3A2F37EA ^ -1342862076 ^ 0x01DDAD48 ^ -1811474592,0x6621564D ^ -1520742738 ^ -939834347 ^ 0x04815C54,-1950464998 ^ 0x37AA0A37 ^ -508353626 ^ 0x5DA76DF5,0x2E46CD3C ^ 0x79169576 ^ -1700183248 ^ -839312608,-926448603 ^ -1037457422 ^ -1379507862 ^ -1490533749,0x4AD44D80 ^ 0x3249DCCF ^ 0x3D538A39 ^ 0x45CE1B64];
      
      private static const _7f4eabb25f9485e0022fa867:int = 0x161683CC ^ 0x770E0175 ^ 0x75C6E2A0 ^ 0x14DE607D;
      
      private static const _357b1d49bcfad2f4c07a15f8:int = -1992968853 ^ 0x486FF990 ^ 0x57807BAD ^ -1764083881;
      
      private static const _d5b1de313f22cef638bc4369:int = -1610872770 ^ -767596520 ^ 0x656861BA ^ 0x28AB0196;
      
      private static const _0933443de3c472c4fba264eb:int = 0x6CB5862F ^ -722548759 ^ -1290882402 ^ 0x0B55F356;
      
      private var _167c935a00ed4a2801aceb86:DisplayObjectContainer;
      
      private var _d5d9e9d3afed26b8603b3a5f:Bitmap;
      
      private var _2da673e1dd9c22fc2462965d:DisplayObjectContainer;
      
      private var _392b6f78ec7d2c2cdf4c8a52:Array;
      
      private var _39cf331e5c298ac01b79e8c4:Array;
      
      private var _d485b799b29e50ba350314c4:String;
      
      public function _516bdd84a596664686efe940(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._167c935a00ed4a2801aceb86 = param2;
         this.init();
      }
      
      public function set rewards(param1:Array) : void
      {
         var _loc2_:_60d64d32c61de9fe092aecc7 = null;
         var _loc3_:_1d01a57e99b1f49345fd8561 = null;
         var _loc4_:int = 0x7BC4E3DA ^ -19608729 ^ 0x0ADAC7F8 ^ -1882525883;
         while(_loc4_ < param1.length)
         {
            _loc2_ = param1[_loc4_] as _60d64d32c61de9fe092aecc7;
            _loc3_ = this._392b6f78ec7d2c2cdf4c8a52[_loc4_];
            _loc3_.rewardType = _loc2_.type;
            _loc3_.text = _loc2_.translationWheel;
            _loc4_++;
         }
         this._39cf331e5c298ac01b79e8c4 = param1;
      }
      
      private function _747150530b906946e6a45d68(param1:String) : int
      {
         var _loc2_:_60d64d32c61de9fe092aecc7 = null;
         var _loc3_:int = -1793766236 ^ 0x56C6ECDE ^ -943628589 ^ 0x0412FEA9;
         for each(_loc2_ in this._39cf331e5c298ac01b79e8c4)
         {
            if(_loc2_.type == param1)
            {
               _loc3_ = this._39cf331e5c298ac01b79e8c4.indexOf(_loc2_);
               break;
            }
         }
         return _loc3_;
      }
      
      public function get pointerRewardTypeCurrent() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = this._2da673e1dd9c22fc2462965d.rotation < (-1352401995 ^ 0x6DC54FC1 ^ -336235449 ^ 0x2953C033) ? int(this._2da673e1dd9c22fc2462965d.rotation + (0x41216908 ^ 0x10B7EF92 ^ -1184938274 ^ -389430996)) : int(this._2da673e1dd9c22fc2462965d.rotation);
         var _loc3_:int = 0x36E5895C ^ 0x096A33C0 ^ 0x1BE70210 ^ -610842765;
         var _loc4_:int = 0x71AC14C2 ^ 0x0333B7F5 ^ 0x6FE3FE4C ^ 0x1D7C5D7B;
         while(_loc4_ < REWARDS_ANGLES.length)
         {
            if(_loc2_ >= REWARDS_ANGLES[_loc4_] - (-682282636 ^ -97912722 ^ -733039476 ^ -114131580) && _loc2_ <= REWARDS_ANGLES[_loc4_] + (0x1DCA7A6B ^ 0x2C087CD2 ^ -1494124943 ^ -1758236454))
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         return (this._39cf331e5c298ac01b79e8c4[_loc3_] as _60d64d32c61de9fe092aecc7).type;
      }
      
      private function _8d9ff952831e35c784dd1de7(param1:Event) : void
      {
         var _loc2_:String = this.pointerRewardTypeCurrent;
         if(this._d485b799b29e50ba350314c4 == _loc2_)
         {
            return;
         }
         this._d485b799b29e50ba350314c4 = _loc2_;
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_UPDATE,_22437dfd77f65dbf9dbc4281.EDT_WHEEL_OF_FORTUNE);
      }
      
      private function _89e653d46dc7b25a7a41d702() : void
      {
         this._07c0828e778d41037d950388();
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_FINISH,_22437dfd77f65dbf9dbc4281.EDT_WHEEL_OF_FORTUNE);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this._167c935a00ed4a2801aceb86,this._167c935a00ed4a2801aceb86,Event.ENTER_FRAME,this._8d9ff952831e35c784dd1de7);
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:_1d01a57e99b1f49345fd8561 = null;
         this._392b6f78ec7d2c2cdf4c8a52 = [];
         var _loc3_:int = 0x39DE69A1 ^ -1516112703 ^ 0x52189E66 ^ -832109818;
         while(_loc3_ < _d5b1de313f22cef638bc4369)
         {
            _loc1_ = Debug.assertProperty(this._167c935a00ed4a2801aceb86,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("နဢ၃ၾ၃ၡႲၶၷငႮ႖ႉႂ၅ၺ႘ლဃြჯခჟსၔျ႕႑Ⴂၣ","ဒၘႜႸႦဨၯჼဦ။ၬႼ။ჴჄ჋") + _loc3_);
            _loc2_ = new _1d01a57e99b1f49345fd8561(controller,_loc1_);
            this._392b6f78ec7d2c2cdf4c8a52.push(_loc2_);
            _loc3_++;
         }
         this._2da673e1dd9c22fc2462965d = new MovieClip();
         this._2da673e1dd9c22fc2462965d.x = this._167c935a00ed4a2801aceb86.x;
         this._2da673e1dd9c22fc2462965d.y = this._167c935a00ed4a2801aceb86.y;
         this._167c935a00ed4a2801aceb86.parent.addChildAt(this._2da673e1dd9c22fc2462965d,this._167c935a00ed4a2801aceb86.parent.getChildIndex(this._167c935a00ed4a2801aceb86));
      }
      
      private function _2edd48ff6d0c13f8d14afd87() : void
      {
         this._2da673e1dd9c22fc2462965d.rotation = this._167c935a00ed4a2801aceb86.rotation;
         this._167c935a00ed4a2801aceb86.rotation = 0x1774243A ^ 0x2C5E3379 ^ 0x729715B7 ^ 0x49BD02F4;
         var _loc1_:BitmapData = new BitmapData(this._167c935a00ed4a2801aceb86.width,this._167c935a00ed4a2801aceb86.height,true,-1942905411 ^ 0x731C07F4 ^ 0x1840B480 ^ -409808586);
         var _loc2_:Rectangle = this._167c935a00ed4a2801aceb86.getBounds(this._167c935a00ed4a2801aceb86);
         var _temp_5:* = _loc1_;
         var _temp_4:* = this._167c935a00ed4a2801aceb86;
         var _temp_3:* = §§findproperty(Matrix);
         var _temp_2:* = -580603902 ^ 0x554C80CC ^ 0x77DF35FC ^ -588493;
         var _temp_1:* = -1917323771 ^ -1172442613 ^ 0x03A20A9D ^ 0x34080E93;
         _temp_5.drawWithQuality(_temp_4,new Matrix(_temp_2,_temp_1,_temp_1,-521071562 ^ 0x08ABB8F6 ^ 0x48910BA3 ^ -1597266078,-_loc2_.x,-_loc2_.y),null,null,null,false,StageQuality.BEST);
         this._d5d9e9d3afed26b8603b3a5f = new Bitmap(_loc1_);
         this._d5d9e9d3afed26b8603b3a5f.x = -this._d5d9e9d3afed26b8603b3a5f.width / (-979923247 ^ -1843692156 ^ 0x4BA44EE9 ^ 0x1C28BDBE);
         this._d5d9e9d3afed26b8603b3a5f.y = -this._d5d9e9d3afed26b8603b3a5f.height / (-1915175521 ^ 0x7A01FBCD ^ -1608294340 ^ 0x57FA266C);
         this._2da673e1dd9c22fc2462965d.addChild(this._d5d9e9d3afed26b8603b3a5f);
         this._167c935a00ed4a2801aceb86.visible = false;
         this._2da673e1dd9c22fc2462965d.visible = true;
      }
      
      private function _07c0828e778d41037d950388() : void
      {
         this._167c935a00ed4a2801aceb86.rotation = this._2da673e1dd9c22fc2462965d.rotation;
         this._167c935a00ed4a2801aceb86.visible = true;
         this._2da673e1dd9c22fc2462965d.visible = false;
         this._d5d9e9d3afed26b8603b3a5f.bitmapData.dispose();
         this._d5d9e9d3afed26b8603b3a5f = null;
      }
      
      public function _78057b666f71707da176fab7() : void
      {
         this._2edd48ff6d0c13f8d14afd87();
         _02fbe4cbe9e83f1b8c711799.addEventListener(this._167c935a00ed4a2801aceb86,this._167c935a00ed4a2801aceb86,Event.ENTER_FRAME,this._8d9ff952831e35c784dd1de7);
         this._eab1add8f4c0d5647fbb62db(this._0201ee56d2ee61c65c28cc62);
      }
      
      private function _eab1add8f4c0d5647fbb62db(param1:Function) : void
      {
         var _loc2_:int = this._2da673e1dd9c22fc2462965d.rotation + _7f4eabb25f9485e0022fa867 * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჰ႕჋ဈ၀ဝဌုႦფဤၗႛჍႲႥၻპၒႹၰၛဗဈ","Ⴁႉ၂ၐ၇ဩဉႾႄႩ჆ာဧဵნသ");
         var _loc3_:Object = {
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刵勥别劐勏勃切剔勈勜剻劦則勵剈勮剑勒劺劖励劚勉劌","勹劷劫劣刹劯勮勽勏劈勤剪剆勝刭刎")):_loc2_,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၞზၜჸဒა჊ၦႋဂჵႶთၲၗე","ဩႦၓႏ၂ႧჳဈჇ჏႘რქၯ၀ႈ")):Back.easeIn,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴠ჆်ဣၐკგထးဩႬဣ၈ၺၚၐါჹႯ႞ၓႨျၛၚჼ၆ဢ","Ⴈၣ႞ၖဲ၁ဴႻဧ႔ၷဘဦ჆ၝၒ")):param1
         };
         TweenLite.to(this._2da673e1dd9c22fc2462965d,-160093745 ^ -260024229 ^ -731848879 ^ -761942329,_loc3_);
      }
      
      private function _0201ee56d2ee61c65c28cc62() : void
      {
         var _loc1_:int = this._2da673e1dd9c22fc2462965d.rotation + _7f4eabb25f9485e0022fa867 * (0x1D99A38A ^ 0x155A1521 ^ -1792393377 ^ -1645639177);
         var _loc2_:Object = {
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႨხნႿၥဢდႼჺၬႎရႊၱ჆ာჼ჌ႷၠၕდჀရ","ၢၘႯჰၠဢჀၳၙ၁Ⴌနဲုႀလ")):_loc1_,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႵწငႫႵၯჍႨၰႯჟგჀშრტ","ၿჽჳႇჀჸၼႯဖၲဣာဲၚ჆ႊ")):Linear.easeNone,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勫剻劋劀勾勜勞剨劐刦剆劚剁功劓刚刅勁办刢劅勰刿初剚到勯剣","勌劜勀努刱勪剺劌刏剦勡列劙刺剄勶")):this._0201ee56d2ee61c65c28cc62
         };
         TweenLite.to(this._2da673e1dd9c22fc2462965d,-20496744 ^ 0x6FB5D1FF ^ 0x6649C5F3 ^ -147117419,_loc2_);
      }
      
      public function _471a55365bf6043a770d3c83() : void
      {
         TweenLite.killTweensOf(this._2da673e1dd9c22fc2462965d);
         var _loc1_:int = this._2da673e1dd9c22fc2462965d.rotation + _7f4eabb25f9485e0022fa867;
         var _loc2_:Object = {
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掂揨握揇捕捧捍挋揃掯捉捤挬揄挢揲","揪据挚捓捏挓挹损揬挻探挟挂捘挡捽")):Cubic.easeOut,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဟ၅၁ၶႻယჹၢჷဠჵႭဂლႳ၆ယၹဈၳၘႀ၊Ⴚ","რဇლဢჰმ႞ၕႏႯႜႢღჹႺၢ")):_loc1_
         };
         TweenLite.to(this._2da673e1dd9c22fc2462965d,0x6B80F951 ^ 0x09B98FF9 ^ -1662773104 ^ -19042759,_loc2_);
      }
      
      public function _e3a3cacc6ff47d66620f39a2(param1:_60d64d32c61de9fe092aecc7) : void
      {
         TweenLite.killTweensOf(this._2da673e1dd9c22fc2462965d);
         this._2da673e1dd9c22fc2462965d.rotation = this._2da673e1dd9c22fc2462965d.rotation > (-1499099010 ^ 0x50581EC0 ^ -1885965291 ^ 0x796BFAAB) ? this._2da673e1dd9c22fc2462965d.rotation - (-1990596521 ^ 0x10E1725C ^ 0x2282909D ^ -1153823746) : this._2da673e1dd9c22fc2462965d.rotation;
         var _loc2_:int = this._747150530b906946e6a45d68(param1.type);
         var _loc3_:Number = _9c52777792d76fde110d23c0._60f3e8587e4103019e85c82e(-_0933443de3c472c4fba264eb,_0933443de3c472c4fba264eb);
         var _loc4_:int = REWARDS_ANGLES[_loc2_] + _357b1d49bcfad2f4c07a15f8 * (-733581548 ^ -1876898113 ^ -732140426 ^ -1875194699) + _loc3_;
         var _loc5_:Object = {
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捖掑揠捲挏掵捧挣揾捨挦挤掵挭挶採","探挹捥揤捁掟掠揷揹挑振揞掳捌捡接")):Cubic.easeOut,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剶分削刉劀勯剂劜刮刈剀勾勫勯勃勣勅劋劙剣勉劓剛刖","勐刟勣別刊刎劐副剄剸剦刷劀刨勅刋")):_loc4_,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚刷劲勖剤刐剭剅勞勡勘剾剸剏勁刌勚勿剧勔劼刡剹剕刳勀劙勨","劊办勒勁券劃剨刄勱勂剜剪剐剞刾剩")):this._89e653d46dc7b25a7a41d702
         };
         TweenLite.to(this._2da673e1dd9c22fc2462965d,-953836048 ^ 0x126FACBB ^ 0x7A3C8A7F ^ -1351173325,_loc5_);
      }
   }
}

