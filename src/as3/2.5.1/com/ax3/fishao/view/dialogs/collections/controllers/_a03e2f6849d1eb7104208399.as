package com.ax3.fishao.view.dialogs.collections.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._aaf40c474cdac784463304b5;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.collections.model._5cb7e8cda98002c92e2581b2;
   import com.ax3.fishao.view.dialogs.collections.views._5bea605a7419d4efc7c81ba3;
   import flash.events.Event;
   
   public class _a03e2f6849d1eb7104208399 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _3a88be3d4b35cc888ab57503:_5bea605a7419d4efc7c81ba3;
      
      private var _814a2d85ace986b9490de015:int;
      
      private var _f0c16c4808a8f923cd1a54cc:int;
      
      public function _a03e2f6849d1eb7104208399(param1:int, param2:int, param3:Boolean)
      {
         this._814a2d85ace986b9490de015 = param1;
         this._f0c16c4808a8f923cd1a54cc = param2;
         this._3a88be3d4b35cc888ab57503 = new _5bea605a7419d4efc7c81ba3(this,this._814a2d85ace986b9490de015,this._f0c16c4808a8f923cd1a54cc,param3);
         super(this._3a88be3d4b35cc888ab57503);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_aaf40c474cdac784463304b5 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            switch(this._814a2d85ace986b9490de015)
            {
               case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_WITH_NAME:
                  §§push(0x4DE9C016 ^ -1293771460 ^ 0x6DF4A73B ^ -1828718063);
                  break;
               case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_WITH_TYPE:
                  §§push(0x7F65892F ^ 0x5AAFA474 ^ -295934799 ^ -879343125);
                  break;
               case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_AT_LOCATION:
                  §§push(-2004483150 ^ 0x6A7FCE37 ^ 0x7D9EECEB ^ -1620631188);
                  break;
               case _5cb7e8cda98002c92e2581b2.ECT_CATCH_SHINY_FISH_WITH_TYPE:
                  §§push(-1312886683 ^ 0x3A95B247 ^ -860144379 ^ 0x47907F24);
                  break;
               default:
                  §§push(-1597724666 ^ 0x297DCA51 ^ -1991622517 ^ 0xF322D8);
            }
            switch(§§pop())
            {
               case 0:
               case 1:
               case 2:
               case 3:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_042_UI_Click_button);
                  _loc3_ = app.dialogFactory._6f440513281998ff9a55299c();
                  _loc3_._fb2737826eacd0c722842d87(this._f0c16c4808a8f923cd1a54cc);
                  _loc3_.show();
                  _loc4_ = true;
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._3a88be3d4b35cc888ab57503._fc17178734ae7cc816dbcc2f(true);
         var _loc1_:String = null;
         switch(this._814a2d85ace986b9490de015)
         {
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_WITH_NAME:
               §§push(0x12CDEEBB ^ -2096124691 ^ -1874306602 ^ 0x018A1B80);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_WITH_TYPE:
               §§push(-1143824908 ^ 0x5482D3C3 ^ -1049181495 ^ 0x2E268CFF);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_AT_LOCATION:
               §§push(-432523386 ^ -1814552763 ^ -1279019418 ^ -970744153);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_SHINY_FISH_WITH_TYPE:
               §§push(-864622929 ^ -106293044 ^ 0x34F9EC10 ^ 0x01251270);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_COLLECT_FURNITURE:
               §§push(-206301627 ^ 0x2DD240E0 ^ 0x1E1E23C7 ^ -1065847450);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_FURNITURE_FACTORY:
               §§push(-1911477491 ^ -1085341951 ^ -349395162 ^ -629968081);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_COLLECT_FOSSILS:
               §§push(0x0900C773 ^ -183070470 ^ 0x60A8A695 ^ -1665208038);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CRUSH_FRUITS:
               §§push(-2178048 ^ 0x0F7E1B16 ^ 0x77C9F393 ^ -2023150462);
               break;
            default:
               §§push(-205864886 ^ -1054584584 ^ 0x09C0DC0E ^ 0x3B5E4CB4);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剘勠剺剰剱力劊勽勠制刓勆剶劁劔劎剢剛","剒刬勵创剄剩刽勿刢剧剚勏勨刖劧劘") + this._f0c16c4808a8f923cd1a54cc);
               break;
            case 4:
            case 5:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剻剣切剫劚勛勊刔剁劯剠劐刁剩劧刪刧刃分劝劐刋劉勩勩則利刜前刣","刋劮勨劯剈剾剁剆劈剸刜剙割勥勣劕") + this._f0c16c4808a8f923cd1a54cc);
               break;
            case 6:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ရပၜၟ္ၬႂႮဣဖ၌ဴေဆၿ჌ႜၼ၄ၺၶႮ","ဿქဨჀႥမၰဘၓႸჅၒဝ်ဎဒ") + this._f0c16c4808a8f923cd1a54cc);
               break;
            case 7:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("券劲勷刧劌副剆剎勏剸劮劀劆刑剂剜劉剻勗勡","劧利刕勡剁劵刲動勖勍劐勼勴勴劊删") + this._f0c16c4808a8f923cd1a54cc);
               break;
            default:
               Debug.assert(false);
         }
         if(_loc1_ != null)
         {
            this._3a88be3d4b35cc888ab57503.tooltip = _loc1_;
         }
      }
      
      public function toString() : String
      {
         return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剫劢勈刏功剰刕勤刺券劧剺劆勑","办剗刊劺刄劻劰劻刈勦刽剀势勣勰剖") + this._f0c16c4808a8f923cd1a54cc;
      }
   }
}

