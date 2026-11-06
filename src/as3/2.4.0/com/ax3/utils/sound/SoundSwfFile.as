package com.ax3.utils.sound
{
   import com.ax3.control.managers.SoundSwfFileSource;
   
   public class SoundSwfFile extends SoundFile
   {
      
      public var className:String;
      
      public function SoundSwfFile(param1:String, param2:Object, param3:String, param4:Object = null, param5:Boolean = false, param6:SoundType = null, param7:Object = null)
      {
         super(param1,param2,param4,param5,param6,param7);
         this.className = param3;
      }
      
      public function get swfSource() : SoundSwfFileSource
      {
         return SoundSwfFileSource(source);
      }
      
      override public function toString() : String
      {
         return "[SoundSwfFile:" + name + "]";
      }
   }
}

