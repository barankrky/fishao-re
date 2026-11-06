package com.ax3.fishao.tutorial
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.tutorial.helpers._e444b603a0e799e84b427ae5;
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   
   public class _9b5482b3978b7abe1547abb8
   {
      
      private var _9f14472100584b17a4f4652d:String;
      
      private var _e78099ba5a3f686e5b27230a:int;
      
      protected var _stepsTotal:int;
      
      private var _db4dc08d1e97f9526c243c02:Boolean;
      
      protected var _stepsForResume:Array;
      
      protected var _needLockGui:Boolean;
      
      protected var _stepsHandlersMap:Dictionary;
      
      protected var _canInteractWithPlayersChars:Boolean;
      
      protected var _canInteractWithNpcsChars:Boolean;
      
      protected var _canInteractWithOwnChar:Boolean;
      
      private var _ed6c4525ef63c52c0a989abb:Array;
      
      protected var _gameSwf:GameSwf;
      
      public function _9b5482b3978b7abe1547abb8()
      {
         super();
         this._ed6c4525ef63c52c0a989abb = [];
         this._gameSwf = GameSwf.instance;
         this._5ef0e233a5bb752efe3b3ded();
         this._5c347edb17bc0b5110bf441b();
      }
      
      protected static function _91ecc890ba82e7acb012d6f4(param1:Point, param2:int = 90) : void
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = null;
         var _loc4_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.locationModel._9aa9d817a9effb1ee3c32474(app.user.username);
            if(_loc3_ != null && _loc3_.fieldChar != null)
            {
               _loc3_.fieldChar.setPosition(param1.x,param1.y);
               _loc3_.position.rotation = param2;
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this._e78099ba5a3f686e5b27230a > this._stepsTotal;
      }
      
      public function get type() : String
      {
         return this._9f14472100584b17a4f4652d;
      }
      
      public function get canFishing() : Boolean
      {
         return false;
      }
      
      public function get needHideGui() : Boolean
      {
         return false;
      }
      
      public function get canChatWithPlayers() : Boolean
      {
         return false;
      }
      
      public function get isInProgress() : Boolean
      {
         return this._db4dc08d1e97f9526c243c02;
      }
      
      public function get needLockGui() : Boolean
      {
         return this._needLockGui;
      }
      
      protected function get tutorialHelpers() : _0c6054b5aa20a9fd2b92f9c1
      {
         return this._gameSwf.managerTutorial.tutorialHelpers;
      }
      
      protected function get gui() : _8a5b0c698d40931e860c0aeb
      {
         return GameSwf.currentLocationDialog.gui;
      }
      
      protected function get stepCurrent() : int
      {
         return this._e78099ba5a3f686e5b27230a;
      }
      
      protected function set stepCurrent(param1:int) : void
      {
         this._e78099ba5a3f686e5b27230a = param1;
      }
      
      public function _83b8cd2c4cd21dac01865d35() : void
      {
         this._0e1bc13a989d12a3776df86c();
      }
      
      public function _0a2b10da3db58cd84d16235e() : void
      {
      }
      
      public function _a48e6016b46dab72868aebd1() : void
      {
      }
      
      public function _2664fc44433abf9626ce63fa() : void
      {
      }
      
      public function _544c59d9de718a31490847d4() : void
      {
      }
      
      public function _0e1bc13a989d12a3776df86c() : void
      {
         this._370785518626690eacca466a();
         try
         {
            this._7483d29a53131e54a480bab8();
         }
         catch(e:Error)
         {
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掋持捹掙挹捃捖捂捣揽掐捚掤捏掕捞挻捯掶挝採挡挋捚捬援挽捽掮挓揦捕揊捕挒捻挹採损挈揕挋捚掛捊掶措揋揆揀掩掹揽揹揪揵揝揥掄挻捬捵掮揸捒掅挕捍掜挩掷掛揋掝掍措揁捐掓捖损挅掙挅揂揶掷掠掀掠挤揳挣掖挖捩掀挖振掦挫握揑掺掏捭掑掵措揨掸掮捴揝挰捕挣掮","挦挞挶揜挷揎捊捔捀掺捿捬挒挷挤掩"));
            Cc.error(e,e);
            Cc.error(e.getStackTrace());
            setTimeout(_0e1bc13a989d12a3776df86c,0x5CF4024F ^ -588063033 ^ -1403732628 ^ 0x2C52611E);
            return;
         }
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捕揌授挴掁掝探挢掄捓揑捡挣挤捒挒揁掾挽捠捾挰採挭揂挓揩挦掁控挈揝揎挹捫揳揚揪挌捦掘掌揖揍","揚揢掌掸揙捘掅掑挥掓掩揳揽掷揸捀") + this._e78099ba5a3f686e5b27230a);
         ++this.stepCurrent;
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揥挜捖援排揲揭捵挭挋掂揪換捵捛捘挅揩捕揦推挖掤捧掀捷挙揤掔挾揋挋挧掺措捊挃接捥提","揬捶掱掫挲挲捃授控揿掲揳揱挓揹掀") + this._e78099ba5a3f686e5b27230a);
         this.saveStep(this._e78099ba5a3f686e5b27230a);
         if(this.isComplete)
         {
            this._b723bc06d3f1e5904f08fae8();
         }
      }
      
      protected function _b723bc06d3f1e5904f08fae8() : void
      {
         var _loc1_:int = 0x26BA7B28 ^ -976520146 ^ 0x5F0D8BC5 ^ -2138507713;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2117870864 ^ -889070194 ^ 0x5449262E ^ 0x227F5BAD))
            {
               case 0:
                  GameSwf.currentLocationDialog._b723bc06d3f1e5904f08fae8();
                  _loc1_ = 0x3E9E9FC2 ^ -1330000195 ^ 0x4355E3FC ^ -242825092;
                  break;
               case 1:
                  this._db4dc08d1e97f9526c243c02 = false;
                  this._fc0d9245d4a11f93887bfd05();
                  this._a80a338aa90c9e57364d0090();
                  if(GameSwf.currentLocationDialog != null)
                  {
                     _loc1_ = 0x7F5AB9AE ^ -1836771318 ^ -477885230 ^ 0x32AFD78B;
                  }
                  else
                  {
                     _loc1_ = 0x1651D3FC ^ -2134401904 ^ 0x7826B6D0 ^ -767261885;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _5ef0e233a5bb752efe3b3ded() : void
      {
         this._stepsHandlersMap = new Dictionary(true);
      }
      
      protected function _5c347edb17bc0b5110bf441b() : void
      {
         this._stepsForResume = [];
      }
      
      public function start() : void
      {
         var _loc1_:int = 0x4008D294 ^ -225234224 ^ -1967383388 ^ -469742724;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x77108628 ^ 0x6A7DA19F ^ 0x3301FFB9 ^ -229937262))
            {
               case 0:
                  this._db4dc08d1e97f9526c243c02 = true;
                  if(GameSwf.currentLocationDialog != null)
                  {
                     _loc1_ = -1966016336 ^ 0x755A51AD ^ -2064090136 ^ -1487575704;
                  }
                  else
                  {
                     _loc1_ = -729100896 ^ 0x5CADFB1E ^ 0x5ED86BCA ^ 0x0AD8EAEA;
                  }
                  break;
               case 1:
                  GameSwf.currentLocationDialog._4c7c73154f90937ccf427164();
                  _loc1_ = 0x6FD01578 ^ 0x343239ED ^ 0x3E43E456 ^ -1182367907;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _f71a55993e5581ea015bde16(param1:int) : void
      {
         this.stepCurrent = param1 - 1;
         this._7483d29a53131e54a480bab8();
      }
      
      protected function _6bf6e74dbd194542dc723dc7() : void
      {
         --this.stepCurrent;
         this._0e1bc13a989d12a3776df86c();
      }
      
      private function _e77e151f178d1bda98f7cf35() : void
      {
         var _loc1_:int = 0x1B4BE6DB ^ 0x7F6E6004 ^ -1943859106 ^ -402221439;
         var _loc2_:int = 0x0CBFD7CA ^ -239239354 ^ 0x760A2F25 ^ -1962375255;
         if(this.isComplete || this._e78099ba5a3f686e5b27230a == (0x3AB4FC6A ^ 0x7775B64E ^ 0x1C2D6E61 ^ 0x51EC2444) || this._stepsForResume.indexOf(this._e78099ba5a3f686e5b27230a) != (0x38EE45D7 ^ 0x22341E94 ^ -699809084 ^ 0x336C6678))
         {
            return;
         }
         if(this._stepsForResume.length > (0x6DAA1578 ^ -1226723414 ^ 0x433110D0 ^ -1736791550))
         {
            _loc1_ = -1857571006 ^ 0x2467421A ^ 0x20727DB5 ^ 0x6AAD7712;
            for each(_loc2_ in this._stepsForResume)
            {
               if(_loc2_ > this._e78099ba5a3f686e5b27230a)
               {
                  _loc1_ = _loc1_ == (0x49C75B82 ^ 0x519CF365 ^ -725821437 ^ 0x33188F1B) ? 0x36EF42AE ^ 0x16B04F0F ^ -1089520970 ^ -1622132970 : _loc1_;
                  break;
               }
               _loc1_ = _loc2_;
            }
            this.stepCurrent = _loc1_;
         }
         else
         {
            this.stepCurrent = -132020010 ^ -1910556678 ^ 0x64683983 ^ 0x125686AE;
         }
      }
      
      protected function _fc0d9245d4a11f93887bfd05() : void
      {
         this._needLockGui = false;
         this.tutorialHelpers._fc0d9245d4a11f93887bfd05();
      }
      
      protected function _dbb8408a6fc0feead9d91cb2() : void
      {
         this._needLockGui = true;
         this.tutorialHelpers._dbb8408a6fc0feead9d91cb2();
      }
      
      protected function saveStep(param1:int) : void
      {
         _dfa25706e58a240c1e33e5c6.fscModel.extensionTutorial.saveStep(this._9f14472100584b17a4f4652d,param1);
      }
      
      protected function _7483d29a53131e54a480bab8() : void
      {
         var _loc1_:Function = this._stepsHandlersMap[this.stepCurrent];
         if(_loc1_ != null)
         {
            _loc1_();
         }
      }
      
      protected function _370785518626690eacca466a() : void
      {
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         _loc1_.helperMask._95b9b777a6d00d1a4a825220();
         _loc1_.helperArrow._e2dc7bfe294f5d88c4d9aa9d();
         _loc1_.helperPopup.hidePopup();
      }
      
      protected function _520ba4dbc5360c791fc5a2f0() : _e444b603a0e799e84b427ae5
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = this.tutorialHelpers.helperPopup;
         _loc1_._81aa5d8d1d01452f84568fed();
         _loc1_.showPopup();
         _loc1_._2533a4be141ff5419474243f();
         return _loc1_;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._9f14472100584b17a4f4652d = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捚揾捸按捅换挲揢揦揼揉捭捳挽掹掿","按掻揝掝揁控挷换探换揈捖挣据捋捄"));
         this.stepCurrent = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捔揤挠捾揘揿捳掣揓挨挃挴挲挘捋掖捑揈指挀挘捍挌挝掙掔捚挗援掣揼換","揆掚挦捱挃挔挭掾授揓掼掶挜挈揅措"));
         this._stepsTotal = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႏဴႼႥმႠჼ၀Ⴥ႓ႽဵჼြჄၪ္ၸၻသဂၹჽပ႓ჰါဟჩႊ","ၨႦღဳဨဨၠႨჄႚးჵႺჶႡင"));
         this._e77e151f178d1bda98f7cf35();
      }
      
      protected function _6c2525764742a5a52654d218() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = null;
         if(GameSwf.currentLocationDialog == null)
         {
            return;
         }
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         var _loc3_:Vector.<_810c4ade948afb64e9c7ee25> = _loc2_.locationModel._a71dddef56aa5c9ec7fa4a93();
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc1_ == null || _loc1_.fieldChar == null || _loc1_.fieldChar.graphic == null))
            {
               if(this._ed6c4525ef63c52c0a989abb.indexOf(_loc1_.username.toLowerCase()) != (-1591951435 ^ 0x350FCA5C ^ 0x1E18C19F ^ 0x75F44B89))
               {
                  _d3d70238b67f17bb35699a2c._ebea62b8ec3e654b81ce8b79(_loc1_.fieldChar.graphic,true);
               }
               else if(_loc1_.fieldChar is _ba120ae720a391732e866217)
               {
                  _d3d70238b67f17bb35699a2c._ebea62b8ec3e654b81ce8b79(_loc1_.fieldChar.graphic,this._canInteractWithNpcsChars);
               }
               else if(_loc1_.fieldChar is _c9513c48978d5034cc9ff2f4)
               {
                  _d3d70238b67f17bb35699a2c._ebea62b8ec3e654b81ce8b79(_loc1_.fieldChar.graphic,this._canInteractWithOwnChar);
               }
               else
               {
                  _d3d70238b67f17bb35699a2c._ebea62b8ec3e654b81ce8b79(_loc1_.fieldChar.graphic,this._canInteractWithPlayersChars);
               }
            }
         }
      }
      
      public function _3a7d84cb0f6340bd38d53429(param1:_08c120b706560fce9302bcab) : Boolean
      {
         var _loc2_:Boolean = false;
         _loc2_ = this._ed6c4525ef63c52c0a989abb.indexOf(param1.locationUser.username.toLowerCase()) != (0x3320AFB1 ^ 0x2C184D3D ^ -890826051 ^ 0x2A200FCE);
         if(!_loc2_)
         {
            if(param1 is _ba120ae720a391732e866217)
            {
               _loc2_ = this._canInteractWithNpcsChars;
            }
            else if(param1 is _c9513c48978d5034cc9ff2f4)
            {
               _loc2_ = this._canInteractWithOwnChar;
            }
            else
            {
               _loc2_ = this._canInteractWithPlayersChars;
            }
         }
         return _loc2_;
      }
      
      protected function _f6b2ddd70f70e8087133ec21(param1:String) : void
      {
         this._ed6c4525ef63c52c0a989abb.push(param1.toLowerCase());
         this._6c2525764742a5a52654d218();
      }
      
      protected function _8114af7db6760192c12f249c() : void
      {
         this._ed6c4525ef63c52c0a989abb = [];
         this._6c2525764742a5a52654d218();
      }
      
      protected function _a80a338aa90c9e57364d0090() : void
      {
         this._canInteractWithNpcsChars = true;
         this._canInteractWithOwnChar = true;
         this._canInteractWithPlayersChars = true;
         this._6c2525764742a5a52654d218();
      }
   }
}

