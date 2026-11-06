package com.ax3.fishao.view.dialogs.fishingLine.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.fishingLine.model._72a97cef3acbd28d8d164ec8;
   import flash.display.MovieClip;
   
   public class _e941142f5b5aee8b174d134f extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _3606a9e9586bb59c77dc7bf2:MovieClip;
      
      public function _e941142f5b5aee8b174d134f(param1:_988093efdfa36e13bfd6c6cf, param2:MovieClip)
      {
         this._3606a9e9586bb59c77dc7bf2 = param2;
         super(param1,this._3606a9e9586bb59c77dc7bf2);
      }
      
      public function set color(param1:String) : void
      {
         var _loc2_:uint = uint(0x3827D9E8 ^ 0x7B01DCD2 ^ 0x33A81B61 ^ 0x708E1E5B);
         switch(app.user.fishingLineColor)
         {
            case _72a97cef3acbd28d8d164ec8.EFLC_WHITE:
               §§push(0x6BA78722 ^ -688062648 ^ -255165275 ^ 0x4D9104CF);
               break;
            case _72a97cef3acbd28d8d164ec8.EFLC_BLUE_LIGHT:
               §§push(-2128329112 ^ 0x5B81EB54 ^ 0x15F7EDC9 ^ -816693004);
               break;
            case _72a97cef3acbd28d8d164ec8.EFLC_GREEN_LIGHT:
               §§push(0x4E94C7BC ^ 0x15394215 ^ 0x2B15C3AA ^ 0x70B84601);
               break;
            case _72a97cef3acbd28d8d164ec8.EFLC_SILVER:
               §§push(-1357787216 ^ -446454856 ^ -1479248404 ^ -307881497);
               break;
            case _72a97cef3acbd28d8d164ec8.EFLC_GOLD:
               §§push(0x5C3823CC ^ -822571932 ^ -1890188119 ^ 0x1D96AB05);
               break;
            default:
               §§push(0x53B5F022 ^ -1190873515 ^ -15847314 ^ 0x15BF761C);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = uint(0x3987CA87 ^ 0x0B2F514A ^ -1106083590 ^ -1933960394);
               break;
            case 1:
               _loc2_ = uint(-495174141 ^ 0x13A8B974 ^ -1730106645 ^ 0x69342D9E);
               break;
            case 2:
               _loc2_ = uint(0x3790248F ^ -551617478 ^ 0x0175893E ^ -369405560);
               break;
            case 3:
               _loc2_ = uint(0x6049A1EF ^ 0x29D1F9FB ^ -713575322 ^ -1661997962);
               break;
            case 4:
               _loc2_ = uint(-61270515 ^ 0x506FE374 ^ 0x0A9DA397 ^ -1498720533);
               break;
            default:
               Debug.assert(false);
         }
         this._3606a9e9586bb59c77dc7bf2.gotoAndStop(_loc2_);
      }
   }
}

