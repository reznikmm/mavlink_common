-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Reply to LOG_REQUEST_LIST

pragma Ada_2022;

package MAVLink.V2.Common.Log_Entrys is

   pragma Pure;

   type Log_Entry is record
      Id           : Interfaces.Unsigned_16;
      --  Log id
      Num_Logs     : Interfaces.Unsigned_16;
      --  Total number of logs
      Last_Log_Num : Interfaces.Unsigned_16;
      --  High log number
      Time_Utc     : Interfaces.Unsigned_32 :=
        0;
      --  Units: [s]
      --  UTC timestamp of log since 1970, or 0 if not available
      Size         : Interfaces.Unsigned_32;
      --  Units: [bytes]
      --  Size of the log (may be approximate)
   end record;

   for Log_Entry use record
      Time_Utc     at 0  range 0 .. 31;
      Size         at 4  range 0 .. 31;
      Id           at 8  range 0 .. 15;
      Num_Logs     at 10 range 0 .. 15;
      Last_Log_Num at 12 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Log_Entry;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Log_Entry;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Log_Entry;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Log_Entry;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Log_Entry;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Log_Entry;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Log_Entry;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Log_Entry;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Log_Entrys;
