package com.ax3.fishao.view.dialogs.club.pages.info.item
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.events.Event;
   
   public class _ebb4ccd6cc47e618f119ff73 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _92ae0874ce09dac3421930c4:Object;
      
      private var _ed8db5d754f8bff4ff10400b:String;
      
      private var _c78cdf5414fc11849ce62372:String;
      
      private var _c8738ee04e808daa52741389:Function;
      
      private var _96e966eb74db59b34cfe5cbc:_3925b8d1e38cc186b13c4a98 = new _3925b8d1e38cc186b13c4a98(this);
      
      public function _ebb4ccd6cc47e618f119ff73(param1:int, param2:Object, param3:String, param4:Function)
      {
         super(this._96e966eb74db59b34cfe5cbc);
         this._96e966eb74db59b34cfe5cbc.canShowProfile = GameSwf.instance.managerClubs._b8d84096df59019d1d24ecdc(param1);
         this._c8738ee04e808daa52741389 = param4;
         this._c78cdf5414fc11849ce62372 = param3;
         this._92ae0874ce09dac3421930c4 = param2;
         this.init();
      }
      
      public function get login() : String
      {
         return this._ed8db5d754f8bff4ff10400b;
      }
      
      public function get isCurrentUser() : Boolean
      {
         return this._ed8db5d754f8bff4ff10400b == app.user.username;
      }
      
      private function get _674e41767b1bcf4b91e26274() : Boolean
      {
         return this._ed8db5d754f8bff4ff10400b == this._c78cdf5414fc11849ce62372;
      }
      
      private function get _4eee66fab45d00b544f24eff() : Boolean
      {
         return this._c78cdf5414fc11849ce62372 == app.user.username;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._96e966eb74db59b34cfe5cbc.buttonDecline:
                  §§push(0x513825F5 ^ -477081812 ^ 0x6C83C0F2 ^ -567563733);
                  break;
               case this._96e966eb74db59b34cfe5cbc.viewHitArea:
                  §§push(-1325751334 ^ 0x32AC5372 ^ 0x0ACE41D5 ^ -2003259012);
                  break;
               default:
                  §§push(-1570792046 ^ -291436652 ^ -1885429422 ^ -1017103530);
            }
            switch(§§pop())
            {
               case 0:
                  this._c8738ee04e808daa52741389(this._ed8db5d754f8bff4ff10400b);
                  break;
               case 1:
                  _fa8d5efc34d8920757369351._90c56d60a54f9a591b9a2af2(this._ed8db5d754f8bff4ff10400b);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._ed8db5d754f8bff4ff10400b = Debug.assertProperty(this._92ae0874ce09dac3421930c4,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("削刘刽劦勋刈刕剩利剖劅刽剈劬勜努勳剶","剨勷券刍刯剆刭刼剤劼勈剰募势剘则"));
         this._96e966eb74db59b34cfe5cbc.level = Debug.assertProperty(this._92ae0874ce09dac3421930c4,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၖၘၚ႘ၙၠ႕჊ဗ၈ჱყႝჍႾါႂႏ","ၹჲშၷဦ၃ညႇჾ၃჌ნჰႺჀႾ"));
         this._96e966eb74db59b34cfe5cbc.name = this._ed8db5d754f8bff4ff10400b;
         this._96e966eb74db59b34cfe5cbc.role = this._674e41767b1bcf4b91e26274 ? _85b2141a2303f6545d411d7a.EST_CLUB_MEMBER_ROLE_LEADER : _85b2141a2303f6545d411d7a.EST_CLUB_MEMBER_ROLE_MEMBER;
         this._96e966eb74db59b34cfe5cbc.isCurrent = this.isCurrentUser;
         this._96e966eb74db59b34cfe5cbc.buttonDecline.visible = this._4eee66fab45d00b544f24eff && !this.isCurrentUser;
      }
   }
}

