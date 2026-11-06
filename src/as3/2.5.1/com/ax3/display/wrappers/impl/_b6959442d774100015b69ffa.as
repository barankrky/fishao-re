package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.core.IResourceManager;
   import com.ax3.display.lists._894c70ac250cd1d3d71f7830;
   import com.ax3.display.lists._f0ae25f6b11498c691261563;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers._67a7ec125a01811d64af4dcc;
   import com.ax3.utils.DisplayObjectUtil;
   import com.ax3.utils.log.globalLogger;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getQualifiedClassName;
   
   public class _b6959442d774100015b69ffa implements IAssetWrapper, _67a7ec125a01811d64af4dcc, _f0ae25f6b11498c691261563
   {
      
      private var _eea2aff229bcb051504ac3bc:DisplayObject;
      
      public var resourceManager:IResourceManager;
      
      public var swfResourceAlias:String;
      
      public var itemWrapperClass:Class;
      
      public function _b6959442d774100015b69ffa(param1:IResourceManager = null, param2:String = null, param3:Class = null)
      {
         super();
         this.config(param1,param2,param3);
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = -238725524 ^ -1262262957 ^ 0x6BD8ED73 ^ -283980815;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x26A2BA5A ^ -645449503 ^ 0x39DFC3AB ^ 0x073654AD))
            {
               case 0:
                  this._eea2aff229bcb051504ac3bc = param1;
                  if(this._eea2aff229bcb051504ac3bc.parent != null)
                  {
                     _loc2_ = -1389464659 ^ 0x345F26BD ^ 0x78C00735 ^ 0x207D4799;
                  }
                  else
                  {
                     _loc2_ = -1545763255 ^ 0x39BD91AE ^ -1644116857 ^ -978532641;
                  }
                  break;
               case 1:
                  this._eea2aff229bcb051504ac3bc.parent.removeChild(this._eea2aff229bcb051504ac3bc);
                  _loc2_ = -633155531 ^ 0x48AEA55A ^ 0x6327D0B5 ^ 0x3007B065;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _a54f7898880d608c7e1dc342(param1:Boolean = false) : DisplayObject
      {
         var debug:Boolean = param1;
         var wrapper:IAssetWrapper = null;
         var qualifiedClassName:String = getQualifiedClassName(this._eea2aff229bcb051504ac3bc);
         var definition:Class = this.resourceManager.getDefinitionFromLibraryByName(this.swfResourceAlias,qualifiedClassName);
         var instance:* = new definition();
         try
         {
            if(instance is DisplayObjectContainer)
            {
               DisplayObjectUtil.processTextFieldBold(instance);
            }
         }
         catch(e:Error)
         {
            globalLogger.ch(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捾挀揢掟掋挞揶揍揚掘掭揄挲揓揖捞掤挟揣掗捗揂","揿掇揰揅捩挟掗挸按捻揩挱揵揋掹捖"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣揜掠揠掉挊捜挱掕掑揸捠掫掴捽捋挘接掆捐捣挜掘捨挟掠掑挷揇捨掖掤挮挠挌挔捯捡掻揁挗捺揲捧掌揧揺捂掼揣捁揷捩按捚揔捆揮捙揃","揃揊捗掋探揽挟掾揗捗掗揪揁掖揂掻") + e.toString());
            throw e;
         }
         if(this.itemWrapperClass)
         {
            wrapper = new this.itemWrapperClass();
            wrapper.process(instance);
            instance = wrapper;
         }
         return instance;
      }
      
      public function _1831855571e133ef9119b148() : _894c70ac250cd1d3d71f7830
      {
         return _894c70ac250cd1d3d71f7830(this._a54f7898880d608c7e1dc342(false));
      }
      
      public function config(param1:IResourceManager, param2:String, param3:Class) : void
      {
         this.resourceManager = param1;
         this.swfResourceAlias = param2;
         this.itemWrapperClass = param3;
      }
   }
}

