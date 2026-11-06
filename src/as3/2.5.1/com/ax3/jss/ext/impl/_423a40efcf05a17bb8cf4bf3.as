package com.ax3.jss.ext.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.events._3e650ca1e5793c619e88eb0b;
   import com.ax3.jss.events._d2f221bbcfd428bfdc43d954;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import com.ax3.jss.model.states._cd789badd5efc353d515a554;
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.log.globalLogger;
   import flash.events.IEventDispatcher;
   import protocol.api.worlds.change.RequestWorldChange;
   import protocol.cr.EnterWorld;
   import protocol.cr.LoginReq;
   import protocol.cr.RegisterReq;
   import protocol.sr.EnterWorldErrorResp;
   import protocol.sr.ErrorResp;
   import protocol.sr.LoginErrorResp;
   import protocol.sr.LoginSuccessResp;
   import protocol.sr.UpdateResp;
   
   public class _423a40efcf05a17bb8cf4bf3 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      private var _a1114984036b5250b52b7e69:_ccb739c00378004f39879793;
      
      private var _a922f0e84f2121b31eb99699:Boolean = true;
      
      private var _13959c89e21f2220691dbc47:Function = null;
      
      private var _c885c392c3c678b336424c33:String;
      
      private var _7bb3783627cd9d490d38a02b:Function;
      
      private var _dc32afd6af115194f654b852:String;
      
      public function _423a40efcf05a17bb8cf4bf3()
      {
         super();
      }
      
      public function get isConnectedToTheSameHost() : Boolean
      {
         return _connection.url == this._c885c392c3c678b336424c33;
      }
      
      public function _09cbe07aae628dd0e3172fc2() : void
      {
         this._a1114984036b5250b52b7e69 = null;
         _fscModel._8406c5a65eec7ac3766ac2b8();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
         _fscModel._d10c0f03d4614bf89ae6ef7f(_cd789badd5efc353d515a554.SOCKET_CONNECTED,this._daf6dd450697b93a79456bb1);
         _fscModel._d10c0f03d4614bf89ae6ef7f(_cd789badd5efc353d515a554.LOGIN_SUCCESS,this._9eaeced12865fafe5b0bdf78);
      }
      
      public function _f3a7dcd4e26108f63eb42d81(param1:String, param2:String, param3:Date, param4:String, param5:Boolean, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Boolean = false, param12:Function = null, param13:String = null) : void
      {
         var _loc14_:RegisterReq = new RegisterReq(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param13);
         if(_connection._42e6ec115b7a961390cb6808())
         {
            _connection.send(_loc14_,param12);
            this._13959c89e21f2220691dbc47 = null;
         }
      }
      
      public function login(param1:String, param2:String, param3:String = null, param4:Function = null) : void
      {
         this._a1114984036b5250b52b7e69 = new LoginReq(param1,param2,param3);
         this._e179e6d342ac664b10d59d27(param4);
      }
      
      private function _e179e6d342ac664b10d59d27(param1:Function) : void
      {
         this._13959c89e21f2220691dbc47 = param1;
         if(this._a1114984036b5250b52b7e69 is LoginReq && _connection._42e6ec115b7a961390cb6808() && (_fscModel.state == _cd789badd5efc353d515a554.SOCKET_CONNECTED || _fscModel.state == _cd789badd5efc353d515a554.LOGIN_ERROR || _fscModel.state == _cd789badd5efc353d515a554.REGISTRATION_CHECKING || _fscModel.state == _cd789badd5efc353d515a554.REGISTRATION_ERROR))
         {
            _fscModel.state = _cd789badd5efc353d515a554.LOGIN_CHECKING;
            _connection.send(this._a1114984036b5250b52b7e69,this._13959c89e21f2220691dbc47);
            this._13959c89e21f2220691dbc47 = null;
         }
         else if(this._a1114984036b5250b52b7e69 is EnterWorld && _connection._42e6ec115b7a961390cb6808() && _fscModel.state == _cd789badd5efc353d515a554.SOCKET_CONNECTED)
         {
            _fscModel.state = _cd789badd5efc353d515a554.LOGIN_CHECKING;
            _connection.send(this._a1114984036b5250b52b7e69,this._13959c89e21f2220691dbc47);
            this._13959c89e21f2220691dbc47 = null;
         }
      }
      
      public function _52f0054af78784d519fe5f84(param1:String, param2:String, param3:String, param4:Function = null) : void
      {
         var _loc5_:RequestWorldChange = null;
         this._c885c392c3c678b336424c33 = param3;
         this._dc32afd6af115194f654b852 = param1;
         if(this.isConnectedToTheSameHost && Boolean(_connection.callbackManager))
         {
            globalLogger.logch(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴉၹဩၬ၈ႳსႸိ၈ႇႁჅဘိო။ცრ჉Ⴂ႔","သ႔ႦქံဟဲၕჍငၿ႞ჵფၗ၉"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刱劯剭勉勶劲剦刁刹劲剸勉刐刀勜勴勉勦勺刀刅剞剎刪劀剄刨剓剳剝勜刉勍刺励刷劕动刲刟劭剧动劄删剏剨劦剷劌勚勁勷刞","劬刡刣创剆剼劘劼劵刓剮劄剰劐劚剔"));
            this._a1114984036b5250b52b7e69 = new EnterWorld(param1,_connection.url,param2);
            _connection.send(this._a1114984036b5250b52b7e69,param4);
            this._13959c89e21f2220691dbc47 = null;
         }
         else
         {
            this._7bb3783627cd9d490d38a02b = param4;
            this._a1114984036b5250b52b7e69 = new EnterWorld(param1,_connection.url,param2);
            _loc5_ = new RequestWorldChange();
            _connection.send(_loc5_,this._a65a9610c60bdce882f70613);
         }
      }
      
      private function _a65a9610c60bdce882f70613(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = 0x4850D8E0 ^ -459709257 ^ 0x43E648B4 ^ -3416900;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x278AA6BE ^ 0x069DDF33 ^ -1369716494 ^ -1616340704))
            {
               case 0:
                  if(param1 is ErrorResp)
                  {
                     _loc2_ = -1678181169 ^ 0x3803D74C ^ 0x2E2BB071 ^ -1657490513;
                  }
                  else
                  {
                     _loc2_ = 0x3BFC66F2 ^ 0x314DA7CC ^ -1341319949 ^ -1437008493;
                  }
                  break;
               case 1:
                  globalLogger.logch(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掱捐握捷揃採捰揉揆控掹捇揀揉挗掴挟捇掸揈捓捽","揌损揍捴捕掦揾挗掗捭捬挡挸掮揈掾"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႔ჂဦၯဒႍႾမၷჵၕ჈ၹၼ။ဆါპႱႆ႑ჱႪၝ၇Ⴤဍဂႃბထ၇ေდလ႔႟჋ၱპტထွჾაၛဋါုၿႸျწၲ჋၂ტႛ","ဂဳ၊თၒါၰႊჄၛာყဧၻႤၡ") + _connection.url + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("აၧ့ဪီႶჄႫႋႭႏါမဲဉဈ","ၟდၐჩႡၤႸဘႹყႉိუ჎ႌႷ") + this._c885c392c3c678b336424c33);
                  _fscModel._a419cce3ba1ca75ddf343ab2(this._c885c392c3c678b336424c33);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _75eeb26a875cfc4206f9256b(param1:_d2f221bbcfd428bfdc43d954) : void
      {
         var event:_d2f221bbcfd428bfdc43d954 = param1;
         var rezponse:UpdateResp = null;
         if(event.data is LoginSuccessResp)
         {
            if(_fscModel.state == _cd789badd5efc353d515a554.LOGIN_CHECKING || _fscModel.state == _cd789badd5efc353d515a554.REGISTRATION_CHECKING)
            {
               _dispatcher.removeEventListener(_d2f221bbcfd428bfdc43d954.RECEIVE_DATA,this._75eeb26a875cfc4206f9256b);
               _dispatcher.dispatchEvent(new _3e650ca1e5793c619e88eb0b(_3e650ca1e5793c619e88eb0b.UPDATE_SESSION,false,false,String((event.data as LoginSuccessResp).sid)));
               _fscModel.state = _cd789badd5efc353d515a554.LOGIN_SUCCESS;
            }
         }
         else if(event.data is UpdateResp && this._a1114984036b5250b52b7e69 is EnterWorld)
         {
            try
            {
               rezponse = event.data as UpdateResp;
               if(!rezponse.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("募刡助劍勎力切削別剱剔劲勉剞勱刟刷刬勘劦剙剬劊勿刚劼刬劳勬剫","刅劄劍剕勯劐勥剤勁勲劺剤剗勾剨勴")) && !rezponse.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剜刬勆劅剷刄刑則募劘勦劀力勼勤刦刁劚勁勎刯勺勿勋初创刉剃刱剤劬刳刴劄勎劲勆刾剳勎","剈刅劧勯剾利勍刚務勒劢劀刺刱剓劎")))
               {
                  _fscModel.state = _cd789badd5efc353d515a554.LOGIN_SUCCESS;
                  if(this._7bb3783627cd9d490d38a02b != null && this._a1114984036b5250b52b7e69 != null && event.data is _5e1bab759fcaea6d1f84faa7 && (event.data as _5e1bab759fcaea6d1f84faa7).reqId == this._a1114984036b5250b52b7e69.reqId)
                  {
                     this._7bb3783627cd9d490d38a02b(event.data);
                  }
                  this._a1114984036b5250b52b7e69 = null;
                  this._7bb3783627cd9d490d38a02b = null;
               }
            }
            catch(e:Error)
            {
               globalLogger.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔勦劯剅刭剃刖剡劀劥前剽劼刄刔删勆勹勷劥刺劀剑勛剅勩刂刟勽剻剷勽勞剭勅劄刮刡剳刀劬刊勎剽勷刬刞努剥勩劏労刑刚劣刨劗剑劙办剘券刴剔勚刮初剜利勈剚剾劽劕刌勊剓動刽勼勃勓劾勱","别剪勆募勇剂勫勁劌剈刯劐剭副勔剦"),e);
               throw e;
            }
         }
         else if(event.data is LoginErrorResp)
         {
            if(_fscModel.state == _cd789badd5efc353d515a554.LOGIN_CHECKING)
            {
               _fscModel.state = _cd789badd5efc353d515a554.LOGIN_ERROR;
            }
            if(_fscModel.state == _cd789badd5efc353d515a554.REGISTRATION_ERROR)
            {
               _dispatcher.removeEventListener(_d2f221bbcfd428bfdc43d954.RECEIVE_DATA,this._75eeb26a875cfc4206f9256b);
               _fscModel.state = _cd789badd5efc353d515a554.REGISTRATION_ERROR;
            }
         }
         else if(event.data is EnterWorldErrorResp)
         {
            _fscModel.state = _cd789badd5efc353d515a554.LOGIN_SUCCESS;
            if(this._7bb3783627cd9d490d38a02b != null)
            {
               this._7bb3783627cd9d490d38a02b(event.data);
            }
            this._7bb3783627cd9d490d38a02b = null;
         }
      }
      
      private function _daf6dd450697b93a79456bb1() : void
      {
         _dispatcher.addEventListener(_d2f221bbcfd428bfdc43d954.RECEIVE_DATA,this._75eeb26a875cfc4206f9256b);
         this._e179e6d342ac664b10d59d27(this._13959c89e21f2220691dbc47);
      }
      
      private function _9eaeced12865fafe5b0bdf78() : void
      {
         this._a922f0e84f2121b31eb99699 = false;
         _fscModel.state = _cd789badd5efc353d515a554.CONNECTED;
      }
      
      public function _8c08c789507e1a9a48cf7c50() : Boolean
      {
         return this._a922f0e84f2121b31eb99699;
      }
      
      public function _e526dab8f6e56165cb2f3f13() : Boolean
      {
         return this._a1114984036b5250b52b7e69 is EnterWorld || this._a1114984036b5250b52b7e69 is LoginReq;
      }
      
      public function _d2fee8d8cd6118cdbff00d5a() : Boolean
      {
         return this._a1114984036b5250b52b7e69 != null;
      }
      
      public function get url() : String
      {
         return _connection.url;
      }
      
      public function get worldName() : String
      {
         return this._dc32afd6af115194f654b852;
      }
   }
}

