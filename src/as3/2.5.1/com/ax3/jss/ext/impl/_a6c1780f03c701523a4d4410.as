package com.ax3.jss.ext.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetDataReq;
   import protocol.cr.OpenFishboxReq;
   import protocol.cr.UpdateReq;
   
   public class _a6c1780f03c701523a4d4410 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      private var _44d5934f8fa9a735f3eeffb3:UpdateReq;
      
      public function _a6c1780f03c701523a4d4410()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function update(param1:String, param2:String, param3:Function = null) : int
      {
         this._44d5934f8fa9a735f3eeffb3 = new UpdateReq();
         this._44d5934f8fa9a735f3eeffb3.data[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劊刳刵剡別劑勇剽剆劯劻劶剎剨割劥勵剛刴删刢剌劋刀","剄劝勑剻劗剿剩剩勐勤刍剉力剗勺動")] = param1;
         this._44d5934f8fa9a735f3eeffb3.sid = param2;
         this._1a2ab8f87a05cb09935ac01f(param3);
         return this._44d5934f8fa9a735f3eeffb3.reqId;
      }
      
      public function _f07c714c9cfebd37ad0170a7(param1:int) : int
      {
         this._44d5934f8fa9a735f3eeffb3 = new UpdateReq();
         this._44d5934f8fa9a735f3eeffb3.data[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掠捀捤揯挎揶挂捲捏挌捄捕捁掏揜挳揬挥掷据捨揠","捂挫掏挌掐挹掓掽捣捅推挄揔捎掸掓")] = param1;
         this._1a2ab8f87a05cb09935ac01f();
         return this._44d5934f8fa9a735f3eeffb3.reqId;
      }
      
      public function _9f15b41d96685367a04746f1(param1:int) : int
      {
         this._44d5934f8fa9a735f3eeffb3 = new UpdateReq();
         this._44d5934f8fa9a735f3eeffb3.data[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掇捿掎捶措掛捹捻捭挠挫掀揯揇捤捊掎握捵探","掉挂捓挺掽揽捀捤掳捅捿掻採掬掝掏")] = param1;
         this._1a2ab8f87a05cb09935ac01f();
         return this._44d5934f8fa9a735f3eeffb3.reqId;
      }
      
      public function _ec8a71671a27b5027c43ee9d(param1:Function = null) : void
      {
         var _loc2_:OpenFishboxReq = new OpenFishboxReq();
         _connection.send(_loc2_,param1);
      }
      
      public function _8d3d7abec439e9601739cbff(param1:Function) : void
      {
         var _loc2_:GetDataReq = new GetDataReq();
         _loc2_.data = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႙Ⴓ჻პႨၘ၉ჟနပხၲဗႛ჆ႎ၏ဢံၖვရြზေ၏၀ဣွးვႴၸဏ႞၈","ထၴႫၵႺ႑ယსွႛ႔ဗႼტჩჺ")):0x573CDB39 ^ 0x3AE61627 ^ 0x2013F46B ^ 0x4DC93974};
         _connection.send(_loc2_,param1);
      }
      
      private function _1a2ab8f87a05cb09935ac01f(param1:Function = null) : void
      {
         if(Boolean(this._44d5934f8fa9a735f3eeffb3) && _connection._42e6ec115b7a961390cb6808())
         {
            _connection.send(this._44d5934f8fa9a735f3eeffb3,param1);
         }
      }
   }
}

