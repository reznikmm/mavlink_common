-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Erase all logs

pragma Ada_2022;

package MAVLink.V1.Common.Log_Erases is

   pragma Pure;

   Log_Erase_Len : constant Interfaces.Unsigned_8 := 2;

   type Log_Erase is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID
   end record;

   for Log_Erase use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Log_Erase;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Log_Erase;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Log_Erase;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Log_Erase;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Log_Erase;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Log_Erase;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Log_Erases;
