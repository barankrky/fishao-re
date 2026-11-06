package com.ax3.fishao.view.dialogs.tournaments
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.tournaments.controllers._67dee8f5021896b8a4ac3cb5;
   
   public class _1ed4334e1f420e4a07af8630 extends _08e6a83913c1cf9c0360486a
   {
      
      private var _47953fc5757ab4470116cf1f:_67dee8f5021896b8a4ac3cb5;
      
      public function _1ed4334e1f420e4a07af8630()
      {
         super();
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_TOURNAMENT_SIGNUP;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._47953fc5757ab4470116cf1f = new _67dee8f5021896b8a4ac3cb5(_asset);
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_SIGN_UP:
               §§push(-1300654508 ^ -1093296232 ^ -1914923604 ^ -2123326368);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_ESTABLISH_CURRENT:
               §§push(0x61CB5629 ^ 0x0652E146 ^ 0x49C792DC ^ 0x2E5E25B2);
               break;
            default:
               §§push(0x0277C1FE ^ -79131860 ^ -2118242692 ^ 0x788164AC);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               this._47953fc5757ab4470116cf1f.update(param1);
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劰劑刈劯刏刽勭劏剝務刷剢劁勑劈剏剜刽勏刞劘劵勃利勩勰劜剌刈剼劉勈劐勴勬劲劻刀剗剾剞劍勔剋劑勻判剭勇剙劎剛刍剖动勚刏剗剪剠務劊刄刾劘努剪劂刯刪刭勄刧勖剳劺剆刢勸劭劭劢勻剂効剢删勁勋劉刷劌刳劺剻刅勗勚制刁劆刔剙前勿勞勆刲剶労务刜動務初劮勮刐剮勋創勥刲刬剨劲勂刯助剱别剏刄刵劻剣割剓刑剆刣剨剶剢","勶剅刏勮劘勞判勞劕勴剕勓勢劗刡勿") + param1);
         }
      }
      
      override public function close() : void
      {
         this._47953fc5757ab4470116cf1f._90eac9ca552fe54c2ca0299f();
         super.close();
      }
   }
}

