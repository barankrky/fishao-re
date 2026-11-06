package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.resource
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._60d64d32c61de9fe092aecc7;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._c09200cfbfabf4d55af08be2;
   
   public class _b504c01dae642e51c7d46382 extends _60d64d32c61de9fe092aecc7
   {
      
      private var _0dda1b63eba094c8ecbf3b81:int;
      
      private var _21e24f2f8e33cec688c38d18:int;
      
      private var _a74e6a3075d540a87f65ed34:int;
      
      public function _b504c01dae642e51c7d46382()
      {
         super();
      }
      
      public function get resourceType() : int
      {
         return this._0dda1b63eba094c8ecbf3b81;
      }
      
      public function get resourceId() : int
      {
         return this._21e24f2f8e33cec688c38d18;
      }
      
      public function get amount() : int
      {
         return this._a74e6a3075d540a87f65ed34;
      }
      
      override public function get translationWheel() : String
      {
         var _loc1_:String = "";
         switch(_type)
         {
            case _c09200cfbfabf4d55af08be2.EWOFRT_BAIT_MONSTER:
               §§push(-1494369604 ^ -1700432793 ^ -337726580 ^ -678003369);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_BAIT_SPECIAL:
               §§push(0x7CD6C31A ^ 0x16D74A09 ^ 0x3509A1D4 ^ 0x5F0828C6);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_GADGET_RANDOM:
               §§push(-1546187281 ^ -2144449609 ^ 0x74B0CC6C ^ 0x57498A36);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_ROD_GLOWING:
               §§push(0x242906AE ^ 0x28E29DB1 ^ 0x76919F8A ^ 0x7A5A0496);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_ROD_RANDOM:
               §§push(-1390219723 ^ 0x55C94666 ^ -1759586660 ^ 0x6FF57ECB);
               break;
            default:
               §§push(-892253657 ^ -870164953 ^ 0x29259BCB ^ 0x2FD687CE);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_BAIT_MONSTER);
               break;
            case 1:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_BAIT_SPECIAL);
               break;
            case 2:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_GADGET_RANDOM);
               break;
            case 3:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_ROD_GLOWING);
               break;
            case 4:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_ROD_RANDOM);
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挤揨捕掽掏揖揖掛掀挗挣捔掉挏揤揲揍挗挝揓掤挰捶揧掔挩掮捏挰捘掀揕捈挠掇挛挭捨挵捻掄揹挳挏挊掃捷掌揥揈挫揓挽揗掻掐挓掕据挀探揤捵推掁揶挃挓挅挍挡挽挿掲挀挮挗捂掶捄捱捅揿捚揇挡挊挞捩损控挟描捉捣挗捲挢揍揇挘捽捧挈挦捬掣揋揩掻挜掿捇捌揿捁捁揽换掫捆挙捫挈换掃揊授掚捏掿掌挆揞捈掗揼捇捨揢捒挓挲揪揵揲捓揧挲挠挟挱捄指按揺挈揀掾揽捙揚挡捹捘掁挤掸掕捿挸揅插挵掭捆掤捑捁揀捹揃挒捺换掛掹掊揵捛掭掹揷揍","捦掇揥掭捥揷挘挱挵捃掦捆掺掽揕挵") + _type);
         }
         return _loc1_;
      }
      
      override public function get translationUserTop() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = _67282af25befe9778e5c8dd1._5a1d463095ae522df1081124(this._0dda1b63eba094c8ecbf3b81);
         var _loc3_:String = _c2ad9d37d7be0097d6d2e977.get(_loc2_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刨刵刬劧労勓刁刾别剞","勻剓刄劝剉剥剶劕勭剾刏剰刿别勞劾") + this._21e24f2f8e33cec688c38d18);
         _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_USER_TOP_RESOURCE);
         return _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_RESOURCE,_loc3_);
      }
      
      override public function get translationUserBottom() : String
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         switch(_type)
         {
            case _c09200cfbfabf4d55af08be2.EWOFRT_ROD_GLOWING:
               §§push(0x67F71625 ^ 0x2E63F782 ^ 0xCCB5B0 ^ 0x49585417);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_ROD_RANDOM:
               §§push(-2124961913 ^ 0x6E4A28AF ^ 0x1D198B87 ^ -234617682);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_BAIT_MONSTER:
               §§push(-539631745 ^ -877247820 ^ 0x327EC5D0 ^ 0x261D5819);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_BAIT_SPECIAL:
               §§push(-1078316346 ^ -291733665 ^ 0x3DF9E7F2 ^ 0x6CDFAA68);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_GADGET_RANDOM:
               §§push(-901254148 ^ 0x39B61802 ^ 0x6616B85F ^ -1780001883);
               break;
            default:
               §§push(-1383984306 ^ 0x1368FBC4 ^ 0x015CB631 ^ -1078567234);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               _loc2_ = app.rodsDict.get(this._21e24f2f8e33cec688c38d18);
               _loc1_ = (_loc2_.quality_duration as String) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挪捜捲掷捏挪捡捡挑捘","捐挄揭据揻揗揪捴掽掊挐捄揃挋挾揕") + _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_THROWS).toLowerCase();
               break;
            case 2:
            case 3:
               _loc1_ = this._a74e6a3075d540a87f65ed34 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劐勆募劖劽劏勂劺刃劷","刕剷劫勒勸劥副勃則剟劁勏刴務刴勫") + _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_THROWS).toLowerCase();
               break;
            case 4:
               _loc1_ = "";
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("加勼勘勧劈動劢劔勢劮劣务剐剿勎刁刻剫劻刴分别労劈劆動勬副勨勶劗剁剋刱剻剽刔勮刢剖刢刁刅剿剄劣剅勉创刡勛劗削剤劀勮刑剿勃刷劲勠勌勮勆副剫劚劐劅劷剒刈刊勜剏剕劻刁剉刁前劍剻剧劀刉剆劑動励剽則剭刹刿剨劐剢創勹刏劶劣副勸勗劏剄勷刏剮剴勚則勉劺剚勶剽剏剎勖剆剗删功刲刋勣剧刯划剃勧勺剷劃勚勥剶勅加劙剢剈労劇勎刵劘剺劰劰勋劳勓列募刎劬劗刹勋劈務勑創勔剡剓刟勊劲副剰勀助劀勑勾刼劢別剿刀則刜勥勏勬勐劁剅","剽剒制剣刉劯剏劌刟勈创刦刳勧劄劚") + _type);
         }
         return _loc1_;
      }
      
      override public function get imageUrl() : String
      {
         var _loc1_:String = null;
         var _loc2_:_67282af25befe9778e5c8dd1 = _67282af25befe9778e5c8dd1._6b751ce98cf8b7017db5d6e6(this._0dda1b63eba094c8ecbf3b81);
         return _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_loc2_.name,this._21e24f2f8e33cec688c38d18));
      }
      
      override public function _ec8f265d7f3a1a80b3421096(param1:Object) : void
      {
         super._ec8f265d7f3a1a80b3421096(param1);
         this._0dda1b63eba094c8ecbf3b81 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႫხႍႽ၁ဃბသყမჇၙၗှၧျႷဦჷႹ႑႘ჽူუზဖၹ၂იဒဘჵသ","ჹჾၞ့႕ၹထჽჾ၄ညႆိှၢု"));
         this._21e24f2f8e33cec688c38d18 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("努勞勯勠制劷剢刔刭办剐勘剼勓励刹劣剎剿刦劰剴勻劗刋创勏勺勭劭","劔劖剧劅刬券劆勁刊勦劵剶劬劜刪劰"));
         this._a74e6a3075d540a87f65ed34 = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掆挤捀挀掴据掓揸揵揝捧捄捲捌挘掚捧捵捯挰","掄揍挝挲挌捰挣掆据掟挒捄挵掄捅捬"));
      }
   }
}

