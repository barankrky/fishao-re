package com.ax3.fishao.view.dialogs.furniture_factory.model
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.furniture_factory._b8b7399f082b4b17c0abed6d;
   import com.ax3.fishao.view.dialogs.furniture_factory._c77d525b20bc5f754c3cac44;
   import com.ax3.fishao.view.dialogs.furniture_factory.controllers._e9b567863951cb4c59b55d84;
   
   public class _f76461b7f0dd15fea1326a0d extends _b8b7399f082b4b17c0abed6d
   {
      
      private var _fb5c53578597727a19346c54:_e9b567863951cb4c59b55d84;
      
      private var _cf8390b148d60970b1a845f8:_c77d525b20bc5f754c3cac44;
      
      public function _f76461b7f0dd15fea1326a0d()
      {
         super();
         this._cf8390b148d60970b1a845f8 = GameSwf.instance.managerFurnitureFactory;
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_FURNITURE_FACTORY;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._fb5c53578597727a19346c54 = new _e9b567863951cb4c59b55d84(_asset);
      }
      
      override public function update(param1:String) : void
      {
         if(this._fb5c53578597727a19346c54 == null)
         {
            return;
         }
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_REWARD_GOT:
               §§push(0x791EB48B ^ -600695651 ^ -1937370062 ^ 0x29AABC24);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_UPDATE:
               §§push(-351017902 ^ -2101688156 ^ 0x731E9442 ^ 0x1AB7B8B5);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_REWARD_ANIMATION_COMPLETE:
               §§push(-211324026 ^ -1661027885 ^ -1915443227 ^ -498242126);
               break;
            default:
               §§push(-1920303770 ^ 0x42745D5F ^ -1813641604 ^ 0x5C182646);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
               this._fb5c53578597727a19346c54.update(param1);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဨჂႸႍႪၺ၅ჹၢჴႃჽှფးႹႌႻၼဂ္၄჊ၡჃဵႣ၏ეဇႻၙႯအ჉ႃჃႭဦ႕ၐც႙ၟၿဨာႿ႟ဘၚრჱသ၂႕ႆრ჋၂ၑ႖Ⴐၺ႟ၩႁၷၼღႛၼႰှႅიဥခ၁ႁႱხၒမၼႹႼႾၴ჌ჿჺႽ၏ჾსၳႧჿႵၸၳဪဝၑဘဆჳၾ၈ႍၛႡႥၵ၍လ႔ပႼနုၒ၀ჸဠၦ႘္ႏ","჎ႼၗကအႴ၈Ⴢ႟ჇေႃႄွლႱ") + param1);
         }
      }
   }
}

