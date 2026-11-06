package com.ax3.fishao.tutorial.views.dialogs.inventory
{
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.model.info._3aaebb69caa0055ca844b9f3;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.view.dialogs._a2b4c9c0c53649d11f95d839;
   import com.ax3.fishao.view.dialogs.inventory._80f73e651fd0958d82b3179f;
   import com.ax3.fishao.view.wrappers.impl._0724ad266e88779612fd9d57;
   import com.ax3.fishao.view.wrappers.impl._50af875145704e666daf2c30;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _0239b4a1f957bf9e5ccfd482 extends _a2b4c9c0c53649d11f95d839
   {
      
      private var _1eb26b6c18f1db15090156dc:Boolean;
      
      private var _81d2d37608a96219556374f8:_67282af25befe9778e5c8dd1;
      
      private var _48f84ebc21d7d6c363ab60c5:int;
      
      private var _0a040d77de90a0e6864274ad:Boolean;
      
      private var _a4cefcbfc9bc3a6acbf11edc:Boolean;
      
      private var _4d289c664d6e368ffd3ceb94:Boolean;
      
      private var _8a1909406b8d46d603ad49fd:String;
      
      private var _6a834aa2189bc571aa542c18:_0c6054b5aa20a9fd2b92f9c1;
      
      public function _0239b4a1f957bf9e5ccfd482()
      {
         super();
         this._6a834aa2189bc571aa542c18 = GameSwf.instance.managerTutorial.tutorialHelpers;
         _canClosedByEsc = false;
      }
      
      override protected function _7db81dc1db6043644bc5941d(param1:MouseEvent) : void
      {
         if(this._0a040d77de90a0e6864274ad || this._a4cefcbfc9bc3a6acbf11edc || this._4d289c664d6e368ffd3ceb94)
         {
            return;
         }
         super._7db81dc1db6043644bc5941d(param1);
         if(this._1eb26b6c18f1db15090156dc)
         {
            this._1eb26b6c18f1db15090156dc = false;
            this._4958134c334a200d551fc510();
         }
      }
      
      override protected function _eb71e0d0cdc7dc3723502ca9(param1:MouseEvent) : void
      {
         if(this._1eb26b6c18f1db15090156dc || this._a4cefcbfc9bc3a6acbf11edc || this._4d289c664d6e368ffd3ceb94)
         {
            return;
         }
         super._eb71e0d0cdc7dc3723502ca9(param1);
         if(this._0a040d77de90a0e6864274ad)
         {
            this._0a040d77de90a0e6864274ad = false;
            this._4958134c334a200d551fc510();
         }
      }
      
      override protected function _f9416f452a0fd95ceef06581(param1:* = null) : void
      {
         var _loc2_:_c24229eda44b942058106fae = GameSwf.currentLocationDialog as _c24229eda44b942058106fae;
         if(_loc2_ == null || this._1eb26b6c18f1db15090156dc || this._a4cefcbfc9bc3a6acbf11edc || this._4d289c664d6e368ffd3ceb94)
         {
            return;
         }
         super._f9416f452a0fd95ceef06581(param1);
         if(this._0a040d77de90a0e6864274ad)
         {
            this._0a040d77de90a0e6864274ad = false;
            this._4958134c334a200d551fc510();
         }
      }
      
      override protected function _5f781f38595d2d0238c462fe(param1:MouseEvent) : void
      {
         if(this._1eb26b6c18f1db15090156dc || this._0a040d77de90a0e6864274ad || this._4d289c664d6e368ffd3ceb94)
         {
            return;
         }
         var _loc2_:_0724ad266e88779612fd9d57 = param1.currentTarget as _0724ad266e88779612fd9d57;
         var _loc3_:_0724ad266e88779612fd9d57 = _tabMap[this._8a1909406b8d46d603ad49fd];
         if(this._a4cefcbfc9bc3a6acbf11edc)
         {
            if(_loc3_ == _loc2_)
            {
               super._5f781f38595d2d0238c462fe(param1);
               this._a4cefcbfc9bc3a6acbf11edc = false;
               this._4958134c334a200d551fc510();
            }
         }
         else
         {
            super._5f781f38595d2d0238c462fe(param1);
         }
      }
      
      override protected function _ba7fe333230ac51496d90cb8(param1:MouseEvent) : void
      {
         if(this._1eb26b6c18f1db15090156dc || this._0a040d77de90a0e6864274ad || this._a4cefcbfc9bc3a6acbf11edc)
         {
            return;
         }
         if(this._4d289c664d6e368ffd3ceb94)
         {
            super._ba7fe333230ac51496d90cb8(param1);
            this._4d289c664d6e368ffd3ceb94 = false;
            this._4958134c334a200d551fc510();
         }
         else
         {
            super._ba7fe333230ac51496d90cb8(param1);
         }
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._4958134c334a200d551fc510();
      }
      
      override protected function _bd2927b37948ded4b728741e() : _80f73e651fd0958d82b3179f
      {
         var _loc1_:_80f73e651fd0958d82b3179f = super._bd2927b37948ded4b728741e();
         if(_loc1_.kind == _67282af25befe9778e5c8dd1.BAIT.name)
         {
            _loc1_.selectedItemId = _a1e0e2bf54cc08cc6a7d5b7c.ER_BAIT_EMPTY;
         }
         else if(_loc1_.kind == _67282af25befe9778e5c8dd1.ROD.name)
         {
            _loc1_.selectedItemId = _a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_EMPTY;
         }
         return _loc1_;
      }
      
      public function _88d4130cae0046e040f561fd(param1:_67282af25befe9778e5c8dd1, param2:int) : void
      {
         this._81d2d37608a96219556374f8 = param1;
         this._48f84ebc21d7d6c363ab60c5 = param2;
         this._1eb26b6c18f1db15090156dc = true;
         this._0f2186364651add98ee14d93();
      }
      
      private function _0f2186364651add98ee14d93() : void
      {
         var _loc1_:_50af875145704e666daf2c30 = null;
         var _loc2_:_50af875145704e666daf2c30 = null;
         var _loc3_:_3aaebb69caa0055ca844b9f3 = null;
         var _loc4_:Point = null;
         if(!this._1eb26b6c18f1db15090156dc)
         {
            return;
         }
         for each(_loc2_ in _itemsViews)
         {
            _loc3_ = _loc2_.itemData;
            if(_loc3_.resourceType == this._81d2d37608a96219556374f8)
            {
               if(this._81d2d37608a96219556374f8 == _67282af25befe9778e5c8dd1.DECORATION && _loc3_.infoId == this._48f84ebc21d7d6c363ab60c5)
               {
                  _loc1_ = _loc2_;
                  break;
               }
               if(this._81d2d37608a96219556374f8 != _67282af25befe9778e5c8dd1.DECORATION && _loc3_.id == this._48f84ebc21d7d6c363ab60c5)
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
         }
         if(_loc1_ != null)
         {
            this._6a834aa2189bc571aa542c18.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc1_),0x21A9AAF1 ^ -44790204 ^ -511164508 ^ 0x3D751B2D);
            _loc4_ = new Point(_loc1_.width / (-547916989 ^ 0x567D65AB ^ -1384077043 ^ 0x24AABFE7),-_loc1_.height / (-1563940023 ^ -1823917195 ^ 0x3850CE33 ^ 0x09D1DE0D));
            this._6a834aa2189bc571aa542c18.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc1_,_loc4_),0x4DF23D2A ^ -1060883238 ^ -1457686976 ^ 0x242B7FB0);
         }
      }
      
      public function _f07eab3c34375ad19df22f56() : void
      {
         this._6a834aa2189bc571aa542c18.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(this.select),0x52E9FF7C ^ -499256609 ^ -1053365236 ^ 0x71E2E1E9);
         var _loc1_:Point = new Point(this.select.width / (-224116996 ^ -1754553950 ^ -740727376 ^ -1240007956),-311442792 ^ 0x33DBB4E2 ^ 0x1AA9C4B0 ^ 0x3BE24D04);
         this._6a834aa2189bc571aa542c18.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(this.select,_loc1_),-1303352422 ^ -1685890874 ^ 0x5AAD2197 ^ 0x737E12CB);
         this._0a040d77de90a0e6864274ad = true;
      }
      
      public function _a47c8f6091b201cbbe1ee668(param1:String) : void
      {
         var _loc2_:_0724ad266e88779612fd9d57 = _tabMap[param1];
         if(_loc2_ == null)
         {
            return;
         }
         this._8a1909406b8d46d603ad49fd = param1;
         this._a4cefcbfc9bc3a6acbf11edc = true;
         this._6a834aa2189bc571aa542c18.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_),0x01D1406B ^ -1971262544 ^ -689880657 ^ 0x5DB0EA32);
         var _loc3_:Point = new Point(_loc2_.width / (0x082F7717 ^ 0x53419A0C ^ -738319199 ^ -2003777096),-1257134072 ^ 0x045E5D8A ^ 0x6E4F49E1 ^ 0x20FF43AD);
         this._6a834aa2189bc571aa542c18.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc2_,_loc3_),0x7A6B9DB3 ^ 0x7F77E976 ^ 0x2D821438 ^ 0x289E60FD);
      }
      
      public function _84829e33652a4071373c49a2() : void
      {
         if(closeBtn == null)
         {
            return;
         }
         this._4d289c664d6e368ffd3ceb94 = true;
         var _loc1_:Point = new Point(-this.width / (0x1061897D ^ 0x3180FDAE ^ 0x128EA582 ^ 0x336FD153),-this.height / (0x3FC3626E ^ 0x46CE64F9 ^ 0x685895AD ^ 0x11559338));
         this._6a834aa2189bc571aa542c18.helperMask._ff99ac71fd600b826038309c(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(this,_loc1_),_63a1662bfab25759f09f5245._6ba4124ea66e83ee2d11f6aa(this));
         var _loc2_:Point = new Point(-645711202 ^ 0x1C9707B8 ^ 0x1E5D7A38 ^ 0x24B6B8C6,-724278241 ^ 0x13127886 ^ 0x43523FD9 ^ -2070666480);
         this._6a834aa2189bc571aa542c18.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(closeBtn,_loc2_),-550802590 ^ -1055655803 ^ -1697247913 ^ -2064736687);
      }
      
      private function _4958134c334a200d551fc510() : void
      {
         var _loc1_:_9b5482b3978b7abe1547abb8 = GameSwf.instance.managerTutorial.tutorialInProgress;
         if(_loc1_ != null)
         {
            _loc1_._0e1bc13a989d12a3776df86c();
         }
      }
   }
}

