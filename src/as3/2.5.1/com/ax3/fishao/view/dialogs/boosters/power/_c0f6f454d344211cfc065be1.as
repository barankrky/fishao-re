package com.ax3.fishao.view.dialogs.boosters.power
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._01cf9a78594a0bb30b57b0c3;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.boosters.base._862e2792496d13d3dff5b3ca;
   
   public class _c0f6f454d344211cfc065be1 extends _862e2792496d13d3dff5b3ca
   {
      
      private var _d41ab6a9cbb63ab30d28fc1d:Number;
      
      public function _c0f6f454d344211cfc065be1(param1:uint)
      {
         super(_01cf9a78594a0bb30b57b0c3.EBT_POWER_BOOSTER,param1);
         this.init();
      }
      
      public function get powerMultiply() : Number
      {
         return this._d41ab6a9cbb63ab30d28fc1d;
      }
      
      private function init() : void
      {
         var _loc1_:Object = app.resourcesDict.get(id);
         Debug.assertNotEqual(_loc1_,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱揢挛掱揔掦捊掻掌捲挠掰捿捦挕捺掜挼捁捖挏捚挿捅挈挸揹揙捗挋掤挺挣挛捼揗掑挼掙掟据捳揌捭揬捓挥挠授揣挐掿掝掄挿掓挊按掵揉控掦捁捃揫捌挸掃捠捏捹挡揃掣挅揔捁掜揹掆揧捯掦揈捚持挡挑挂捦挴挙掮挎挸挠掘揓掍揝捒挭持挚挞掺揥挷換掄掸揭掼挢探挈捭揠挐掆挳援捇揆挪挸授捯掾掽揊掰揋措挭捷捳掙揥掋排握挦挎捪挍捳捰掣挮揲挥","掷揯掔揑挀掳插挀揨掙捷揪掿掛捬揃"));
         if(!_loc1_.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勝劢勹勺刈刕剈刹刊勌剄剙剒劑勂到剆刚","勤剥勍剽刬刊剗剩勐劜勵刕勮勱别刅")))
         {
            return;
         }
         var _loc2_:Object = JSON.parse(_loc1_.param.toString());
         if(_loc2_.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掕挞掂掾挺挗揀挼捓挪挙捵挀揃损揱揽捒捪捠挥掀据捩挕掭捨挜掠挾捍捛捁揺挍捳","掾揇捹掵探捾挸捷挪掅揯捁揅掸掾掍")))
         {
            this._d41ab6a9cbb63ab30d28fc1d = _loc2_.power_multiply;
         }
      }
   }
}

