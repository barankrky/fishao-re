package com.ax3.fishao.view.dialogs.trade.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.trade._e13efade267c7c1c5acd01c7;
   import com.ax3.fishao.view.dialogs.trade.controllers._0dca8494024bbddbadc7002a;
   import flash.events.MouseEvent;
   
   public class _4351b8ab79e2546483fbcaab extends _e13efade267c7c1c5acd01c7
   {
      
      private var _df49b67ef74c04574a6590e5:_0dca8494024bbddbadc7002a;
      
      public function _4351b8ab79e2546483fbcaab()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_TRADE;
      }
      
      public function get controllerTradeDialog() : _0dca8494024bbddbadc7002a
      {
         return this._df49b67ef74c04574a6590e5;
      }
      
      override protected function _ba7fe333230ac51496d90cb8(param1:MouseEvent) : void
      {
         Debug.assertNotEqual(this._df49b67ef74c04574a6590e5,null,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၠႊნၝှႵၽႲ႐ႈဂႸဖႱဌთငဩၡၵჹჺ်ၬဥၚၹၬဂႢ႐ႜဂႠ႖ႉၖၷყဂဓნႅჸႅ჆ၲ။Ⴃဍ၃၅ဢဇ၉ၰုჿ၅Ⴎႚၚკႚလႆ჌ဈყხူၛၲၔၟპဈၲခლၡჅႡၹၘႯჭထ၄ქ჎ႀრၹშဠဓၸნႺါီჿဋႱႽၹႠႛႲႄჂၻႧၙ႑Ⴗ႕ဤၙသჴკဏ჊၊ႉည႟ၲၱၢ჏჈ဦხ჏ဗၨ჊၆ီ၊჋ჴၜၩწ჆Ⴤ၎ჇၵၿႠფး႑ဎဏ჌ၯဓჼჳႹუကၒ၁ႫႩ","ဢჍ၇ဋႱႣვ჋ၥ჎ဿჾဉ်ဓჺ"));
         GameSwf.instance.managerTrade._6fcbb05a6ecde8caa829b927();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._df49b67ef74c04574a6590e5 = new _0dca8494024bbddbadc7002a(_asset);
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_TRADE_OFFER_CHANGED_OWNER:
               §§push(-81217412 ^ 0x635D5264 ^ -1637585362 ^ 0x06118436);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TRADE_OFFER_CHANGED_TARGET:
               §§push(-1302759110 ^ 0x11FE69C3 ^ 0x39E594EB ^ -1706916845);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TRADE_STATUS_CHANGED:
               §§push(-821952966 ^ 0x2D2DC0C5 ^ -1928440878 ^ 0x6F226D2F);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TRADE_CANCELED:
               §§push(-1256865190 ^ -2125865094 ^ 0x480C03EA ^ 0x7C501EC9);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TRADE_REVIEW:
               §§push(-38428900 ^ -431923839 ^ -1100940776 ^ -1517012863);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TRADE_FINISHED:
               §§push(0x23C2C527 ^ -1387758391 ^ 0x4654D0D5 ^ -924948162);
               break;
            default:
               §§push(0x0224A822 ^ 0x1427889A ^ 0x019B46FC ^ 0x17986642);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
               if(this._df49b67ef74c04574a6590e5 != null)
               {
                  this._df49b67ef74c04574a6590e5.update(param1);
               }
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("动剄勖刅劙劚勅勱剢切刼勢創勳効勼勓刉勢刧剜剄刅劁刏剂創劰刪剏削勘勌刽劋劸劒劷勽助勹剥剕剼剷劅勴勭剗功刍勐劒劕劂劏刧剟勩刵劲劉剤削劢刴劻动勭剽勺劮勆剦刋勅割剗剿割劋剄剷劍剻勏劐剋勮劓劙勍刵勏初剣劋剎剧刢则劗刞别列勜務勣剬剈勸剰勿劢務剗勐刹勜刜刐勞","则勋勪券劲劘切剞劷勩势刼分募剃剣") + param1);
         }
      }
   }
}

