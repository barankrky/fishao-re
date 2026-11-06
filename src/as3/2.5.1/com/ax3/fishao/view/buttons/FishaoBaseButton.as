package com.ax3.fishao.view.buttons
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.display.buttons.StandardBitmapButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.utils.TransparentClickUtil;
   import com.ax3.utils.ColorMatrix;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.DropShadowFilter;
   import flash.utils.Dictionary;
   
   public class FishaoBaseButton extends StandardBitmapButton
   {
      
      private static var _defaulFilterByState:Dictionary;
      
      private var _filterByState:Dictionary = new Dictionary();
      
      public function FishaoBaseButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      private static function createDefaultFilters() : void
      {
         var _loc1_:ColorMatrix = null;
         FishaoBaseButton._defaulFilterByState = new Dictionary();
         var _loc2_:ColorMatrix = new ColorMatrix();
         _loc2_.adjustSaturation(-1333261792 ^ 0x5FBF99DB ^ -2015549348 ^ 0x68EABBA7);
         FishaoBaseButton._defaulFilterByState[ButtonState.DISABLED] = [new ColorMatrixFilter(_loc2_.matrix)];
         _loc1_ = new ColorMatrix();
         _loc1_.adjustBrightness(_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("励副功刻劦劤剂务削刨剂別勹劬勂刪勜劁剚勨劊劯勓刹","勜剭刉勃劮剼刪劇剂剛剝割勧勱加劁"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捶挐揢捓掻捙掰挟描挾捿挽捹措掚揞揷掦掑掎揲揂挂捇","掽掜捃掽掿授揦掀揲揺掉挻揄揗揌捵"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捅掑揳挨据捤捠揢挅捁揶掔捶捃掃挕挦挪掝捏挄揰挭捥","掂掷揖揸掩掟揫掞揣指挸挣揦捽揵挬"));
         _loc1_.adjustContrast(_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဵႶႥჰဴၩ჉ႀაႽဠဪႋဿႹဟေဎႛჩჰၘ჌Ⴥ","ၡ၈ဓၺႲჂ჈რဓၔၴ჊ეၐၝე"),_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ါငჹႚၔဲ჈Ⴛဎဗ႙၈჉႓ဩუဳზစ၍ჾၮႎျ","ၬ႞჎ჭဎဈჳ၍ၹჿၼჂၮჾူლ"),_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勞剥动剎剼勅列勊勑劀劫劇勲刾勉刬勭剉剪劵劜劭勠努","列勗剫劾别勴剗劁勗刊刜刃剦刽劅刅"));
         _loc1_.adjustSaturation(_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勀勡勸劘务劅割劚剫刬刅刋勿刂券创劇勧刈刯勛刾割務","刭勣劵剡刍功刍剺劳剶剱剚剮剏剭勁"));
         var _temp_6:* = §§findproperty(DropShadowFilter);
         var _temp_5:* = -1045015421 ^ -413027573 ^ 0x56D072ED ^ 0x70079564;
         var _temp_4:* = -1323073483 ^ -785717543 ^ -727243796 ^ -1263647398;
         var _temp_3:* = 0x4EA23B ^ -1088719508 ^ -1591351016 ^ 0x1E703E4F;
         var _temp_2:* = -2117716708 ^ 0x7F0BB079 ^ -1467331343 ^ 0x5647C995;
         var _temp_1:* = -571883766 ^ 0x5F2DDB87 ^ -970394389 ^ 0x44EC9062;
         var _loc3_:DropShadowFilter = new DropShadowFilter(_temp_5,_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴁზჟင၃ဥ္჏၈ၙვကဳဋჱံ၊ჀါေႴႢၹၝ","პჩკႮႈၚၜၪ်ჟ჏က႑ရႼჩ"),-1300480971 ^ 0x7618E7C6 ^ 0x42ADA058 ^ -2033615958);
         FishaoBaseButton._defaulFilterByState[ButtonState.OVER] = [new ColorMatrixFilter(_loc1_.matrix),_loc3_];
         var _temp_14:* = FishaoBaseButton._defaulFilterByState;
         var _temp_13:* = ButtonState.DOWN;
         var _temp_12:* = §§findproperty(DropShadowFilter);
         var _temp_11:* = 0x3323CF1A ^ 0x69B355F4 ^ 0x65F2C5FA ^ 0x3F625F12;
         var _temp_10:* = 0x5D85D664 ^ 0x0EE330EB ^ 0x768B7B67 ^ 0x25ED9DC5;
         var _temp_9:* = 0x1FF3A2CE ^ 0x7A5979B9 ^ -2025479730 ^ -487621959;
         var _temp_8:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揪揥挜挮揧掌掆挘捕捸捚挥掃捻挫揞挮捡捗揵捞挥挐挵","授掛揟掶掌挋揺挌挑接换推挥掽捐提");
         var _temp_7:* = -219788232 ^ 0x50E7F4C8 ^ 0x4EA14451 ^ -324993879;
         _temp_14[_temp_13] = [new DropShadowFilter(_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_7,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劰刣劉劫剟勯勅劀勁剾勴刭刦刔劸勓剄刷勪勊勃勼勦勧","勂勌剹列刃剝劔劾勽利刽刋切勪劣勄"),_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ေးၘ၈ႬჺဃၴდႲႸူ႑ၩၟჄျლၱ჋၅႒ტႌ","ၔႴႤၬႰ၇၁ၺဳნၠႚလခထၒ"),true)];
         FishaoBaseButton._defaulFilterByState[ButtonState.NORMAL] = [];
      }
      
      override public function init(param1:StandardBitmapButtonConfiguration, param2:Function) : void
      {
         var _loc3_:int = -783909133 ^ 0x1AE9977A ^ 0x1A1E4F73 ^ -28958482;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1459048003 ^ -465963606 ^ -209187784 ^ -1857106374))
            {
               case 0:
                  createDefaultFilters();
                  _loc3_ = 0x582029D5 ^ -1071077113 ^ -211505559 ^ 0x449BA8AC;
                  break;
               case 1:
                  super.init(param1,param2);
                  if(!FishaoBaseButton._defaulFilterByState)
                  {
                     _loc3_ = 0x6D47EE8F ^ 0x3F5C5E4F ^ -508308259 ^ -1671437816;
                  }
                  else
                  {
                     _loc3_ = -1269318 ^ -1079681460 ^ 0x10EBCA01 ^ 0x7F55B3E0;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function updateGivenState() : void
      {
         super.updateGivenState();
         filters = this._filterByState[_state] ? this._filterByState[_state] : _defaulFilterByState[_state];
      }
      
      public function setFiltersForState(param1:ButtonState, param2:Array) : void
      {
         this._filterByState[param1] = param2;
      }
      
      override protected function onMouseUp(param1:MouseEvent) : void
      {
         this.onMouseOver(param1);
      }
      
      override protected function onMouseMove(param1:MouseEvent) : void
      {
         this.onMouseOver(param1);
      }
      
      private function checkForAvailablbilityUp(param1:DisplayObject) : Boolean
      {
         return param1.hasEventListener(MouseEvent.ROLL_OUT);
      }
      
      private function checkCurrentWithFindedUp(param1:DisplayObject) : Boolean
      {
         return param1 == this;
      }
      
      private function callbackUp(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.ROLL_OUT));
      }
      
      override public function onMouseOver(param1:MouseEvent) : void
      {
         var _loc2_:int = -22487403 ^ -1532721516 ^ -356278689 ^ 0x4AE6D3BD;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x55203330 ^ -1093619921 ^ 0x52826D11 ^ 0x435BE4EC))
            {
               case 0:
                  return;
               case 1:
                  if(TransparentClickUtil.isHitOnObject(param1.currentTarget as DisplayObject))
                  {
                     _loc2_ = -2139986732 ^ 0x3469CDB5 ^ -297334224 ^ -1602898256;
                  }
                  else
                  {
                     _loc2_ = -389192503 ^ 0x052F1751 ^ -631969668 ^ -845181436;
                  }
                  break;
               case 2:
                  TransparentClickUtil.doOtherInteractiveObjects(param1.currentTarget as DisplayObject,this.checkForAvailablbilityOver,this.checkCurrentWithFindedOver,this.callbackOver,this.clearCallbackOver);
                  _loc2_ = 0x4C8CF89A ^ -1267920523 ^ -1958404875 ^ -1987190536;
                  break;
               case 3:
                  TransparentClickUtil.lastObj = this;
                  super.onMouseOver(param1);
                  _loc2_ = 0x42AA4CCE ^ 0x4EAFC379 ^ -86925597 ^ 0x0CFD04B6;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function clearCallbackOver(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.ROLL_OUT));
      }
      
      private function checkForAvailablbilityOver(param1:DisplayObject) : Boolean
      {
         return param1.hasEventListener(MouseEvent.MOUSE_MOVE);
      }
      
      private function checkCurrentWithFindedOver(param1:DisplayObject) : Boolean
      {
         return param1 == this;
      }
      
      private function callbackOver(param1:DisplayObject) : void
      {
         TransparentClickUtil.clearOtherInteractiveObjects(param1);
         param1.dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = -1179250288 ^ -1631647649 ^ 0x45F839EF ^ 0x2F307A65;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6C5D01FA ^ -482868016 ^ 0x0E88EA1A ^ -869485194))
            {
               case 0:
                  super.onMouseDown(param1);
                  _loc2_ = 0x55FBF6A9 ^ -285942065 ^ 0x76A9200C ^ -2140712402;
                  break;
               case 1:
                  TransparentClickUtil.doOtherInteractiveObjects(param1.currentTarget as DisplayObject,this.checkForAvailablbilityDown,this.checkCurrentWithFindedDown,this.callbackDown,this.clearCallbackDown);
                  _loc2_ = 0x39C9CBEE ^ 0x57876699 ^ -1340980928 ^ -1818380685;
                  break;
               case 2:
                  return;
               case 3:
                  if(TransparentClickUtil.isHitOnObject(param1.currentTarget as DisplayObject))
                  {
                     _loc2_ = -2130141301 ^ 0x5A4E2BE2 ^ 0x4889943A ^ -569476587;
                  }
                  else
                  {
                     _loc2_ = 0x53C8331E ^ 0x365A8BDD ^ -2002562886 ^ -1594838466;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function clearCallbackDown(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
      }
      
      private function checkForAvailablbilityDown(param1:DisplayObject) : Boolean
      {
         return param1.hasEventListener(MouseEvent.MOUSE_DOWN);
      }
      
      private function checkCurrentWithFindedDown(param1:DisplayObject) : Boolean
      {
         return param1 == this;
      }
      
      private function callbackDown(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.MOUSE_DOWN));
      }
      
      override protected function onClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x1FC6B418 ^ -1147399669 ^ -2069551209 ^ -2092363838;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1689650602 ^ 0x699D025C ^ 0x45C6BE5E ^ 0x14A4C810))
            {
               case 0:
                  TransparentClickUtil.doOtherInteractiveObjects(param1.currentTarget as DisplayObject,this.checkForAvailablbilityClick,this.checkCurrentWithFindedClick,this.callbackClick,this.clearCallbackOver);
                  _loc2_ = -1497149512 ^ 0x20803A79 ^ -19206932 ^ -617670808;
                  break;
               case 1:
                  return;
               case 2:
                  if(TransparentClickUtil.isHitOnObject(param1.currentTarget as DisplayObject))
                  {
                     _loc2_ = 0x068F9FCC ^ 0x73AEACB4 ^ -387065253 ^ 0x3E7A6764;
                  }
                  else
                  {
                     _loc2_ = 0x7F4B17C0 ^ 0x4DD491CF ^ 0x039BC774 ^ -1833775297;
                  }
                  break;
               case 3:
                  super.onClick(param1);
                  _loc2_ = -818712939 ^ -1268208567 ^ -25767705 ^ 0x269B9C7E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function checkForAvailablbilityClick(param1:DisplayObject) : Boolean
      {
         return param1.hasEventListener(MouseEvent.CLICK);
      }
      
      private function checkCurrentWithFindedClick(param1:DisplayObject) : Boolean
      {
         return param1 == this;
      }
      
      private function callbackClick(param1:DisplayObject) : void
      {
         param1.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
      }
   }
}

