package com.ax3.fishao.tutorial
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.tutorial.common.base._c1dd3094cb2ba333147208b3;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.utils.Dictionary;
   import protocol.api.tutorial.init.ResponseTutorialInit;
   
   public class _283b592e1b144e604db439f2 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private static var _502fc66e3542313f41466785:Array = [_3810c68698c1b61dede7885f.ETT_COMMON_A_GUEST,_3810c68698c1b61dede7885f.ETT_COMMON_A_REGISTERED,_3810c68698c1b61dede7885f.ETT_COMMON_B_GUEST,_3810c68698c1b61dede7885f.ETT_COMMON_B_REGISTERED];
      
      private var _18bdaac37ca5397e7e5df861:Dictionary;
      
      private var _91761a6a94c67bb999958edb:_c1dd3094cb2ba333147208b3;
      
      private var _8ea01b61a548d562b29ba73b:_0c6054b5aa20a9fd2b92f9c1;
      
      public function _283b592e1b144e604db439f2()
      {
         super();
         this._18bdaac37ca5397e7e5df861 = new Dictionary();
         _remoteExtension = _dfa25706e58a240c1e33e5c6.fscModel.extensionTutorial;
         this._8ea01b61a548d562b29ba73b = new _0c6054b5aa20a9fd2b92f9c1();
      }
      
      public function get tutorialHelpers() : _0c6054b5aa20a9fd2b92f9c1
      {
         return this._8ea01b61a548d562b29ba73b;
      }
      
      public function get isTutorialCommonComplete() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._91761a6a94c67bb999958edb != null)
         {
            _loc1_ = this._91761a6a94c67bb999958edb.isComplete;
         }
         return _loc1_;
      }
      
      public function get isAnyTutorialInProgress() : Boolean
      {
         return this.tutorialInProgress != null;
      }
      
      public function get tutorialInProgress() : _9b5482b3978b7abe1547abb8
      {
         var _loc1_:String = null;
         var _loc2_:_9b5482b3978b7abe1547abb8 = null;
         var _loc3_:_9b5482b3978b7abe1547abb8 = null;
         for(_loc1_ in this._18bdaac37ca5397e7e5df861)
         {
            _loc2_ = this._18bdaac37ca5397e7e5df861[_loc1_];
            if(_loc2_.isInProgress)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function get tutorialCommon() : _c1dd3094cb2ba333147208b3
      {
         return this._91761a6a94c67bb999958edb;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:_9b5482b3978b7abe1547abb8 = null;
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc5_:ResponseTutorialInit = param1 as ResponseTutorialInit;
         this._18bdaac37ca5397e7e5df861 = new Dictionary();
         for each(_loc2_ in _loc5_.tutorialsData)
         {
            _loc4_ = _77011be62632c568a672d581._ea2a7d4bf3314f5a963d8519(_loc2_);
            this._18bdaac37ca5397e7e5df861[_loc4_.type] = _loc4_;
         }
         for each(_loc3_ in _502fc66e3542313f41466785)
         {
            this._91761a6a94c67bb999958edb = this._18bdaac37ca5397e7e5df861[_loc3_];
            if(this._91761a6a94c67bb999958edb != null)
            {
               break;
            }
         }
      }
      
      public function _0a2b10da3db58cd84d16235e() : void
      {
         var _loc1_:String = null;
         var _loc2_:_9b5482b3978b7abe1547abb8 = null;
         for(_loc1_ in this._18bdaac37ca5397e7e5df861)
         {
            _loc2_ = this._18bdaac37ca5397e7e5df861[_loc1_];
            if(!_loc2_.isComplete && _loc2_.isInProgress)
            {
               _loc2_._0a2b10da3db58cd84d16235e();
            }
         }
      }
      
      public function _a48e6016b46dab72868aebd1() : void
      {
         var _loc1_:String = null;
         var _loc2_:_9b5482b3978b7abe1547abb8 = null;
         for(_loc1_ in this._18bdaac37ca5397e7e5df861)
         {
            _loc2_ = this._18bdaac37ca5397e7e5df861[_loc1_];
            if(!_loc2_.isComplete && _loc2_.isInProgress)
            {
               _loc2_._a48e6016b46dab72868aebd1();
            }
         }
      }
      
      public function _2664fc44433abf9626ce63fa() : void
      {
         var _loc1_:String = null;
         var _loc2_:_9b5482b3978b7abe1547abb8 = null;
         GameSwf._4aa6549411cfe718aaf2d272(this._f961c91580b05d75f4007c7d);
         for(_loc1_ in this._18bdaac37ca5397e7e5df861)
         {
            _loc2_ = this._18bdaac37ca5397e7e5df861[_loc1_];
            if(!_loc2_.isComplete && _loc2_.isInProgress)
            {
               GameSwf._4aa6549411cfe718aaf2d272(_loc2_._2664fc44433abf9626ce63fa);
            }
         }
      }
      
      private function _f961c91580b05d75f4007c7d() : void
      {
         GameSwf.currentLocationDialog.needUpdateTutorialHelper = this.isAnyTutorialInProgress;
      }
      
      public function _67bcf66f1f44b32e336d33f1(param1:String) : _9b5482b3978b7abe1547abb8
      {
         return this._18bdaac37ca5397e7e5df861[param1];
      }
      
      public function _86a74eb7e4a5c697cea6f526(param1:String) : void
      {
         var _loc2_:_9b5482b3978b7abe1547abb8 = this._67bcf66f1f44b32e336d33f1(param1);
         if(_loc2_ != null)
         {
            this._e7651aa37ed2abbf075b0be3(_loc2_);
         }
      }
      
      public function _a8aa662a62a5d3db6b825dfe() : void
      {
         this._e7651aa37ed2abbf075b0be3(this._91761a6a94c67bb999958edb);
      }
      
      private function _e7651aa37ed2abbf075b0be3(param1:_9b5482b3978b7abe1547abb8) : void
      {
         if(this.isAnyTutorialInProgress)
         {
            return;
         }
         if(param1 != null && !param1.isComplete)
         {
            param1.start();
         }
      }
   }
}

