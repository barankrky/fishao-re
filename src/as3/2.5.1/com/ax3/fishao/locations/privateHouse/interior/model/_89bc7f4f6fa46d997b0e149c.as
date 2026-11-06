package com.ax3.fishao.locations.privateHouse.interior.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo._ce86dee7dc1496f14ad148fa;
   import com.ax3.fishao.vars.app;
   import flash.geom.Point;
   
   public class _89bc7f4f6fa46d997b0e149c
   {
      
      private static const _b65dcdaca34c4aae65dbfd3e:int = -81800982 ^ -527124045 ^ 0x77B6D3E9 ^ -1815884324;
      
      protected var _id:int;
      
      protected var _itemId:int;
      
      protected var _type:String;
      
      private var _0440fdbe31f7704c98714640:String;
      
      private var _945632282a16a37a065894b6:int;
      
      protected var _position:Point;
      
      protected var _rotation:String;
      
      protected var _valueObject:_ce86dee7dc1496f14ad148fa;
      
      public function _89bc7f4f6fa46d997b0e149c()
      {
         super();
      }
      
      public function set location(param1:String) : void
      {
         this._0440fdbe31f7704c98714640 = param1;
      }
      
      public function get floor() : int
      {
         return this._945632282a16a37a065894b6;
      }
      
      public function get location() : String
      {
         return this._0440fdbe31f7704c98714640;
      }
      
      public function get valueObject() : _ce86dee7dc1496f14ad148fa
      {
         return this._valueObject;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get itemId() : int
      {
         return this._itemId;
      }
      
      public function _edd1932502b113106ece6d65(param1:String) : int
      {
         var _loc2_:int = -1211407726 ^ 0x0B511EB4 ^ -433782992 ^ 0x5ABE8316;
         switch(param1)
         {
            case _92a02af1a67b5d02208e6348.EIIR_BACK:
               §§push(0x1C6E9A66 ^ 0x3D8656C2 ^ 0x31158FD8 ^ 0x10FD437C);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_FRONT:
               §§push(0x0AD4761F ^ -323344766 ^ 0x7A07E5DD ^ -1670793919);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_LEFT:
               §§push(0x171BD35C ^ -300413571 ^ 0x41CC4D9C ^ -1194355777);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_RIGHT:
               §§push(-203871140 ^ -2003019660 ^ -2021558034 ^ -54260539);
               break;
            default:
               §§push(-935410498 ^ 0x7446D1E5 ^ -1307527375 ^ 0x0E68A26E);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = this._valueObject.back_offset_x;
               break;
            case 1:
               _loc2_ = this._valueObject.front_offset_x;
               break;
            case 2:
               _loc2_ = this._valueObject.left_offset_x;
               break;
            case 3:
               _loc2_ = this._valueObject.right_offset_x;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刦劖勔勬勻剳勥勗勻刪剜劥劶刺勲刐効劉劜劝刟劧剫刎刲勋劓劢劣労力劍刞刲刬劖勃剌刭剫剸剶势刜剌勃効劸勄勾勉刷剌勊剅劑刺劜割剄剄剐刯刁势劁劓刏剋勂刃刧刏剋剸別刐刘剮勆勵劜剱勽勑刻剅初勆勊剘励剘勃刼劔勥劊劆労剙勍劕剡剜刀剸剱勁劭剂劶剿劣則办勖劌剬剤勧刻劓勷勔割前刌剛勸劎劊刂劈勥剃劋剙劍前劘勖","劼劖劦剮劵劇劦劓动刃剪剘分剦剙刍") + param1);
         }
         return _loc2_;
      }
      
      public function _19e60c95054bdb84d878bf71(param1:String) : int
      {
         var _loc2_:int = 0x7A7A1180 ^ 0x1EB62509 ^ 0x5B0557B2 ^ 0x3FC9633B;
         switch(param1)
         {
            case _92a02af1a67b5d02208e6348.EIIR_BACK:
               §§push(-283900566 ^ 0x116B197F ^ -529817319 ^ 0x1E14BD0C);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_FRONT:
               §§push(-2126134959 ^ 0x72207ABA ^ 0x0813AB5B ^ -76148559);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_LEFT:
               §§push(-430679548 ^ 0x5C3E9049 ^ 0x09140338 ^ -1283536521);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_RIGHT:
               §§push(-1292305332 ^ -397924350 ^ 0x1ED3EF08 ^ 0x44633B45);
               break;
            default:
               §§push(-1048398095 ^ 0x665CE1FB ^ 0x37A298AA ^ -1870868572);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = this._valueObject.back_offset_y;
               break;
            case 1:
               _loc2_ = this._valueObject.front_offset_y;
               break;
            case 2:
               _loc2_ = this._valueObject.left_offset_y;
               break;
            case 3:
               _loc2_ = this._valueObject.right_offset_y;
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措挗揓挩採掘挅揉揧揭掰揷捛捩掾掙揮揍揞挞援捐捒掝挷揢挦掣掰捝掖换掉插捀挛挮掐揺掆捪掛捺掣捏挩捸掻挱掛捗掊推揤揅捖掺推捆挣按捴捯揃掴推揎揔揙揼揻揣掮揚揥挵掆捄揙掩挐掰捉揕捨揹捜掃掺挠揅揇挕挼揍捗挙挝援挟挈揮揪揈掵揧挴掝挊挳揳捴揺损捴挾揾掌揅捤捝挐挱挤措捊挍挏捱捧揱挐挃捤揖挹揪据掰揈捏揳","捣揖挳捄捤捍捃掐掙掽掅掾掀推捧揢") + param1);
         }
         return _loc2_;
      }
      
      public function _9375815b2ca05b71439a4b0f(param1:String, param2:String) : int
      {
         var _loc3_:int = -904167737 ^ 0x1157997D ^ -14901040 ^ 0x2450476A;
         if(param2 != _2486fa5f7cd2f56ad6f3cb62.EIIAT_ISO)
         {
            _loc3_ = _b65dcdaca34c4aae65dbfd3e;
         }
         else
         {
            switch(param1)
            {
               case _92a02af1a67b5d02208e6348.EIIR_BACK:
                  §§push(0x545CCE93 ^ -1371451352 ^ -406422181 ^ 0x1DDBE3E0);
                  break;
               case _92a02af1a67b5d02208e6348.EIIR_FRONT:
                  §§push(0x228BE380 ^ -1124412678 ^ -778621997 ^ 0x4FE61AA8);
                  break;
               case _92a02af1a67b5d02208e6348.EIIR_LEFT:
                  §§push(-30946104 ^ -141963426 ^ 0x1DA37ED2 ^ 0x140D7D46);
                  break;
               case _92a02af1a67b5d02208e6348.EIIR_RIGHT:
                  §§push(-358272901 ^ -2052930388 ^ 0x31EB1DEE ^ 0x5EECE93A);
                  break;
               default:
                  §§push(0x032666FD ^ -1673555314 ^ 0x3A5A3BCD ^ -1522282566);
            }
            switch(§§pop())
            {
               case 0:
                  _loc3_ = this._valueObject.back_z_point;
                  break;
               case 1:
                  _loc3_ = this._valueObject.front_z_point;
                  break;
               case 2:
                  _loc3_ = this._valueObject.left_z_point;
                  break;
               case 3:
                  _loc3_ = this._valueObject.right_z_point;
                  break;
               default:
                  Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揵捩挔捡捾挣捋捅揚捦握揓揓捐揦按挡掰揌掠挰排捶捑提揰掀揗捿挏揚换挞掫掳捃挷揵掯挖捡捅揿挰揠捛揆挸授捈捂揗掃捏掙揂揃挽捣授挍捯援揊捲揋捣捓掯措揊挅揱揂捰揞捎捲揜挝挠捨指掐捺揑挑捴捠捏挔挘揷揂挡挣挋排挹捉挍挏掰捆掙掆捹捫揪掠挷揨措揯挭捁捦揻描揖措揻揽授挴揝揎挚捝掳挕捀挾揲捕掿掟揘掏捥","掃挞揺捙挄挡掛探揪挄揻揢捳捱损挢") + param1);
            }
         }
         return _loc3_;
      }
      
      public function get offsetXMin() : int
      {
         return Math.min(this._valueObject.back_offset_x,this._valueObject.front_offset_x,this._valueObject.left_offset_x,this._valueObject.right_offset_x);
      }
      
      public function get offsetYMin() : int
      {
         return Math.min(this._valueObject.back_offset_y,this._valueObject.front_offset_y,this._valueObject.left_offset_y,this._valueObject.right_offset_y);
      }
      
      public function get position() : Point
      {
         return this._position;
      }
      
      public function get rotation() : String
      {
         return this._rotation;
      }
      
      public function set rotation(param1:String) : void
      {
         this._rotation = param1;
      }
      
      public function serialize() : Object
      {
         var _loc1_:Object = {};
         _loc1_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劯則勞剤刲刿劇剋劗剼剂勸","劭劰刱剻刴劍剕剙刢刞刱劜刖剦剓剳")] = this._id;
         _loc1_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刐勄劖到剔剹刦劮刲剨剌剔剂勐剻勃劷剝刁刦剗刭","剅剸划勳劗剗劙劑则劓剙剟刅剩列刀")] = this._itemId;
         _loc1_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掑捛挾捇掔捁揗捜揝挾挅揧掺挞掖揾掱揽","捣捣掯掀挎揯揱揻掝握掦挥捋揞捼据")] = this._945632282a16a37a065894b6;
         return _loc1_;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._id = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刲剃劶勿劈剂勑勊刦剄創勑","勧勋勒勵刡刁勌刚刷勻刲刖労勰剥剧"));
         this._itemId = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掮掐振措掫挫掍挆挂排揟掘掾捱挸掞掝捋掂控捔捊","损捭挜援捥揎挗排挦捇掆揦揹挼捺损"));
         this._valueObject = app.privateHouseInteriorItemDict.get(this._itemId) as _ce86dee7dc1496f14ad148fa;
         this._945632282a16a37a065894b6 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဩჽ၍ႷႀႩႮႊဒႋსၽၿႎ჉ფკအ","၉ႨၣႧჰၕႣၖအდჰႿဗფႳႼ"));
      }
      
      public function _34580f97f962a727c83c452e(param1:_89bc7f4f6fa46d997b0e149c) : Boolean
      {
         return this._id == param1.id && this._945632282a16a37a065894b6 == param1.floor && this._position.equals(param1.position) && this._rotation == param1.rotation;
      }
      
      public function _7e2460cabb47ddce136047c8(param1:_89bc7f4f6fa46d997b0e149c) : void
      {
         this._945632282a16a37a065894b6 = param1.floor;
         this._position.copyFrom(param1.position);
         this._rotation = param1.rotation;
      }
   }
}

