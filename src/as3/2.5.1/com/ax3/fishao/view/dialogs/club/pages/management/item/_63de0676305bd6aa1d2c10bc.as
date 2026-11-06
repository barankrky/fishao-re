package com.ax3.fishao.view.dialogs.club.pages.management.item
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_leader._8668a7db2982d03ba081cc48;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_leader._f77b2a17cfe22f586a49c638;
   import flash.events.Event;
   
   public class _63de0676305bd6aa1d2c10bc extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _1576e149fcfe7aa209be4ed9:_f77b2a17cfe22f586a49c638;
      
      private var _368a80a96771dbba7c692b0b:_8668a7db2982d03ba081cc48;
      
      private var _5d44ef9506995d31b3a13fc1:Function;
      
      private var _6b778639739fb93ddaba3ac3:_2fa2703e7ed1a4442a2b40f0 = new _2fa2703e7ed1a4442a2b40f0(this);
      
      private var _95cdd3958cc1d21ae5a53013:Object;
      
      private var _7c9d879d55d3dbd4254ff5c3:String;
      
      public function _63de0676305bd6aa1d2c10bc(param1:Object, param2:Function)
      {
         super(this._6b778639739fb93ddaba3ac3);
         this._95cdd3958cc1d21ae5a53013 = param1;
         this._5d44ef9506995d31b3a13fc1 = param2;
         this.init();
      }
      
      public function get login() : String
      {
         return this._7c9d879d55d3dbd4254ff5c3;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._6b778639739fb93ddaba3ac3.viewHitArea:
                  §§push(0x1F159E6B ^ -1068155530 ^ 0x299AF7E5 ^ -153463560);
                  break;
               case this._6b778639739fb93ddaba3ac3.buttonAccept:
                  §§push(0x2B5086BF ^ -1320578884 ^ 0x7AE3811A ^ -520448232);
                  break;
               case this._6b778639739fb93ddaba3ac3.buttonDecline:
                  §§push(-1646450360 ^ 0x02B4CCC6 ^ 0x64B3BE12 ^ -69575778);
                  break;
               default:
                  §§push(-991624410 ^ 0x28CD0063 ^ -775439918 ^ 0x3DEFBA94);
            }
            switch(§§pop())
            {
               case 0:
                  _fa8d5efc34d8920757369351._90c56d60a54f9a591b9a2af2(this._7c9d879d55d3dbd4254ff5c3);
                  break;
               case 1:
                  this._368a80a96771dbba7c692b0b._5b0b922e5cc4a5322f6ea1d2(this._5d44ef9506995d31b3a13fc1);
                  break;
               case 2:
                  this._1576e149fcfe7aa209be4ed9._5b0b922e5cc4a5322f6ea1d2(this._5d44ef9506995d31b3a13fc1);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._7c9d879d55d3dbd4254ff5c3 = Debug.assertProperty(this._95cdd3958cc1d21ae5a53013,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劬勭劮励劑刜剿划勶剢勃剦勬剕劵勌劑刭","刢制勊勢办勣劶刃刜剏劘刴剻刿剙刜"));
         this._6b778639739fb93ddaba3ac3.level = Debug.assertProperty(this._95cdd3958cc1d21ae5a53013,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႚဖၿჭႁჶწထြუဓၦၟဥလჟწႼ","တငၭႉၖစဍ႖ၸႦ္Ⴡၟဲအჱ"));
         this._6b778639739fb93ddaba3ac3.name = this._7c9d879d55d3dbd4254ff5c3;
         this._368a80a96771dbba7c692b0b = new _8668a7db2982d03ba081cc48();
         this._368a80a96771dbba7c692b0b.login = this._7c9d879d55d3dbd4254ff5c3;
         this._1576e149fcfe7aa209be4ed9 = new _f77b2a17cfe22f586a49c638();
         this._1576e149fcfe7aa209be4ed9.login = this._7c9d879d55d3dbd4254ff5c3;
      }
   }
}

