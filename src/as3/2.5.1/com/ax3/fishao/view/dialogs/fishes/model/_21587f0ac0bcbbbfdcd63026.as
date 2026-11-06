package com.ax3.fishao.view.dialogs.fishes.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.tfs._bb16db8e79db6c61890c313e;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.utils.empty;
   
   public class _21587f0ac0bcbbbfdcd63026
   {
      
      public var id:int;
      
      public var notepad:String;
      
      public var countTotal:int;
      
      public var countShiny:int;
      
      public var average:Number;
      
      public var biggest:Number;
      
      public var biggestServers:Number;
      
      public var locationIds:Array;
      
      public var baitIds:Array;
      
      public var isActive:Boolean;
      
      private var _9a201d1de7e26b5ebb1bddfe:String;
      
      public function _21587f0ac0bcbbbfdcd63026()
      {
         super();
      }
      
      public function get displayName() : String
      {
         var _loc1_:int = -1591252216 ^ 0x12DDB56B ^ 0x4902E668 ^ 0x1A3C12A8;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x40FBC911 ^ 0x25AFC29B ^ -1397754718 ^ 0x293FD588))
            {
               case 0:
                  this._9a201d1de7e26b5ebb1bddfe = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挡掾挂捴掠揾捛揲挼指掌掆捜掼挩挪換掦","挝挙指掊挘挛挱捻揧排捜揃捷捠捥揬") + this.id);
                  _loc1_ = 0x0600C4DA ^ 0x340FE227 ^ 0x06BDFDCF ^ -730402413;
                  break;
               case 1:
                  return this._9a201d1de7e26b5ebb1bddfe;
               case 2:
                  if(_c2ad9d37d7be0097d6d2e977._366a0cba702662de218e1cd3(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劧剈刳刾剹到勺勪剏努剡制划劒劜刊勫勾","勩劾劅剅劈劺劅劰劚劲勆勓剥勡勱勰") + this.id))
                  {
                     _loc1_ = 0x698396C3 ^ -587753721 ^ -1204977958 ^ -308456002;
                  }
                  else
                  {
                     _loc1_ = 0x37FFF80D ^ 0x3E8E72B5 ^ 0x136EB745 ^ -86304935;
                  }
                  break;
               case 3:
                  if(empty(this._9a201d1de7e26b5ebb1bddfe))
                  {
                     _loc1_ = 0x3A5903C2 ^ -561119716 ^ -1336881222 ^ -1270867770;
                  }
                  else
                  {
                     _loc1_ = -23872771 ^ -2100972885 ^ -72305229 ^ 0x67229744;
                  }
                  break;
               case 4:
                  this._9a201d1de7e26b5ebb1bddfe = "";
                  _loc1_ = -1002467343 ^ 0x3A5282A7 ^ -1937802224 ^ -1831445529;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function deserialize(param1:Object) : void
      {
         this.id = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剣刲剢刼劌勎刿列劓勑剕剃劸刧剺则副刲助劯劧剝","勳剢刎刜勛労刨初刡刔剹刺勞勎刾刾"));
         this.countTotal = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხႠႪၺჲჿၻႁႱၬჂჵု၂႓პါဘძ္အီဉျၾႪჲႍჶၰ","နჼသးშဣၭႢႜ၇Ⴃ႞၉Ⴇၯმ"));
         this.countShiny = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၆ႂႋს႘၎ႪႩႧ჊ႦဌႬဪႎჰა်Ⴏေძ႔ႁ၃ဣჇဴၼႮၪ","Ⴣႆၸႂဂႂ႒ဤ၊უၚဣမၖၰთ"));
         this.average = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剭勲劎劚剬剬势劆剐功剦劼剁劭勤刧劇剣劒初勅勊","分前动剀劤劦剒刍勶刓勽刪刺剝刻努"));
         this.biggest = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၠံႢაკဟႷၨა჻დႧၝჰႢၾႃကაငံဟ","ႢႡნေန჌းჃြႹႠၒႄჯ၇თ"));
         this.biggestServers = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勾劏剶刁加刈勃劓剋努剋勢剆勦刋分劘剞删刳勫劙剖删剼別劋剦勝劬剷劲剫勇劒励","刋势劔勮努勮勠助劰勘劭刵刐勽努剹"));
         var _loc2_:String = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔剽劭剡劥劂劇刞剅劖勨刁刨劉加劕刻劅刘務切刧刾刨劗劢劧劇势刎","划切劖勹刕加劳刍刡剕勥勇刼刱勜勁"));
         this.locationIds = _loc2_.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("划劙删剱勓劀剚剷判則","刹则列勃剫劒剉勝刓勨劁刚劂刯劓刀"));
         this.locationIds.forEach(_bb16db8e79db6c61890c313e._a878a7ca348c8a0a06817029);
         var _loc3_:String = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揀捞揢掅捔掇揹损捇揭掮挽揖揠採掽揆揃揎揓挤揜","捡捴揙捞掯损掗掍捕揻揾掁揽振捘挹"));
         this.baitIds = _loc3_.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勶勪刾剛刔勸刾劫刜劝","券刪剠劺劯勲劸劮勠劜劬勛勉努務割"));
         this.baitIds.forEach(_bb16db8e79db6c61890c313e._a878a7ca348c8a0a06817029);
         this.notepad = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掦挟掆挥推揀挢揵揜挺揍捘掏揘推捜掱挝捛捦探揊","掺捛挦挺挲挎挨捞掲推揪揺挹揸揚挞"));
      }
   }
}

