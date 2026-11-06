package com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   import flash.display.DisplayObjectContainer;
   
   public class _ee846cd4312a03d079da825c extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _fa9c2594e49cdca2641d5efe:_73899a4de8f83c8d2c26f545;
      
      private var _98309dca6ae1d9c624c91797:_1c73633a6a4f4f6050258c2a;
      
      public function _ee846cd4312a03d079da825c(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set emblemID(param1:int) : void
      {
         this._98309dca6ae1d9c624c91797.emblemID = param1;
      }
      
      public function set name(param1:String) : void
      {
         this._fa9c2594e49cdca2641d5efe.text = param1;
      }
      
      public function get viewEmblem() : _1c73633a6a4f4f6050258c2a
      {
         return this._98309dca6ae1d9c624c91797;
      }
      
      private function init() : void
      {
         this._98309dca6ae1d9c624c91797 = new _1c73633a6a4f4f6050258c2a(controller,Debug.assertProperty(this.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("力刍劣労劵刱刍刞勿刔勦刖勰勰劍劚勏刁则刲勇剈剣勾劧到劜勶","刂刻勓劘勓刲劚勿勥劮劐勷勮劾勨剮")));
         this._98309dca6ae1d9c624c91797._fc17178734ae7cc816dbcc2f(true);
         this._fa9c2594e49cdca2641d5efe = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘဪ်ှႥმჾ႘ရႹჇ္်ၸცႥၧၢဈხ႓ဇჩၫႣო","တႆၿႣიၤၡႶႥမဇ၄ტჲဦႨ"),null);
      }
   }
}

