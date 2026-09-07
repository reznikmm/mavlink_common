-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Data stream status information.

pragma Ada_2022;

with MAVLink.V1.Common.Types; use MAVLink.V1.Common.Types;

package MAVLink.V1.Common.Data_Streams is

   pragma Pure;

   Data_Stream_Len : constant Interfaces.Unsigned_8 := 4;

   type Data_Stream is record
      Stream_Id    : Mav_Data_Stream;
      --  The ID of the requested data stream.
      Message_Rate : Interfaces.Unsigned_16;
      --  Units: [Hz]
      --  The message rate
      On_Off       : Interfaces.Unsigned_8;
      --  1 stream is enabled, 0 stream is stopped.
   end record;

   for Data_Stream use record
      Message_Rate at 0 range 0 .. 15;
      Stream_Id    at 2 range 0 .. 7;
      On_Off       at 3 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Data_Stream;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Data_Stream;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Data_Stream;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Data_Stream;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Data_Stream;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Data_Stream;
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

end MAVLink.V1.Common.Data_Streams;
