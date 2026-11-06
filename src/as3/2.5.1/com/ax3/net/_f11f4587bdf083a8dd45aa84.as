package com.ax3.net
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   
   public class _f11f4587bdf083a8dd45aa84
   {
      
      public static var globalInstanceId:int;
      
      private static var _fbe79d60b82bdf38e5f73f13:int = 0x7E2B721E ^ 0x2512D0F4 ^ -314748196 ^ -1241190346;
      
      public var progressHandler:* = null;
      
      protected var _isProgress:Boolean;
      
      protected var _id:int = 0;
      
      private var _e600da59310ac8c298526592:String;
      
      public var instanceId:int;
      
      public function _f11f4587bdf083a8dd45aa84(param1:String = null)
      {
         super();
         this.instanceId = globalInstanceId++;
         this._id = _fbe79d60b82bdf38e5f73f13++;
         this._e600da59310ac8c298526592 = param1;
      }
      
      public function start() : void
      {
         this._isProgress = true;
      }
      
      public function stop() : void
      {
         this._isProgress = false;
      }
      
      public function _e4907aaeb95acdc5444b0b36() : Boolean
      {
         return this._isProgress == false;
      }
      
      public function _61c48819bae2aefd4ca585fb() : Number
      {
         var _loc1_:int = -650994364 ^ 0x1E3AE28F ^ -657503117 ^ -1825683111;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1033368626 ^ -375222928 ^ 0x1273CACE ^ -1253034347))
            {
               case 0:
                  return -1455053561 ^ -549549134 ^ -214261930 ^ -2059292189;
               case 1:
                  return this.progressHandler();
               case 2:
                  if(this.progressHandler is Function)
                  {
                     _loc1_ = -169183446 ^ 0x52AA2235 ^ -1444877615 ^ -2109094614;
                  }
                  else
                  {
                     _loc1_ = -435146603 ^ -702860790 ^ 0x705FCE86 ^ -859982084;
                  }
                  break;
               case 3:
                  return 0x27F56393 ^ 0x4392657B ^ -1536715704 ^ -1073704288;
               case 4:
                  if(this.progressHandler == null)
                  {
                     _loc1_ = -1238661520 ^ -1604717078 ^ -1338327897 ^ 0x2AA1B5DB;
                  }
                  else
                  {
                     _loc1_ = 0x0A9351BC ^ 0x5A174E2B ^ 0x54375C8A ^ -2007352838;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get viewType() : String
      {
         return this._e600da59310ac8c298526592;
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挡揶掀挹挈揖掻掇掲捶揎掆捛捾挧挻挛推挰掺掇挿挳捨掩插揬掍捇揑捭揅捑捐捏揶揞揚挬捥掾挩挣掘挡揖捿挰","捏揨掵掀揿捵揅掗揧揖捑揊捻挕挔揔") + this._id + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劗剔制劰剫剏劊剨勿剹","利劯劵劔労剄劮刨劎効勤剭剳剝刳刱");
      }
      
      public function destroy() : void
      {
         this.progressHandler = null;
      }
   }
}

