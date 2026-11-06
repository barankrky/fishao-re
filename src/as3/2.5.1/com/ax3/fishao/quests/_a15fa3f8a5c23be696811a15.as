package com.ax3.fishao.quests
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   
   public class _a15fa3f8a5c23be696811a15 extends _ef35c5b7acd3132a397260e8
   {
      
      private var _b89814bd27a69156a6939274:Boolean;
      
      private var _6213f66f9a92672eedb74049:Boolean;
      
      private var _79076a52f363e2b87c20a91b:Boolean;
      
      public function _a15fa3f8a5c23be696811a15()
      {
         super();
         this.init();
      }
      
      public function get lostValleyOpened() : Boolean
      {
         return this._b89814bd27a69156a6939274;
      }
      
      public function get marshvilleBridgeKeyVisible() : Boolean
      {
         return this._6213f66f9a92672eedb74049;
      }
      
      public function get marshvilleTreeCaveAccessible() : Boolean
      {
         return this._79076a52f363e2b87c20a91b;
      }
      
      private function init() : void
      {
         this._b89814bd27a69156a6939274 = false;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         this._b89814bd27a69156a6939274 = Debug.getPropertyOrDefault(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘刋刍務劣劺刧勏勨劙刾刘刑劮券則劼剽劾刓勖劳勊刕勊剝剘剡劦刓刳劌勈勊勒劒勿勐勆励勄勜剉劁","刹剳剻別劼劏勽勽勒刓剥剪剁剎勣勰"),this._b89814bd27a69156a6939274);
         this._6213f66f9a92672eedb74049 = Debug.getPropertyOrDefault(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၰဣყယဃဿဧ႒ါႂၞႻူဥხႝႲဟჩჄႝၐဝႯႼဇდ჉კဆၑၧზီ႙ဆဏဤူၬყჵჇႬလဗჟၢ჌ၢၮၫၯႚႭၡး႘","ဦၝქჭႸძၛჁီဉအဌჀႁჹუ"),this._6213f66f9a92672eedb74049);
         this._79076a52f363e2b87c20a91b = Debug.getPropertyOrDefault(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剤刳勹刞勢勢劗剋分勎勸勡勪刳剾劮剥劵勢剨剱刻勸勵別劀剑勴刄勺勂刯剬勈勰動剉勿勄劺勺剥劙劘勒劲効剠列勍劼刮刴剏刹劗刴勹勳剛募劚劘勽勺則募剱剶刈","利刦刐勗刯利勜到剒剼劯劓刞刟劝剌"),this._79076a52f363e2b87c20a91b);
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.updateWithType(_6b63fd0a4028eb279b227831.ECU_QUESTS_GAME_END_INFO_UPDATED);
         }
      }
   }
}

