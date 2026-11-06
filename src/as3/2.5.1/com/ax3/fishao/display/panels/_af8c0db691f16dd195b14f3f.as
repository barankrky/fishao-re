package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.display._b61f883bdc804cf4115fe314;
   import com.ax3.fishao.model._01a2aa99fe260235a2a4e8a7;
   import com.ax3.fishao.resources._f5e4d158108107f1e8a3a320;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._a2b4c9c0c53649d11f95d839;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _af8c0db691f16dd195b14f3f extends gButtonInventory implements IToolTipTarget
   {
      
      private var _292e29eb8c7abfd2d8da0b8f:Object;
      
      private var _068d499606925fbfddfe2be3:Boolean = false;
      
      public function _af8c0db691f16dd195b14f3f()
      {
         super();
         UtilsTextField.setBoldFont(title);
         UtilsTextField.setBoldFont(viewCount.label);
         addEventListener(MouseEvent.CLICK,this._fddad6741fe2ec2666fa8775);
         mouseChildren = false;
         buttonMode = true;
         app.user.addEventListener(_01a2aa99fe260235a2a4e8a7.BAIT_TYPE_CHANGE,this._9611a5758e414eeeaec1a41c);
         app.user.addEventListener(_01a2aa99fe260235a2a4e8a7.BAIT_COUNT_CHANGE,this._2051349240b090c0576d3dec);
         this._9611a5758e414eeeaec1a41c();
         this._2051349240b090c0576d3dec();
         scaleX = scaleY = viewImage.scaleX = viewImage.scaleY = -1106387432 ^ -1578914630 ^ 0x5F727EF2 ^ 0x409C0C51;
      }
      
      private function _fddad6741fe2ec2666fa8775(param1:MouseEvent) : void
      {
         var _loc2_:_a2b4c9c0c53649d11f95d839 = null;
         if(this._068d499606925fbfddfe2be3)
         {
            return;
         }
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
         if(GameSwf.instance.managerTutorial.isAnyTutorialInProgress)
         {
            _loc2_ = app.dialogFactory._9864c3452d5464a426c4be36();
         }
         else
         {
            _loc2_ = app.dialogFactory._de6d909c2aa1aa689a00238c();
         }
         _loc2_._2862140ef8cec76cc7507501(_f5e4d158108107f1e8a3a320.BAIT_NAME);
      }
      
      private function _2051349240b090c0576d3dec(param1:Event = null) : void
      {
         var _loc2_:int = 0x31888C22 ^ 0x4154352D ^ 0x57B7FF29 ^ 0x5D679151;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1319437934 ^ -875693068 ^ -1147423194 ^ -1157602506))
            {
               case 0:
                  viewCount.visible = false;
                  _loc2_ = -1351908662 ^ -1569644043 ^ -1122862212 ^ -905703625;
                  break;
               case 1:
                  if(app.user.baitCount > (-765166143 ^ 0x3C976D0C ^ 0x7C18FFD8 ^ -1830031595))
                  {
                     _loc2_ = 0x0D0E2B5C ^ 0x105EDA03 ^ -1055318516 ^ -1505413082;
                  }
                  else
                  {
                     _loc2_ = -65793027 ^ -1773091379 ^ 0x4AAD64D3 ^ 0x5AE56595;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  viewCount.label.text = app.user.baitCount.toString();
                  viewCount.visible = true;
                  _loc2_ = 0x75FE66FB ^ 0x4B5786AB ^ 0x08DD9B18 ^ 0x4C78AC3C;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _9611a5758e414eeeaec1a41c(param1:Event = null) : void
      {
         while(viewImage.numChildren > (-2121172425 ^ -1415813401 ^ -271558041 ^ -975354185))
         {
            viewImage.removeChildAt(-998312762 ^ -183047439 ^ -824227478 ^ -4761763);
         }
         var _loc2_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28();
         _loc2_.width = -295929912 ^ -1098777720 ^ 0x7C8A3418 ^ 0x2C57B860;
         _loc2_.height = 0x0EC76386 ^ 0x3B0AD23D ^ 0x42D6A9D3 ^ 0x771B1850;
         var _loc3_:int = int(app.user.baitInfoId);
         if(_loc3_ == _a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_EMPTY)
         {
            this._292e29eb8c7abfd2d8da0b8f = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描揠描挔捇捞换揹掱揔挏掝揊捪掿推","挜挿掦揑指捘挗捌捾挃挱探掔揀挤揘")):_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剠劅劫劄勏劻劫劗刼剩剡勼刷劌刖剮劥動划剨創剝务刯劰勉刏勤剳剈","助劜勘劸勿刁劶剋創剈剟劔刳剌列力"))};
         }
         else
         {
            this._292e29eb8c7abfd2d8da0b8f = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勎刻励刌剞剞刦刎刜剁刓刘刵勭刅劃","劺勢剜劝刢剞劒刚勶劽勐勔刹剧刿劖")):_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勖勣削利勔刦劝勅勵劲勛剠劐劀刽剾劄別","剬劔勉勤刱刓劙剢剚剚剉劚勻刣勳劃") + _loc3_)};
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.BAIT.name,_loc3_)));
            viewImage.addChild(_loc2_);
         }
      }
      
      public function getTooltipType() : TooltipType
      {
         return TooltipType.TEXT_TOOLTIP;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this._292e29eb8c7abfd2d8da0b8f;
      }
      
      public function lock() : void
      {
         this._068d499606925fbfddfe2be3 = true;
         filters = _b61f883bdc804cf4115fe314.DISABLE_FILTERS;
      }
      
      public function unlock() : void
      {
         this._068d499606925fbfddfe2be3 = false;
         filters = _b61f883bdc804cf4115fe314.NORMAL_FILTERS;
      }
   }
}

