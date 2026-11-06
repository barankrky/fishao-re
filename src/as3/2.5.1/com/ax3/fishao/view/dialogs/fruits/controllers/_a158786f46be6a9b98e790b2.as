package com.ax3.fishao.view.dialogs.fruits.controllers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.npc._2ac65491e9f4ed7fb73fa08d;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.fruits._a98277cf6d130b0c84f83078;
   import com.ax3.fishao.view.dialogs.fruits.views._eb0a6bf6695c7c293c78c7ef;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class _a158786f46be6a9b98e790b2 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _54ed7c9c51fcc4df164c3d8a:_eb0a6bf6695c7c293c78c7ef;
      
      private var _6be11ab95ffbc60cfe4fa3a9:_a98277cf6d130b0c84f83078;
      
      private var _4b2f81c59fa4d3416177fe28:_a3689971ad338ac1c216d985;
      
      private var _9d470a3297b73db2cfd9a275:_e23d17b945429217bbd22e3b;
      
      public function _a158786f46be6a9b98e790b2(param1:DisplayObjectContainer)
      {
         this._54ed7c9c51fcc4df164c3d8a = new _eb0a6bf6695c7c293c78c7ef(this,param1);
         super(this._54ed7c9c51fcc4df164c3d8a);
         this.init();
      }
      
      private static function _b2cf8ec536657a7722e7c39b() : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance()._f42ac7342cf11c48018af906().close();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            var _loc4_:Object = param1;
            switch(this._54ed7c9c51fcc4df164c3d8a.buttonCrush === _loc4_ ? -910709716 ^ -1840864456 ^ -1055226716 ^ -1695839312 : -2061623094 ^ -1502246600 ^ -1308594454 ^ -1855207655)
            {
               case 0:
                  this._6be11ab95ffbc60cfe4fa3a9.crushFruits();
                  break;
               default:
                  Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挂挷揁捍揲捤捑挓捃捄揩揗捫捈揚捚挰挿捀捯捲捇捌挹捉挴揣挂捓挈捵捫揇揘挅挦持控挟提挊掬揞捁揄挡捏排挙挊捬捚掔插捫挙掸捖揢揁捕捀捳揋授持推掍捫捺揚掾掕捱捻挪捏捅挣损揬挧掴捼掅揭掅揑挰挬揀捗挠掆按揑揤掄掘挋挕援挏揬揊揹掟掰捛捆捗指捲掝换捁捳挣掇挤掄挑捸捈揄揤挟挑捎捉换描捹捕掑揣捣捠挴挛掶挜据捤掬捂挤揍揬揁掌採挝挏揝损揮指挧挗","掔挀挟挭掱捎掕掝掶揮挙揰挣揘推挲"));
            }
         }
         return _loc3_;
      }
      
      private function _15ef8392716ecf1e6534badf() : void
      {
         this._54ed7c9c51fcc4df164c3d8a.buttonCrush.disable();
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_073_AMB_Fruits_crushing);
      }
      
      private function init() : void
      {
         this._6be11ab95ffbc60cfe4fa3a9 = GameSwf.instance.managerFruits;
         this._4b2f81c59fa4d3416177fe28 = new _a3689971ad338ac1c216d985(Debug.assertProperty(this._54ed7c9c51fcc4df164c3d8a.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჼ჌ဠ၄ၨႹဿၤဖიႭႉჇႌဿၦဨဧၣႇႮၖၳညႴၲၦჾჄთဓနმဗ","ၚၙႊႄ႓Ⴖၑငၕ჻ჳ჋ႻႮ၉ၫ")));
         this._9d470a3297b73db2cfd9a275 = new _e23d17b945429217bbd22e3b(Debug.assertProperty(this._54ed7c9c51fcc4df164c3d8a.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၖ჏ဉဴ჌႐ငႋဟჲၩႵჽႡ႙ခႹဖဴဘ၎Ⴃ႐Ⴖ჆კၢ၀ჟဪသႄ","ႎႭჰဣၻჳးျჱု჎ცကႂႂၒ")));
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:_2ac65491e9f4ed7fb73fa08d = GameSwf.currentLocationDialog.locationModel._5bbf4a7dc6de36b8bc7fc61d(_e42949745420bb5a55035b31.ENN_JAHNI) as _2ac65491e9f4ed7fb73fa08d;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_UPDATE:
               §§push(0x7EBEEDCE ^ -297768892 ^ 0x40E35523 ^ -803352407);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_CANCELED:
               §§push(0x0C249DAD ^ -1514320489 ^ -794360473 ^ 0x793ED55C);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_STARTED:
               §§push(0x5A47C272 ^ 0x1C471F5D ^ -1724119548 ^ -549659863);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_FINISHED:
               §§push(0x102BCD24 ^ -463159957 ^ 0x3B52A542 ^ -820128498);
               break;
            default:
               §§push(0x1A72CB2A ^ 0x1F02169A ^ 0x54FAFA22 ^ 0x518A2796);
         }
         switch(§§pop())
         {
            case 0:
               this._4b2f81c59fa4d3416177fe28.update(param1);
               this._9d470a3297b73db2cfd9a275.update(param1);
               break;
            case 1:
               _loc2_._5eb33198cda4854331dfde0b();
               _b2cf8ec536657a7722e7c39b();
               break;
            case 2:
               this._15ef8392716ecf1e6534badf();
               this._4b2f81c59fa4d3416177fe28.update(param1);
               this._9d470a3297b73db2cfd9a275.update(param1);
               break;
            case 3:
               _loc2_._48c043ef83a615b9cb135f98();
               _b2cf8ec536657a7722e7c39b();
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၛეတႎჄဝၜခრႿႝခႚဢ႞ၠးႂၞႢန၉လჽ၉႕უႦဂ္ႠၜၟႲဲ႓ၝ႖ႝჼფ႑ჳၷნ၀ယრႸ႒ტဢႷႍဗၼ၈၂ဢဲႣუဿႋ့ჲကჂႭႎ၌ჳၱဤၡჇ၇ႷၔႼჯႜკဂၖႉႆႇ၈၊ၕ႗ၪ჌ၷეၣჍႉၴႤၺႂ႓რလ႘ဤၗႍၹၵၔ၆ဇზဉჄုჵ","Ⴝြၼၸჽဠკဲ჋ႠထုႫჍႉၣ") + param1);
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

