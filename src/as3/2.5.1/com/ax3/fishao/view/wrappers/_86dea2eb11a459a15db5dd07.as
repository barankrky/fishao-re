package com.ax3.fishao.view.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._1408d94400cd9851158c4009;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _86dea2eb11a459a15db5dd07 extends Sprite implements _ea2aef44ec86cf38585d9339
   {
      
      private var _asset:MovieClip;
      
      public var date:TextField;
      
      private var _d9dd2654f5aca77369b49a4f:_eb2314ffc37429732989b460;
      
      public var message:_1408d94400cd9851158c4009;
      
      public function _86dea2eb11a459a15db5dd07(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         this.date = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劶刣勸剈剉剭切剪刎勀助剮勃勼劲刵","勈劼劗删劊劢刮勧剥勐剗劝勄到势劓")));
         this._d9dd2654f5aca77369b49a4f = new _eb2314ffc37429732989b460();
         this._d9dd2654f5aca77369b49a4f.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("列勤勔勶剅办剟劌刌劆刭剭加剢刐勗","剐勎副創劥勢勎剌効劶刾剢制剣剅势")):""};
         this._d9dd2654f5aca77369b49a4f.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this.date,this._d9dd2654f5aca77369b49a4f,true);
         this.message = new _1408d94400cd9851158c4009();
         this.message.process(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刃劀勴剏刵刎勁劜勧劁勇劐劖割刳劁剔励勳助勌勣","刐動剜勛劼力刲剗劈创劲劦勬剿勻剑")));
      }
      
      public function update(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揹捯掃揺揸掄探掺掔掘揆揯揊挮挏捈掗挙捳掎接挀捑挥掰捑挞捜","揺捫掽揙排揽挙揅挔挀捨揵掕掜揌按")))
         {
            this.date.text = _c2ad9d37d7be0097d6d2e977._8b1d7fc46fc7ed5e413daf7a(param1.timeAgoSec,true);
            this._d9dd2654f5aca77369b49a4f.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၀ဟ၃ဃ၎ႫპဦႥჰვႲၙူႿჼ","ၑဤႼၜဖႽးႀ၉ွჺိႺဓჵჩ")):_c2ad9d37d7be0097d6d2e977._e7ea8192c5aef265a8636557(param1.timeAgoSec,true)};
         }
         else
         {
            this.date.text = "";
            this._d9dd2654f5aca77369b49a4f.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剝剮剗剻勄劵刄剋勡勔刔剋刀劀剥勭","剆勝劯劖刹刬勨剦勅力募剰劒剻刌券")):""};
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸဳ၅ီჰသႻၒსငშჺ႒ჭ","ძჴၨႾႾႣ္ၺၟႋჳဉ႓წီှ")))
         {
            _loc2_ = UtilsString.restoreEscapeSqlChars(param1.msg);
            this.message.text = _loc2_;
         }
      }
   }
}

