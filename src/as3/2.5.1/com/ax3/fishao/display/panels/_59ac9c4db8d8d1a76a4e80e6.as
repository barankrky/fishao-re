package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.config._1137556d0c60e275233e9d5d;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.display._b61f883bdc804cf4115fe314;
   import com.ax3.fishao.model._01a2aa99fe260235a2a4e8a7;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.model.info._0760ce29bdab6fd5166927ab;
   import com.ax3.fishao.resources._f5e4d158108107f1e8a3a320;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._a2b4c9c0c53649d11f95d839;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _59ac9c4db8d8d1a76a4e80e6 extends gButtonInventory implements IToolTipTarget
   {
      
      private var _476a1200a42c1a7ec5bf7803:Object;
      
      private var _53a4dce5fccfb8e0455b8126:Boolean = false;
      
      public function _59ac9c4db8d8d1a76a4e80e6()
      {
         super();
         UtilsTextField.setBoldFont(title);
         UtilsTextField.setBoldFont(viewCount.label);
         addEventListener(MouseEvent.CLICK,this._f56831c6f81fc43468da7763);
         mouseChildren = false;
         buttonMode = true;
         app.user.addEventListener(_01a2aa99fe260235a2a4e8a7.ROD_TYPE_CHANGE,this._8253cd5593ccaab796ec612e);
         app.user.addEventListener(_01a2aa99fe260235a2a4e8a7.ROD_COUNT_CHANGE,this._0d6ef2b286f1ac52708f6fa8);
         this._0d6ef2b286f1ac52708f6fa8();
         this._8253cd5593ccaab796ec612e();
         scaleX = scaleY = viewImage.scaleX = viewImage.scaleY = -1283605104 ^ -1243525846 ^ 0x78848831 ^ 0x7E18788A;
      }
      
      private function _f56831c6f81fc43468da7763(param1:MouseEvent) : void
      {
         var _loc2_:_a2b4c9c0c53649d11f95d839 = null;
         if(this._53a4dce5fccfb8e0455b8126)
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
         _loc2_._2862140ef8cec76cc7507501(_f5e4d158108107f1e8a3a320.RODS_NAME);
      }
      
      private function _0d6ef2b286f1ac52708f6fa8(param1:Event = null) : void
      {
         var _loc2_:int = -1060368597 ^ -530293665 ^ 0x7ED47F69 ^ 0x413CEFD5;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1368499492 ^ 0x566CA32A ^ 0x629C96D3 ^ -2049004308))
            {
               case 0:
                  viewCount.visible = false;
                  _loc2_ = -1312247106 ^ -1618730750 ^ -1075596146 ^ -1896880903;
                  break;
               case 1:
                  if(app.user.rodCount > (0x5EFFF6DA ^ 0x49CD9CE9 ^ -1699621481 ^ 0x727C405B))
                  {
                     _loc2_ = 0x288D13BC ^ -149691938 ^ -1501575589 ^ 0x66A1F7F3;
                  }
                  else
                  {
                     _loc2_ = -1184881765 ^ 0x60C3F6F6 ^ -237885172 ^ 0x37313FA8;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  viewCount.label.text = app.user.rodCount.toString();
                  viewCount.visible = true;
                  _loc2_ = 0x36137FF8 ^ 0x4155370B ^ -2089274141 ^ -344014885;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _8253cd5593ccaab796ec612e(param1:Event = null) : void
      {
         var _loc2_:_a4e47350c89a50d87a148c28 = null;
         _loc2_ = null;
         var _loc3_:_0760ce29bdab6fd5166927ab = null;
         while(viewImage.numChildren > (-470540718 ^ -1802279300 ^ -163692136 ^ -2124858954))
         {
            viewImage.removeChildAt(-847244195 ^ -157473299 ^ 0x111ECAA0 ^ 0x2A03FB10);
         }
         _loc2_ = new _a4e47350c89a50d87a148c28();
         _loc2_.width = 0x60CF2611 ^ -1076716774 ^ 0x6C3183BC ^ -1288946033;
         _loc2_.height = 0x74AAA5CB ^ -199377585 ^ -1789270368 ^ 0x15EEFE1C;
         _loc3_ = app.user.inventory._986e832fab94e942a17764c6(app.user.userRodId);
         if(_loc3_ != null)
         {
            _loc2_.filters = _1137556d0c60e275233e9d5d._a7917b59a63f30a1912f1382(_loc3_.infoId,_91aad973ddd3030366bf3e1f._1b0e8010b91a2c317d9e2641(_loc3_.color));
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._e7b1d6c337d38ad01dfdd310(_67282af25befe9778e5c8dd1.ROD.name,_loc3_.infoId)));
            this._476a1200a42c1a7ec5bf7803 = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("援掄插挋捉揖揾控掷捪握揝捒挪挩捽","捇掼挡揻掁揥揭揓措掛挓揲掕掀掫捏")):_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掷挦揱揑捞捙揄挖掓捝捿揫挵掵捲捂","捿捷按捇挜揋挘揅挼据掇掅掖捰揶捨") + _loc3_.infoId)};
         }
         else
         {
            this._476a1200a42c1a7ec5bf7803 = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剣劌勖創刼劼劕剣勰勅刼剅勐剃劃劮","劚勯勀刓剘勏劢刃剎刺刭利勽勯创勂")):_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勺勝剚劰剻刮刑劊劖剎劁刃勅勷勒功刀刏剖剰効剞创利切劵勡勳","利劆剑刡劮劧剁刹劬勿剰勓創刽劈劜"))};
         }
         viewImage.addChild(_loc2_);
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
         return this._476a1200a42c1a7ec5bf7803;
      }
      
      public function lock() : void
      {
         this._53a4dce5fccfb8e0455b8126 = true;
         filters = _b61f883bdc804cf4115fe314.DISABLE_FILTERS;
      }
      
      public function unlock() : void
      {
         this._53a4dce5fccfb8e0455b8126 = false;
         filters = _b61f883bdc804cf4115fe314.NORMAL_FILTERS;
      }
      
      public function _d3fcbf15f59c5da51fa23971() : void
      {
         while(viewImage.numChildren > (0x40482F4D ^ 0x140A5281 ^ -416594003 ^ -1284949407))
         {
            viewImage.removeChildAt(0x794C1AE0 ^ -948161905 ^ 0x16E3360D ^ -1462559134);
         }
         var _loc1_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28();
         _loc1_.width = 0x53FAC113 ^ 0x7A5C60AE ^ 0x30069A06 ^ 0x19A03B83;
         _loc1_.height = 0x5793F078 ^ 0x6C50F78B ^ 0x1BC9E4BD ^ 0x200AE376;
         this._476a1200a42c1a7ec5bf7803 = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揪挡掋揭捿掷探換揽捚揬掑揝掝揪换","揇捐挏揔掴掰揋掇揿掁挃掆捞掴捾掍")):_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဢჲႍၶ႒ၟჳၘၙၽ჉რჯဧႋႦთ჋႟Ⴗခႇစ႒ჾႚၤ၏","ჵေ႒႗ႜ႒ცဟႍဇႦၙၓၲႾ჎"))};
         viewImage.addChild(_loc1_);
      }
   }
}

