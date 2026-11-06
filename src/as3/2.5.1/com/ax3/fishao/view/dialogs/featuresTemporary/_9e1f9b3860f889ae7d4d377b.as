package com.ax3.fishao.view.dialogs.featuresTemporary
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.featuresTemporary.activate.ResponseFeatureTemporaryActivate;
   import protocol.api.featuresTemporary.deactivate.ResponseFeatureTemporaryDeactivate;
   import protocol.api.featuresTemporary.init.ResponseFeaturesTemporaryInit;
   
   public class _9e1f9b3860f889ae7d4d377b extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _c6329654aaeb0d9419076db4:Array;
      
      public function _9e1f9b3860f889ae7d4d377b()
      {
         super();
         this.init();
      }
      
      private function _a261413954107faca269a2fd(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc2_:ResponseFeaturesTemporaryInit = param1 as ResponseFeaturesTemporaryInit;
         this._c6329654aaeb0d9419076db4 = _loc2_.featuresTemporary;
      }
      
      private function _2b419ebf06c0be880d585aff(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseFeatureTemporaryActivate = param1 as ResponseFeatureTemporaryActivate;
         if(_loc2_ == null)
         {
            return;
         }
         if(!this.isFeatureEnabled(_loc2_.type))
         {
            this._c6329654aaeb0d9419076db4.push(_loc2_.type);
         }
         else
         {
            Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႽႵ჆ჺႂგჄ၉ဍ၎ჾკၮჾဘႵ၁႘ၠ၈ဣၓ႕ၾဏႛႱლူრၖမႯၜႳယဤဿႌა။ဩိၓဠၹါာყၳၺႱဉဴრၶ၄ჲဂၠႋၺၢფ႖჻Ⴡၽ႔ღ჻ဃႁၭႎ၍Ⴄ႕ႡთဣႭြႩယစ჆ჁპႴႼႅ႓၈ဝနვ၁၅ႧဎႢხႜၿႺွႃုჇჲო႐ၽဏၵ႟ჩჾဆၶႴႨქႀအႀလ","ბၬშ၌ဉသჄၯဖၵႨ჊ၚჶ႐႕"));
         }
         var _loc3_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(_6b63fd0a4028eb279b227831.ECU_FEATURE_TEMPORARY_WATERFALL_CAVE_UPDATED);
         }
      }
      
      private function _61ade8768be6b58cb41f8a36(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseFeatureTemporaryDeactivate = param1 as ResponseFeatureTemporaryDeactivate;
         if(_loc2_ == null)
         {
            return;
         }
         if(this.isFeatureEnabled(_loc2_.type))
         {
            _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._c6329654aaeb0d9419076db4,_loc2_.type);
         }
         else
         {
            Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刞勾劑勔刕剋勨剗剨勇劋剱力刋勛刺创剗剒勶删劃勍刴剙劓划劔削刷别勽劥勰剗劽刷勬刖劫劵勂劃刃劼勛勜剾剑刂剿劃剕剁削刵劶劕剝劃刋劇剐劊勝剦剤勑劾则剱剜刲刁募劘刘労劲劳刍勥劚剏刾刣剷勍劒劎刻劳勇劊刾剽劭刳勥剽剙刈劕劐刢刢勇勞剫剙劭勤刃删劻刜勠劧","剂刎刿勅剪勬勬制剼劝剥刀剔勈劀刮"));
         }
         var _loc3_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(_6b63fd0a4028eb279b227831.ECU_FEATURE_TEMPORARY_WATERFALL_CAVE_UPDATED);
         }
      }
      
      private function init() : void
      {
         this._c6329654aaeb0d9419076db4 = [];
         _remoteExtension = _dfa25706e58a240c1e33e5c6.fscModel.extensionFeaturesTemporary;
         _4575c3ec15103b43cbf2be04(ResponseFeaturesTemporaryInit,this._a261413954107faca269a2fd);
         _4575c3ec15103b43cbf2be04(ResponseFeatureTemporaryActivate,this._2b419ebf06c0be880d585aff);
         _4575c3ec15103b43cbf2be04(ResponseFeatureTemporaryDeactivate,this._61ade8768be6b58cb41f8a36);
      }
      
      public function isFeatureEnabled(param1:String) : Boolean
      {
         return this._c6329654aaeb0d9419076db4.indexOf(param1) != ConstantsBase.INDEX_NONE;
      }
   }
}

