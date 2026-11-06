package com.ax3.fishao.display.panels.inventory.fishingLine
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.panels.inventory.base._092d0248d6b52a109cc65f09;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _8bce41992390d5a4c2649c06 extends _092d0248d6b52a109cc65f09
   {
      
      private var _c11947d1ff1933637e656a06:Number;
      
      private var _d1dab8f7b0ec5ece8208e014:uint;
      
      public function _8bce41992390d5a4c2649c06()
      {
         super();
      }
      
      public function set lineLength(param1:Number) : void
      {
         this._c11947d1ff1933637e656a06 = param1;
      }
      
      public function set lineLevel(param1:uint) : void
      {
         this._d1dab8f7b0ec5ece8208e014 = param1;
      }
      
      override public function set tooltipText(param1:String) : void
      {
         Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("删勅券分劦勃勦勇劳劑势勠刣剤劑剼劄勺劣劎勎劽務勩剨剜勲劝刂刾剤勡剹剮勊切勡勗刷刭剬勏刾划勪劚副刻劬劽刐剨剥则刍剴勊勞勸勈剦剭勘劮剦勹勠刂刏前剮剐刺劊勞劭剋刣刅刪則勨刏励勞剘刯刢剅剁","勀券劽刺劝势劰剼刖劽勘劽劦劎劒勋"));
      }
      
      override public function getTooltipConfig() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_UI_BUTTON_FISHING_LINE_TOOLTIP);
         _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_LEVEL,this._d1dab8f7b0ec5ece8208e014);
         _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_LENGTH,_c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(this._c11947d1ff1933637e656a06));
         return {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၍။ၥၡႆဌမႍჸႊု။ဩဍႇဘ","ၱჟႄႅဴၾၻဎႭႝယၒႄၡၖ၃")):_loc2_};
      }
   }
}

