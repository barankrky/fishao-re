package com.ax3.fishao.display.boosters
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._3295d30c2cf527988ca84291;
   import com.ax3.utils.TimeConverter;
   import flash.display.MovieClip;
   
   public class _305fa3f8dbbefcf8a5b9c778 extends _3295d30c2cf527988ca84291
   {
      
      private var _cc3044aa0e193502cf8f1ca3:gButtonBooster = new gButtonBooster();
      
      private var _81b15680ef141387697304f9:MovieClip;
      
      private var _908ed274702b6a67e62c6dcb:String;
      
      public function _305fa3f8dbbefcf8a5b9c778(param1:_988093efdfa36e13bfd6c6cf, param2:int)
      {
         super(param1,this._cc3044aa0e193502cf8f1ca3);
         this.init(param2);
      }
      
      public function get state() : String
      {
         return this._908ed274702b6a67e62c6dcb;
      }
      
      public function set state(param1:String) : void
      {
         var _loc2_:int = -137414086 ^ -850381958 ^ 0x554CA160 ^ -383706629;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1880645141 ^ -2067930341 ^ 0x48610603 ^ -976620247))
            {
               case 0:
                  return;
               case 1:
                  if(this._908ed274702b6a67e62c6dcb == param1)
                  {
                     _loc2_ = 0x7F88A344 ^ -170534525 ^ 0x6892E0BA ^ 0x643D2BA7;
                  }
                  else
                  {
                     _loc2_ = -464024644 ^ -863893543 ^ -1045021971 ^ 0x6F910750;
                  }
                  break;
               case 2:
                  this._908ed274702b6a67e62c6dcb = param1;
                  this._81b15680ef141387697304f9.gotoAndStop(param1);
                  this._cc3044aa0e193502cf8f1ca3.viewTimer.visible = this._908ed274702b6a67e62c6dcb != _824ca56c5e86a3bb217364f0.EBBS_DISABLE;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set timeLeft(param1:uint) : void
      {
         var _loc2_:int = -1757276326 ^ 0x4D2C13F5 ^ -926902214 ^ 0x6CB838F4;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x21A452B3 ^ -1244929510 ^ 0x7EC22BDB ^ -1799667949))
            {
               case 0:
                  if(this._908ed274702b6a67e62c6dcb == _824ca56c5e86a3bb217364f0.EBBS_DISABLE)
                  {
                     _loc2_ = -1788353075 ^ 0x4B1FA0F7 ^ 0x77979658 ^ -671516927;
                  }
                  else
                  {
                     _loc2_ = -1979379033 ^ 0x28B161AA ^ 0x0F835E61 ^ -752776948;
                  }
                  break;
               case 1:
                  this._cc3044aa0e193502cf8f1ca3.viewTimer.label.text = TimeConverter.convertToMMSS(param1);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init(param1:int) : void
      {
         _09d32aad035d4c6f4097c78b();
         this.tooltipText = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႦဋၓႠႧၐၢႇႣ္ဲလႾဃၥႎღცၿၾ჆჏ၼ႖႗ၿ႓იၝ႘ႿႲဒြထးიႋဓဂ႘ჸဘႨ်ၔန၇ူჅိၗဨႊყသ","ჱၪფႎုႧထღჲჩ႖ၳဝႃჂქ") + param1.toString());
         this._f6880eced86fefdcf754225c();
         switch(param1)
         {
            case _67282af25befe9778e5c8dd1.LUCK_POTION.id:
               §§push(-1373533999 ^ -1915579757 ^ 0x0D17C7D3 ^ 0x2EE4DD91);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR.id:
               §§push(-986300532 ^ 0x0DC61A3D ^ 0x3FD8DB2C ^ -148308324);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH.id:
               §§push(0x0DD36CA1 ^ 0x742E1D5B ^ 0x4452DEE7 ^ 0x3DAFAF1F);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER.id:
               §§push(0x62B8682C ^ 0x20A167D0 ^ -523970351 ^ -1562519762);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION.id:
               §§push(0x1F401759 ^ 0x51E63E57 ^ -1012496460 ^ -1929335106);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER.id:
               §§push(0x228E5440 ^ 0x3B5C9732 ^ 0x322B073C ^ 0x2BF9C44B);
               break;
            default:
               §§push(0x1C01696A ^ -1351895303 ^ -1866370652 ^ 0x23ABAE31);
         }
         switch(§§pop())
         {
            case 0:
               this._81b15680ef141387697304f9 = this._cc3044aa0e193502cf8f1ca3.viewBoosterLuckPotion;
               break;
            case 1:
               this._81b15680ef141387697304f9 = this._cc3044aa0e193502cf8f1ca3.viewBoosterRadar;
               break;
            case 2:
               this._81b15680ef141387697304f9 = this._cc3044aa0e193502cf8f1ca3.viewBoosterMagicWatch;
               break;
            case 3:
               this._81b15680ef141387697304f9 = this._cc3044aa0e193502cf8f1ca3.viewBoosterExp;
               break;
            case 4:
               this._81b15680ef141387697304f9 = this._cc3044aa0e193502cf8f1ca3.viewBoosterShiny;
               break;
            case 5:
               this._81b15680ef141387697304f9 = this._cc3044aa0e193502cf8f1ca3.viewBoosterPower;
               break;
            default:
               Debug.assert(false);
         }
         this._81b15680ef141387697304f9.visible = true;
         this.state = _824ca56c5e86a3bb217364f0.EBBS_DISABLE;
      }
      
      private function _f6880eced86fefdcf754225c() : void
      {
         this._cc3044aa0e193502cf8f1ca3.viewBoosterExp.visible = false;
         this._cc3044aa0e193502cf8f1ca3.viewBoosterLuckPotion.visible = false;
         this._cc3044aa0e193502cf8f1ca3.viewBoosterMagicWatch.visible = false;
         this._cc3044aa0e193502cf8f1ca3.viewBoosterRadar.visible = false;
         this._cc3044aa0e193502cf8f1ca3.viewBoosterShiny.visible = false;
         this._cc3044aa0e193502cf8f1ca3.viewBoosterPower.visible = false;
      }
      
      override protected function _3f9bafe0e6f5429d56eb11c1() : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
      }
   }
}

