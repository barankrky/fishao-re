package com.ax3.fishao.view.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _2088c722bc8c92fe0f460487 extends Sprite implements _ea2aef44ec86cf38585d9339
   {
      
      private var _asset:MovieClip;
      
      public var date:TextField;
      
      private var _ef6902732ae12f1a34ff9cea:_eb2314ffc37429732989b460;
      
      public var moderator:TextField;
      
      public var banType:TextField;
      
      public var reason:TextField;
      
      private var _2026bc6bf8977e60dd237bcc:_eb2314ffc37429732989b460 = new _eb2314ffc37429732989b460();
      
      private var _c92d633ed20eb811c21c5a4f:_eb2314ffc37429732989b460 = new _eb2314ffc37429732989b460();
      
      public function _2088c722bc8c92fe0f460487(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         this.date = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剷劻剹刧勳刲勶刴勬勋剌刾勐剙劔募","刧列別勉刅剎勘勺動勛勛劕刼劉募刯")));
         this._ef6902732ae12f1a34ff9cea = new _eb2314ffc37429732989b460();
         this._ef6902732ae12f1a34ff9cea.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("务剴劙努刖刍劀劳刐勢勧剶剘剶剓勷","勬刳到劄努劖剌勄刂剈刐励剶刉剽剷")):""};
         this._ef6902732ae12f1a34ff9cea.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this.date,this._ef6902732ae12f1a34ff9cea,true);
         this.moderator = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劸勎剆劐剳分勛剴劓劙勜劄刘剗刄劸副劚勩勢勃刟勶剫剝勣","剳勇刱剩勨勢劧勤劐勿剩勪勠刏刄剽")));
         this.banType = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("သဈံနჼჾႤ၂ჵიႜႩႢკჿ၅ခჃႣူဝၿ","ႲၤႶဤဌႳခႩ႗႟ჃဟႧაုဿ")));
         this.reason = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劕剂副加刻劐勌勽剡剋劈剩刉勱剑刐剛勴劻剒","剚剸勩剄劭动势削划勉勡则勏剏剏刳")));
         this.banType.mouseEnabled = false;
         this.banType.parent.addChild(this._2026bc6bf8977e60dd237bcc);
         this._2026bc6bf8977e60dd237bcc.addChild(this.banType);
         this.reason.mouseEnabled = false;
         this.reason.parent.addChild(this._c92d633ed20eb811c21c5a4f);
         this._c92d633ed20eb811c21c5a4f.addChild(this.reason);
      }
      
      public function update(param1:Object) : void
      {
         var _loc2_:int = -1189377257 ^ -794884225 ^ -164996007 ^ -1052620029;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x60210462 ^ 0x42A4A624 ^ 0x446C054E ^ 0x38053C3E))
            {
               case 0:
                  this.moderator.text = param1.moderator_login;
                  this.banType.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揅挌挡掂掞捰挮揖捚揑捼揝挈挍揵掝掬揋换揭揞捰捸挙捚挊挱援掬捉挊揂挿挑","揮按挞持揃挤揫揍挊挿挗掁捡揟据揇") + param1.ban_type);
                  if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၈ၳဉႴკ჋ဝბဪ၅ဣეჸဲွპზပၦ်","ၹည၄ၵძႰბႮနနဇဩჼჃၓ၇")))
                  {
                     _loc2_ = -1145625106 ^ 0x4B9C9334 ^ 0x1AFA77A8 ^ -1271047615;
                  }
                  else
                  {
                     _loc2_ = -1307704315 ^ -1391566009 ^ 0x328E8896 ^ 0x736274E3;
                  }
                  break;
               case 1:
                  this.reason.text = param1.ban_description;
                  this._c92d633ed20eb811c21c5a4f.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴒ၅၆႟ႠႺწဒ၌ႧၢႠလႿဌႯ","დၹဠ႕ၓခၔီတႉႱჸၢႝი၊")):param1.ban_description};
                  return;
               case 2:
                  this.date.text = "";
                  this._ef6902732ae12f1a34ff9cea.tooltipConfig = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("损掇揞挱掔揞按挕指揁掽採挒揢捑揍","揤掳捖挩捭捻挻掆握挗捛挱揵捠振挑")):""};
                  _loc2_ = -889502067 ^ -1034061889 ^ -240664749 ^ -1477634729;
                  break;
               case 3:
                  this.date.text = _c2ad9d37d7be0097d6d2e977._8b1d7fc46fc7ed5e413daf7a(param1.timestamp_sec,true);
                  this._ef6902732ae12f1a34ff9cea.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹勂勥勧剬创刯助剐勵劅劢勵刁勞劄","勫勞勈刡刖勨剩剉力剽劃刌劕剆别势")):_c2ad9d37d7be0097d6d2e977._e7ea8192c5aef265a8636557(param1.timestamp_sec,true)};
                  _loc2_ = 0x6D75D60F ^ 0x3E8B589B ^ -912103190 ^ -995066552;
                  break;
               case 4:
                  if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႸၪႼ်ူჟ၀იყာၓထდႦၣနဪპဴႡႿ၇ာ႘Ⴣၨဩၥ႔Ⴐကစႃ၁","ရჴ႞ၴၽဩ჉ၚဓႏၘၣჀႽ႑ၴ")))
                  {
                     _loc2_ = -574569074 ^ -453420762 ^ -2116728658 ^ -436187341;
                  }
                  else
                  {
                     _loc2_ = -1869866804 ^ 0x27BB1653 ^ -1145030339 ^ 0x521BAC96;
                  }
                  break;
               case 5:
                  this._2026bc6bf8977e60dd237bcc.tooltipConfig = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挿揅挪捛掯掻挲挌捌捼掌揯捍揪挪挿","挢授捠援揬捕捃掤挚挌捛揻捪掂揬损")):_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挆挿揸揵揿援挅捃揯挻捴挅揲掍掊挨","揰握按挹挏揵揠捱掬掖捼挡揀掎掞挄") + param1.period)};
                  _loc2_ = -1772495671 ^ -127778165 ^ 0x0B5B11CE ^ 0x3B8C14BB;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

