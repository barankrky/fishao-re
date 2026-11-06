package com.ax3.fishao.managers
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.core._43e386d644f99926bc77847f;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.events._d5eb1450a3d5966d0528acfe;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.model.character.CharLevelConfig;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.model._7b223416c1a294d60a664647;
   import com.ax3.utils._0ce7a4d99e17666ff0e19ce6;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import protocol.sr.CharViewUpdResp;
   
   public class _ef509e5324268e1cbc4eb8c2 extends EventDispatcher
   {
      
      private var _fff4a120538db3d80aa8a7db:_7b223416c1a294d60a664647;
      
      private var _a8577afaa22639c2a16f08cb:Dictionary = new Dictionary();
      
      private var _1c57d9d7ec0272d5ffe001a9:Dictionary = new Dictionary();
      
      private var _255282e2725d36aafe4ae6e0:Dictionary = new Dictionary();
      
      private var _f41a3d29274c8235f534c36c:Vector.<_0ce7a4d99e17666ff0e19ce6>;
      
      public function _ef509e5324268e1cbc4eb8c2()
      {
         super();
      }
      
      public function init(param1:_7b223416c1a294d60a664647) : void
      {
         this._fff4a120538db3d80aa8a7db = param1;
         this._fff4a120538db3d80aa8a7db._93c85485e20e2accb736dfc6(CharViewUpdResp,this._30d3c1e6d3ba811b90f9de98);
      }
      
      private function _30d3c1e6d3ba811b90f9de98(param1:CharViewUpdResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:_67f8febc099eaa05c48aa41e = null;
         var _loc5_:_810c4ade948afb64e9c7ee25 = null;
         var _loc6_:Boolean = false;
         for(_loc2_ in param1.views)
         {
            _loc3_ = JSON.parse(param1.views[_loc2_]);
            _loc4_ = GameSwf.currentLocationDialog;
            if(_loc4_ != null && _loc4_.locationModel != null)
            {
               _loc5_ = _loc4_.locationModel._9aa9d817a9effb1ee3c32474(_loc2_);
               _loc6_ = false;
               if(_loc5_ != null)
               {
                  _loc6_ = _loc5_.isModerator;
               }
               _loc3_ = CharViewConfig.reviewCharForModeratorSuit(CharViewConfig.fromObject(_loc3_),_loc6_);
               _loc3_.isModerator = _loc6_;
            }
            this._b0a25e9efd7796d7a05601f1(_loc2_,CharViewConfig.fromObject(_loc3_));
            if(_loc2_ == app.user.username)
            {
               _43e386d644f99926bc77847f(app).char = CharViewConfig.fromObject(_loc3_);
            }
         }
      }
      
      private function _b0a25e9efd7796d7a05601f1(param1:String, param2:CharViewConfig) : void
      {
         var _loc3_:Array = null;
         var _loc4_:_0ce7a4d99e17666ff0e19ce6 = null;
         this._a8577afaa22639c2a16f08cb[param1] = param2;
         this._ff057ab2b2f13b5d30ffafd4(param2,param1);
         if(param1 in this._255282e2725d36aafe4ae6e0)
         {
            _loc3_ = this._255282e2725d36aafe4ae6e0[param1] as Array;
            for each(_loc4_ in _loc3_)
            {
               _loc4_.call(this);
            }
            this._255282e2725d36aafe4ae6e0[param1] = null;
            delete this._255282e2725d36aafe4ae6e0[param1];
         }
      }
      
      private function _ff057ab2b2f13b5d30ffafd4(param1:Object, param2:String) : void
      {
         var _loc3_:int = 0x6B755028 ^ 0x618AC72C ^ 0x0221766C ^ -1272678796;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x29308671 ^ -83075156 ^ -798300577 ^ -1095980900))
            {
               case 0:
                  CharViewConfig(this._a8577afaa22639c2a16f08cb[param2]).fromObject(param1);
                  _loc3_ = 0x193DE252 ^ 0x5268A151 ^ -91465549 ^ 0x0D238CAD;
                  break;
               case 1:
                  this._a8577afaa22639c2a16f08cb[param2] = CharViewConfig.fromObject(param1);
                  _loc3_ = 0x4AED25EE ^ -223095505 ^ 0x4286AD72 ^ 0x4622CAAE;
                  break;
               case 2:
                  if(this._a8577afaa22639c2a16f08cb[param2] == null)
                  {
                     _loc3_ = -1388378115 ^ -1257918773 ^ 0x06F77CCE ^ -1573436697;
                  }
                  else
                  {
                     _loc3_ = 0x4B1506D6 ^ -1879531306 ^ 0x1CE5497B ^ 0x64F27865;
                  }
                  break;
               case 3:
                  dispatchEvent(new _d5eb1450a3d5966d0528acfe(_d5eb1450a3d5966d0528acfe.UPDATE_CHAR_VIEW,param2));
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _05535d20267aedb1955c0fde(param1:String, param2:String) : Boolean
      {
         return false;
      }
      
      public function _e217a6b8420965af3346bfa2(param1:Vector.<String>) : void
      {
         this._fff4a120538db3d80aa8a7db.charExtension._e217a6b8420965af3346bfa2(param1);
      }
      
      public function _87e1e0ccde8111cbbc2c65af(param1:String, param2:Function, ... rest) : void
      {
         var _loc4_:_0ce7a4d99e17666ff0e19ce6 = null;
         var _loc5_:CharViewConfig = this._a8577afaa22639c2a16f08cb[param1];
         if(_loc5_ != null)
         {
            rest.push(_loc5_);
            param2.apply(this,rest);
         }
         else
         {
            _loc4_ = new _0ce7a4d99e17666ff0e19ce6(param2);
            _loc4_.args = rest;
            this._3ac3d06f98bed136bd075d13(param1,_loc4_);
         }
      }
      
      public function _b6dc96c0d7622099f91843de(param1:Bitmap, param2:String) : void
      {
         var _loc3_:BitmapData = null;
         var _loc4_:CharViewConfig = this._a8577afaa22639c2a16f08cb[param2];
         if(_loc4_ == null)
         {
            this._3ac3d06f98bed136bd075d13(param2,new _0ce7a4d99e17666ff0e19ce6(this._b6dc96c0d7622099f91843de,param1,param2));
            GameSwf.charsManager._e217a6b8420965af3346bfa2(new <String>[param2]);
         }
         else
         {
            _loc3_ = this._c666e1a05bfbf612b67b8b96(_loc4_);
            if(_loc3_ == null)
            {
               if(this._f41a3d29274c8235f534c36c == null)
               {
                  this._f41a3d29274c8235f534c36c = new Vector.<_0ce7a4d99e17666ff0e19ce6>();
               }
               this._f41a3d29274c8235f534c36c.push(new _0ce7a4d99e17666ff0e19ce6(this._b6dc96c0d7622099f91843de,param1,param2));
            }
            else
            {
               param1.bitmapData = _loc3_;
            }
         }
      }
      
      private function _3ac78e42ead17dd615dab525(param1:Event) : void
      {
         var _loc2_:_0ce7a4d99e17666ff0e19ce6 = null;
         if(this._f41a3d29274c8235f534c36c != null)
         {
            for each(_loc2_ in this._f41a3d29274c8235f534c36c)
            {
               _loc2_.call();
            }
            this._f41a3d29274c8235f534c36c.length = 0x25F8F1EF ^ -443693615 ^ 0x4F37960E ^ -1891458512;
         }
      }
      
      private function _3ac3d06f98bed136bd075d13(param1:String, param2:_0ce7a4d99e17666ff0e19ce6) : void
      {
         var _loc3_:int = 0x7B71B933 ^ 0x2AB7FF11 ^ -243490818 ^ -649976429;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1137471808 ^ 0x5760F8B2 ^ 0x046133A7 ^ -1765099112))
            {
               case 0:
                  this._255282e2725d36aafe4ae6e0[param1] = [];
                  _loc3_ = -603741924 ^ -549314098 ^ -274518870 ^ -1793437644;
                  break;
               case 1:
                  (this._255282e2725d36aafe4ae6e0[param1] as Array).push(param2);
                  return;
               case 2:
                  if(this._255282e2725d36aafe4ae6e0[param1] == null)
                  {
                     _loc3_ = -2033969713 ^ -1133036197 ^ -2083365128 ^ -1063679455;
                  }
                  else
                  {
                     _loc3_ = -2093187180 ^ 0x4C40E5FB ^ 0x5885CADD ^ -301880066;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _318207ea15bdbeed0dcf08b4(param1:String, param2:int, param3:String) : void
      {
         var _loc4_:int = 0x04A0BA05 ^ 0x7D19FA9C ^ 0x3270CE37 ^ 0x1D08C5AE;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x038EF21F ^ 0x429ABF49 ^ 0x7549A8EC ^ 0x629CAEBA))
            {
               case 0:
                  if(this._1c57d9d7ec0272d5ffe001a9[param3] == null)
                  {
                     _loc4_ = 0x6D201368 ^ 0x53FD2C70 ^ 0x278C7CD3 ^ 0x4F9008C9;
                  }
                  else
                  {
                     _loc4_ = -640285693 ^ 0x597FF184 ^ -1199948557 ^ 0x6E128275;
                  }
                  break;
               case 1:
                  this._1c57d9d7ec0272d5ffe001a9[param3][param1] = param2;
                  return;
               case 2:
                  this._1c57d9d7ec0272d5ffe001a9[param3] = new CharLevelConfig();
                  _loc4_ = 0x2EEE4BD6 ^ -224865276 ^ 0x46E3304C ^ -866851681;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _83e87e4f25c0be9a14b3a3a4(param1:String) : CharLevelConfig
      {
         return this._1c57d9d7ec0272d5ffe001a9[param1];
      }
      
      public function _f33202ab6195fcbfe355132f(param1:CharViewConfig) : BitmapData
      {
         var _loc2_:int = 0x1759EC56 ^ -1532216696 ^ -1889360906 ^ 0x2AA43CBE;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-689910794 ^ 0x274580F4 ^ 0x525E8806 ^ -1245148528))
            {
               case 0:
                  return GameSwf.instance.animatedCharacter._69fb81a266bc16c4357295d0(param1);
               case 1:
                  return null;
               case 2:
                  if(GameSwf.instance.animatedCharacter.isLoaded)
                  {
                     _loc2_ = 0x31FB134B ^ 0x189C8740 ^ 0x2F1737CE ^ 0x1043EA51;
                  }
                  else
                  {
                     _loc2_ = 0x781C2026 ^ 0x5E70362E ^ 0x0C294860 ^ 0x3C7617FD;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c666e1a05bfbf612b67b8b96(param1:CharViewConfig) : BitmapData
      {
         if(GameSwf.instance.charEditorLoader == null)
         {
            GameSwf.instance._0a7e762f95fa96d14bc425ca(Config.CHARACTER_EDITOR_URL);
            GameSwf.instance.charEditorLoader.addEventListener(Event.COMPLETE,this._3ac78e42ead17dd615dab525);
            return null;
         }
         if(GameSwf.instance.charEditorLoader != null && GameSwf.instance.charEditorLoader.isLoaded)
         {
            return GameSwf.instance.charEditorLoader.getCharacterBitmapDataByViewConfig(param1);
         }
         return null;
      }
      
      public function _60f8573aaf5eee544a00bd4b(param1:String) : CharViewConfig
      {
         return this._a8577afaa22639c2a16f08cb[param1];
      }
   }
}

