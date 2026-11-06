package com.ax3.utils.sound
{
   public class SoundFile
   {
      
      public static var loadOnCreation:Vector.<SoundFile> = new Vector.<SoundFile>();
      
      public static var all:Vector.<SoundFile> = new Vector.<SoundFile>();
      
      public var source:Object;
      
      public var group:Object;
      
      public var type:SoundType;
      
      public var params:Object;
      
      public var name:String;
      
      public function SoundFile(param1:String, param2:Object, param3:Object = null, param4:Boolean = false, param5:SoundType = null, param6:Object = null)
      {
         super();
         this.name = param1;
         this.source = param2;
         this.group = param3;
         this.params = param6;
         if(param5 == null)
         {
            param5 = SoundType.DEFAULT;
         }
         this.type = param5;
         if(param4)
         {
            loadOnCreation.push(this);
         }
         all.push(this);
      }
      
      public function toString() : String
      {
         return "[SoundFile:" + this.name + "]";
      }
   }
}

