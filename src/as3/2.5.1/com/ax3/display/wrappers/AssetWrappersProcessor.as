package com.ax3.display.wrappers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.core.App;
   import com.ax3.errors.OverrideMethodError;
   import com.ax3.utils.DisplayObjectUtil;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.utils.*;
   
   public class AssetWrappersProcessor implements IAssetWrappersProcessor
   {
      
      private var _removeList:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      private var _app:App;
      
      private var _swfFileName:String;
      
      public function AssetWrappersProcessor()
      {
         super();
      }
      
      public function configurateFactory(param1:App, param2:String) : void
      {
         this._app = param1;
         this._swfFileName = param2;
      }
      
      public function process(param1:DisplayObjectContainer, param2:Object = null) : void
      {
         DisplayObjectUtil.processTextFieldBold(param1);
         this.processChildren(param1,param2);
         this.onComplete();
      }
      
      private function onComplete() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._removeList)
         {
            if(_loc1_ != null && _loc1_.parent != null)
            {
               _loc1_.parent.removeChild(_loc1_);
            }
         }
      }
      
      public function processChildren(param1:DisplayObjectContainer, param2:Object = null) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:Number = param1.numChildren;
         var _loc5_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc6_:int = 0x140DF85A ^ 0x14ED41A2 ^ 0x4E56338E ^ 0x4EB68A76;
         while(_loc6_ < _loc4_)
         {
            _loc5_.push(param1.getChildAt(_loc6_));
            _loc6_++;
         }
         for each(_loc3_ in _loc5_)
         {
            if(_loc3_.name != null && _loc3_.name != "")
            {
               this.processWrapper(_loc3_,param2);
            }
            else if(_loc3_ is TextField)
            {
               this.processTextField(TextField(_loc3_));
            }
            else if(_loc3_ is DisplayObjectContainer)
            {
               this.processChildren(DisplayObjectContainer(_loc3_),param2);
            }
         }
      }
      
      private function getClassOfInstanceInMap(param1:String, param2:Object) : Class
      {
         var instanceName:String = param1;
         var instanceMap:Object = param2;
         var instanceMapDescription:XML = null;
         var variables:XMLList = null;
         var variableClassName:String = null;
         instanceMapDescription = describeType(instanceMap);
         variables = instanceMapDescription.variable.(@name == instanceName);
         variableClassName = variables[0x2DC8FD10 ^ -287449112 ^ -2094268407 ^ 0x403922F1].@type;
         return this.getDefinition(variableClassName);
      }
      
      private function processInstanceLink(param1:String, param2:Object, param3:Object) : void
      {
         if(Boolean(param3) && param1 in param3)
         {
            param3[param1] = param2;
         }
      }
      
      protected function processWrapper(param1:DisplayObject, param2:Object = null) : void
      {
         var _loc3_:Class = null;
         var _loc4_:IAssetWrapper = null;
         var _loc5_:String = param1.name;
         if(this.isMacros(_loc5_))
         {
            this.executeMacros(_loc5_.slice(-1067325093 ^ -2070166499 ^ 0x776B8F42 ^ 0x3391A205),param1,param2);
         }
         else if(param2 != null && _loc5_ in param2 && param2[_loc5_] == null)
         {
            _loc3_ = this.getClassOfInstanceInMap(_loc5_,param2);
            if(this.isAssetWrapperClass(_loc3_))
            {
               _loc4_ = new _loc3_();
               _loc4_.process(param1);
               this.processInstanceLink(_loc5_,_loc4_,param2);
               if(_loc4_ is IAssetWrapperWithFactory)
               {
                  IAssetWrapperWithFactory(_loc4_).initialize(this._app,this._swfFileName);
               }
               if(_loc4_ is IAssetWrapperRecursive && param1 is DisplayObjectContainer)
               {
                  this.processChildren(DisplayObjectContainer(param1),_loc4_);
                  IAssetWrapperRecursive(_loc4_).onAssetProcessComplete();
               }
            }
            else
            {
               if(!(param1 is _loc3_))
               {
                  throw new Error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("加刹劄効刾刿助剓劻劸勍刁刵劐刑勼勗剡刨剽刕刓劋勳劬勔刬勠勄剠勧割刃剅勺勿刔剘剽刁分势勥刜劫劾勫刞刊勝勭劀剜劀勉勂","创删刏刱劻勚勏劓劷剉剝勥剫劗劘剎") + _loc5_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刊勹劔剮劗剙剕刈刮剽劏刵刟勐剣劁划刉务剋刻勾勏努劼効劙劳力勵勫勡刬勪剤劀劝前到刦剰劖勔劼剺劣剻劑勂刃","剠劔劊务募劄勨勱別剞勶勞勡刿劏劐") + _loc3_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ထეႻჍჽ჋ჼ၁ဨမ","Ⴟျი჏Ⴝၮၼဝ၁႕ႶုၛႾႸဍ"));
               }
               this.processInstanceLink(_loc5_,param1,param2);
            }
         }
         if(param1 is DisplayObjectContainer)
         {
            this.processChildren(DisplayObjectContainer(param1),param2);
         }
      }
      
      private function executeMacros(param1:String, param2:DisplayObject, param3:Object) : void
      {
         var _loc4_:String = param1;
         switch(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刏剿剁勥剳剘勤剠副剕刃副券助剕務刜割劆剽","勤勐則刜勹刟剘勯劉剃剿勷勋别剭勗") === _loc4_ ? -1982347855 ^ 0x6A01EB8E ^ 0x247D24C6 ^ -945091847 : 0x28AC2496 ^ -917180859 ^ 0x113CBDEF ^ -255559875)
         {
            case 0:
               this._removeList.push(param2);
         }
      }
      
      private function isMacros(param1:String) : Boolean
      {
         return param1 != null && param1.length > (-1638659201 ^ -459374166 ^ -2092350554 ^ -108803725) && param1.charAt(0x3003E56C ^ -1045060936 ^ 0x5480AF1D ^ -1523128119) == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰勶剡刱动剫勯割剏勸","勑刓刵勢刄劗務势剉劌刓勧勷剐勒劼");
      }
      
      private function isAssetWrapperClass(param1:Class) : Boolean
      {
         var cls:Class = param1;
         return describeType(cls).factory.implementsInterface.(@type == getQualifiedClassName(IAssetWrapper)).length() != (0x61F13EFF ^ -339681248 ^ -1458492155 ^ 0x2320F3DA);
      }
      
      protected function processTextField(param1:TextField) : void
      {
      }
      
      protected function fontNameMap(param1:String) : String
      {
         return param1;
      }
      
      protected function hasDefinition(param1:String) : Boolean
      {
         throw new OverrideMethodError();
      }
      
      protected function getDefinition(param1:String) : Class
      {
         throw new OverrideMethodError();
      }
   }
}

