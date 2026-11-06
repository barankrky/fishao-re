package com.ax3.fishao.view.dialogs.base.controllers.implementations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.views.implementations._81d4c4d141c5630a6f4e06d7;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._91443e554fdccabd3846f5da;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _cf95b72aafa93dfd44e980e7 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private static const _da781fddbe6cdd0fcfa1bcd1:Number = 0x47D04805 ^ -1797005498 ^ 0x23D1ED9A ^ -253592889;
      
      private static const _86d5963c6aac00532d02999a:Number = (0x72B81C42 ^ -1647133258 ^ 0x066FC159 ^ -385523540) / (-1912374438 ^ 0x43482032 ^ 0x1D060A6E ^ -800239355);
      
      private var _2eecaaecd9ffc8085469842b:_81d4c4d141c5630a6f4e06d7;
      
      private var _c43c692884058871d5c90617:String;
      
      private var _9d6b1641a9040d2b9b537343:Boolean;
      
      private var _677a98cdb447f4f2049fef16:Point;
      
      public function _cf95b72aafa93dfd44e980e7(param1:DisplayObjectContainer, param2:String)
      {
         this._c43c692884058871d5c90617 = param2;
         this._2eecaaecd9ffc8085469842b = new _81d4c4d141c5630a6f4e06d7(this,param1,param2);
         super(this._2eecaaecd9ffc8085469842b);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._2eecaaecd9ffc8085469842b.items = param1;
      }
      
      override public function _adef58f9002aa2a71e1a50b0(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super._adef58f9002aa2a71e1a50b0(param1,param2);
         if(!_loc3_)
         {
            var _loc4_:_ebeac595a62fba6d6fcea1c2 = param1;
            switch(this._2eecaaecd9ffc8085469842b.viewScroll === _loc4_ ? -756099022 ^ -1278307181 ^ -1983186729 ^ -387271562 : 0x7DE40469 ^ 0x4C6B8778 ^ 0x0272E184 ^ 0x33FD6294)
            {
               case 0:
                  this._9d6b1641a9040d2b9b537343 = true;
                  this._2eecaaecd9ffc8085469842b.position = this._2eecaaecd9ffc8085469842b.viewScroll.position;
                  this._677a98cdb447f4f2049fef16.x = param2.stageX;
                  this._677a98cdb447f4f2049fef16.y = param2.stageY;
                  this._41faa6db479536279675f38b();
                  break;
               default:
                  Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捷掿掙捫挛掸捐換捛挤揃捯揣揾揳捁捷揂提掴指揧挒捎掟捵掘捹掦揹捺揩揆捣揍捝捄挋揮捓掤掞換揕掽挂挋採掀捣揻挻挞描揉揝挛挳揍掐捒捗捜揦揮換挎挚挽捥振挌掑捦捺揗捸掀挈採挡掂推揥掾揺掉捛挽掴掇捽掎指挭掮掠掦揧挘指揧揗掊插捦","捔揍捼挤插挓揘捜掄掽揤捌捍握揩握") + param1);
            }
         }
         return _loc3_;
      }
      
      override public function _01082a0a47e5c8c237064b36(param1:_ebeac595a62fba6d6fcea1c2, param2:MouseEvent) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc6_:Boolean = super._01082a0a47e5c8c237064b36(param1,param2);
         if(!_loc6_)
         {
            this._677a98cdb447f4f2049fef16.x = param2.stageX;
            this._677a98cdb447f4f2049fef16.y = param2.stageY;
            _loc3_ = -1751699698 ^ 0x1CCDBAF8 ^ -669802669 ^ 0x53490AA5;
            _loc4_ = -188211822 ^ -391373820 ^ -1101432860 ^ -1573030286;
            this._2eecaaecd9ffc8085469842b.position = this._2eecaaecd9ffc8085469842b.viewScroll.position;
            switch(this._c43c692884058871d5c90617)
            {
               case _91443e554fdccabd3846f5da.ESDT_HORIZONTAL:
                  §§push(0x2C7C0944 ^ -1485598872 ^ 0x22F67A20 ^ -1443234804);
                  break;
               case _91443e554fdccabd3846f5da.ESDT_VERTICAL:
                  §§push(0x13586410 ^ -1717200013 ^ -1177965411 ^ 0x333453FF);
                  break;
               default:
                  §§push(0x0F16F3F6 ^ -1121638176 ^ 0x55218AE3 ^ -418229769);
            }
            switch(§§pop())
            {
               case 0:
                  _loc3_ = param2.delta * _da781fddbe6cdd0fcfa1bcd1 * _86d5963c6aac00532d02999a * (this._2eecaaecd9ffc8085469842b.viewScroll.source.width / this._2eecaaecd9ffc8085469842b.viewContainerItems.width);
                  break;
               case 1:
                  _loc4_ = param2.delta * _da781fddbe6cdd0fcfa1bcd1 * _86d5963c6aac00532d02999a * (this._2eecaaecd9ffc8085469842b.viewScroll.source.height / this._2eecaaecd9ffc8085469842b.viewContainerItems.height);
                  break;
               default:
                  Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揺捑捒揭探掔握揪捏挿掼掅掝揋揊挓捇掝揺掜揍掸挵掟挗揩捉掜掊揨捄揱捷捜捽挘捏捀掵掟掠捷捁揞掞揺掚捂挼揲揊揘挞揲揦掌揟挡捬揅挿捌捻捅揑掃挾捾掤挃挐捗捅揹掏揧掄挎挀揰捯捓捫捜指挌挡挌挎捳掔掲掯掯揝挱掮掚掤捳揙挕掴捵揥掉揎捁授掻捈推挷挘掮掍挖掂捏掹揃挕捗捳揻挜掿捄据掮捴捄接揵掖捻捺揦捍揱挭揀揃捱捚捅揮掉挆掤揊捝揀掭掑挅揘揾掱揝捰捷","挐捏捚掏揺挶揟掊挼挈捦掏掜掻捁挕") + this._c43c692884058871d5c90617);
            }
            _loc5_ = new Point(this._677a98cdb447f4f2049fef16.x - _loc3_,this._677a98cdb447f4f2049fef16.y - _loc4_);
            this._f1e06358b87edb51789a1c81(_loc5_);
         }
         return _loc6_;
      }
      
      private function _3c9a6199421d9071b0d72cb9(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         if(this._9d6b1641a9040d2b9b537343)
         {
            _loc2_ = new Point(param1.stageX,param1.stageY);
            this._f1e06358b87edb51789a1c81(_loc2_);
         }
      }
      
      private function _bbd63eb4bc61cff0565ac19e(param1:MouseEvent) : void
      {
         this._9d6b1641a9040d2b9b537343 = false;
         this._ed294e47b8707d83d8542b72();
      }
      
      private function init() : void
      {
         this._9d6b1641a9040d2b9b537343 = false;
         this._677a98cdb447f4f2049fef16 = new Point();
         this._2eecaaecd9ffc8085469842b._fc17178734ae7cc816dbcc2f(false,false,false,false,false,false,false,true);
         this._2eecaaecd9ffc8085469842b.position = 0x073D8EB3 ^ -1703805986 ^ -1985498558 ^ 0x14EBC72F;
         this._41faa6db479536279675f38b();
      }
      
      private function _41faa6db479536279675f38b() : void
      {
         Debug.assertNotEqual(this._2eecaaecd9ffc8085469842b.source.stage,null,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၌၏ჽႾဋါ჋၁ၬၳံ႘၏ძၳზქ႟჻ဪႿჅၯნာ၂Ⴊ჎စစთაႡငၮმၬူუၨკსჃႤკႉႤ႟ယဓၱၱჍჳ၆ဗၓဉႚၮჁႋႛძ჎စႴၶန႙Ⴙႊႉ၃ჀჅဂဦႧქႽჭစႧရႵၺჰဩთ჎ႝၨჲၺႍრၰဤႰၹစႂႊဟ၃ည႐ჟ၌ၗჴႧဲၕჯქ႓ႡႠၸႻၥႝႌၓံ၏ဣဍဎ჏ၣႫႝიၱ၈ၘ჻ၬႤၡၹცჅ჻ႲႜတႱႷႝၹၟხၔၓၽၽႸႴჺႆႾდჅႿၥႯခဝၨ၏ဠ၄ၿၾရၝჅယ႔တგჟဨၕၹညယၯ၈პჸႣႢ၈ဳႛတႁြႬჅႰၗჅ်ႹჸჟဧწၧႏႣჽၠჇၽმွიႜၭၪၲၮၢါჷီၟ၎ၛဉ჆ၬႄႸႄဂხყၛჱჸၙၨ჏ႼმၟႺშკႱၿႎ","჻ၫღၪီႎႂဦႎჩၠဧ်Ⴃუ့"));
         this._2eecaaecd9ffc8085469842b.source.stage.addEventListener(MouseEvent.MOUSE_MOVE,this._3c9a6199421d9071b0d72cb9);
         this._2eecaaecd9ffc8085469842b.source.stage.addEventListener(MouseEvent.MOUSE_UP,this._bbd63eb4bc61cff0565ac19e);
      }
      
      private function _ed294e47b8707d83d8542b72() : void
      {
         this._2eecaaecd9ffc8085469842b.source.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._3c9a6199421d9071b0d72cb9);
         this._2eecaaecd9ffc8085469842b.source.stage.removeEventListener(MouseEvent.MOUSE_UP,this._bbd63eb4bc61cff0565ac19e);
      }
      
      private function _f1e06358b87edb51789a1c81(param1:Point) : void
      {
         if(this._2eecaaecd9ffc8085469842b.viewScroll.moveSpace == (0x08751E23 ^ 0x2274DAEB ^ -32716653 ^ -737342373))
         {
            return;
         }
         switch(this._c43c692884058871d5c90617)
         {
            case _91443e554fdccabd3846f5da.ESDT_HORIZONTAL:
               §§push(0x448617AC ^ 0x3AFBD675 ^ -341611160 ^ -1780568911);
               break;
            case _91443e554fdccabd3846f5da.ESDT_VERTICAL:
               §§push(-1378963642 ^ -1272960502 ^ 0x34230F8A ^ 0x2DCD8AC7);
               break;
            default:
               §§push(-1285879326 ^ 0x3AD9FD74 ^ -753958901 ^ 0x5A8D749F);
         }
         switch(§§pop())
         {
            case 0:
               this._2eecaaecd9ffc8085469842b.position += (param1.x - this._677a98cdb447f4f2049fef16.x) / this._2eecaaecd9ffc8085469842b.viewScroll.moveSpace;
               break;
            case 1:
               this._2eecaaecd9ffc8085469842b.position += (param1.y - this._677a98cdb447f4f2049fef16.y) / this._2eecaaecd9ffc8085469842b.viewScroll.moveSpace;
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掸挧揝捐挜揎揁掎揯捦掟捰捶掯揥捚揟揓捂挏挡揋掯挊捕掠揰挽揩捏捕挤揄揮掙援排掁揦挄捞捯持揊掸捯换揗挹掙掅揣掿揅换捯挃捇捶捌揭揼揓掵揎捤捐插揾揺捥掘揤捤挝掛挍掣揭掌描捆挴揚挧揬掕掉挐掶捆捤掙捁掾掋捔掻捳揱揁揮揲挔掫掍探揦捐掗揰捜掸捍掾掉掵捑挾揼揨掉捃插捓捥掵捠捘挑掾挍捌揦捭探捠捲捘挲按捗揔揋授揜挧持捫掌揆捐揿掠捂捲捻掁挘捓排挨","揩描揗揌揞挤捌挻揞揂捡挭揤挒掲掝") + this._c43c692884058871d5c90617);
         }
         this._677a98cdb447f4f2049fef16.x = param1.x;
         this._677a98cdb447f4f2049fef16.y = param1.y;
      }
      
      public function _212441a4855840c8e96e9cf3(param1:int) : void
      {
         var _loc2_:int = 0x33BD859B ^ -1655675765 ^ -1949291081 ^ -2006731913;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1324726981 ^ -1408462356 ^ -1138283403 ^ 0x0C7F8772))
            {
               case 0:
                  if(param1 >= this._2eecaaecd9ffc8085469842b.itemsCount)
                  {
                     _loc2_ = 0x4664EB17 ^ -599572158 ^ -874844405 ^ -56411505;
                  }
                  else
                  {
                     _loc2_ = 0x7B6A1D8D ^ 0x53A9D9B6 ^ 0x1C503E11 ^ -1714584072;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._2eecaaecd9ffc8085469842b._8f5fabf1115fbc7a7d6ce3e8(param1);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._ed294e47b8707d83d8542b72();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

